<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\City;
use App\Models\PopularCategory;
use App\Models\ThreeColumnCategory;
use App\Models\MegaMenuSubCategory;
use App\Models\MegaMenuCategory;
use Illuminate\Http\Request;
use  Image;
use File;
use Str;

class ProductCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $categories = Category::with('subCategories', 'products')->get();
        $pupoularCategory = PopularCategory::first();
        $threeColCategory = ThreeColumnCategory::first();

        return view('admin.product_category', compact('categories', 'pupoularCategory', 'threeColCategory'));
    }


    public function create()
    {
        $cities = City::all();
        return view('admin.create_product_category', compact('cities'));
    }


    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|unique:categories',
            'slug' => 'required|unique:categories',
            'status' => 'required',
        ];
        $customMessages = [
            'name.required' => trans('admin_validation.Name is required'),
            'name.unique' => trans('admin_validation.Name already exist'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
        ];
        $this->validate($request, $rules, $customMessages);

        $imageName = null;

        if ($request->hasFile('image')) {
            $image = $request->image;
            $imageName = file_upload($image, $imageName, 'uploads/custom-images/');
        }


        $category = new Category();

        $category->image = $imageName;
        $category->name = $request->name;
        $category->slug = $request->slug;
        $category->delivery_charge = $request->delivery_charge;
        $category->city_id = $request->city_id;
        $category->commission_rate = $request->commission_rate;
        $category->status = $request->status;
        $category->is_top = $request->is_top;
        $category->save();


        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product-category.index')->with($notification);
    }

    public function edit($id)
    {
        $category = Category::find($id);
        $cities = City::all();
        return view('admin.edit_product_category', compact('category', 'cities'));
    }


    public function update(Request $request, $id)
    {
        $category = Category::find($id);
        $rules = [
            'name' => 'required|unique:categories,name,' . $category->id,
            'slug' => 'required|unique:categories,name,' . $category->id,
            'status' => 'required',
        ];

        $customMessages = [
            'name.required' => trans('admin_validation.Name is required'),
            'name.unique' => trans('admin_validation.Name already exist'),
            'slug.required' => trans('admin_validation.Slug is required'),
            'slug.unique' => trans('admin_validation.Slug already exist'),
        ];
        $this->validate($request, $rules, $customMessages);

        $imageName = $category->image;

        if ($request->hasFile('image')) {
            $image = $request->image;
            $imageName = file_upload($image, $imageName, 'uploads/custom-images/');
        }


        $category->image = $imageName;
        $category->name = $request->name;
        $category->slug = $request->slug;
        $category->delivery_charge = $request->delivery_charge;
        $category->city_id = $request->city_id;
        $category->commission_rate = $request->commission_rate;
        $category->status = $request->status;
        $category->is_top = $request->is_top;
        $category->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product-category.index')->with($notification);
    }

    public function destroy($id)
    {
        $category = Category::find($id);
        $category->delete();
        $megaMenuCategory = MegaMenuCategory::where('category_id', $id)->first();
        if ($megaMenuCategory) {
            $cat_id = $megaMenuCategory->id;
            $megaMenuCategory->delete();
            MegaMenuSubCategory::where('mega_menu_category_id', $cat_id)->delete();
        }

        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product-category.index')->with($notification);
    }

    public function changeStatus($id)
    {
        $category = Category::find($id);
        if ($category->status == 1) {
            $category->status = 0;
            $category->save();
            $message = trans('admin_validation.Inactive Successfully');
        } else {
            $category->status = 1;
            $category->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
}
