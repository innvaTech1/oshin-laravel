<?php

namespace App\Http\Controllers\Admin;

use Str;
use File;
use App\Models\Brand;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductBrandController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $brands = Brand::all();
        return view('admin.product_brand', compact('brands'));
    }

    public function create()
    {
        return view('admin.create_product_brand');
    }


    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|unique:brands',
            'slug' => 'required|unique:brands',
            'status' => 'required',
            'rating' => 'required',
            'logo' => 'required|image|dimensions:width=250,height=250'
        ];
        $customMessages = [
            'name.required' => trans('admin_validation.Name is required'),
            'name.unique' => trans('admin_validation.Name already exist'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
            'rating.required' => trans('admin_validation.Rating is required'),
            'logo.required' => trans('admin_validation.Logo is required'),
            'logo.image' => trans('admin_validation.Logo must be an image'),
            'logo.dimensions' => trans('admin_validation.Logo must be exactly 250x250 pixels'),
        ];
        $this->validate($request, $rules, $customMessages);

        $brand = new Brand();
        if ($request->hasFile('logo')) {
            $extension = $request->logo->getClientOriginalExtension();
            $logo_name = Str::slug($request->name) . date('-Y-m-d-h-i-s-') . rand(999, 9999) . '.' . $extension;
            $logo_path = 'uploads/custom-images/' . $logo_name;

            $request->file('logo')->move(public_path('uploads/custom-images'), $logo_name);

            $brand->logo = $logo_path;
        }
        $brand->name = $request->name;
        $brand->slug = $request->slug;
        $brand->status = $request->status;
        $brand->rating = $request->rating;
        $brand->save();

        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product-brand.index')->with($notification);
    }


    public function edit($id)
    {
        $brand = Brand::find($id);
        return view('admin.edit_product_brand', compact('brand'));
    }


    public function update(Request $request, $id)
    {
        $brand = Brand::find($id);

        $rules = [
            'name' => 'required|unique:brands,name,' . $brand->id,
            'slug' => 'required|unique:brands,slug,' . $brand->id,
            'rating' => 'required',
            'status' => 'required',
            'logo' => 'nullable|image|dimensions:width=250,height=250'
        ];

        $customMessages = [
            'name.required' => trans('admin_validation.Name is required'),
            'name.unique' => trans('admin_validation.Name already exist'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
            'rating.required' => trans('admin_validation.Rating is required'),
            'status.required' => trans('admin_validation.Status is required'),
            'logo.image' => trans('admin_validation.Logo must be an image'),
            'logo.dimensions' => trans('admin_validation.Logo must be exactly 250x250 pixels'),
        ];

        $this->validate($request, $rules, $customMessages);

        // Handle logo upload if provided
        if ($request->hasFile('logo')) {
            $old_logo = $brand->logo;

            $extension = $request->logo->getClientOriginalExtension();
            $logo_name = Str::slug($request->name) . date('-Y-m-d-h-i-s-') . rand(999, 9999) . '.' . $extension;
            $logo_path = 'uploads/custom-images/' . $logo_name;

            // Move the new logo to the designated path
            $request->file('logo')->move(public_path('uploads/custom-images'), $logo_name);

            // Update brand logo path in the database
            $brand->logo = $logo_path;

            // Remove the old logo if it exists
            if ($old_logo && File::exists(public_path($old_logo))) {
                unlink(public_path($old_logo));
            }
        }

        // Update other brand fields
        $brand->name = $request->name;
        $brand->slug = $request->slug;
        $brand->status = $request->status;
        $brand->rating = $request->rating;
        $brand->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product-brand.index')->with($notification);
    }

    public function destroy($id)
    {
        $brand = Brand::find($id);
        $old_logo = $brand->logo;
        $brand->delete();
        if ($old_logo) {
            if (File::exists(public_path() . '/' . $old_logo)) unlink(public_path() . '/' . $old_logo);
        }

        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product-brand.index')->with($notification);
    }

    public function changeStatus($id)
    {
        $brand = Brand::find($id);
        if ($brand->status == 1) {
            $brand->status = 0;
            $brand->save();
            $message = trans('admin_validation.InActive Successfully');
        } else {
            $brand->status = 1;
            $brand->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
}
