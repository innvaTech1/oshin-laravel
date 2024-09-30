<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ProductGallery;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductGalleryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index($productId)
    {
        $product = Product::find($productId);
        if ($product) {
            $gallery = ProductGallery::where('product_id', $productId)->get();
            return view('admin.product_image_gallery', compact('gallery', 'product'));
        } else {
            $notification = trans('admin_validation.Something went wrong');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->route('admin.product.index')->with($notification);
        }
    }

    public function store(Request $request)
    {
        $rules = [
            'images' => 'required'
        ];
        $this->validate($request, $rules);

        $product = Product::find($request->product_id)->first();
        if ($product) {
            if ($request->images) {
                foreach ($request->images as $index => $image) {

                    $image_name = file_upload($image, null, 'uploads/custom-images/');

                    $gallery = new ProductGallery();
                    $gallery->product_id = $request->product_id;
                    $gallery->image = $image_name;
                    $gallery->save();
                }

                $notification = trans('admin_validation.Uploaded Successfully');
                $notification = array('messege' => $notification, 'alert-type' => 'success');
                return redirect()->back()->with($notification);
            }
        } else {
            $notification = trans('admin_validation.Something went wrong');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }
    }


    public function destroy($id)
    {
        $gallery = ProductGallery::find($id);
        $old_image = $gallery->image;
        $gallery->delete();
        file_delete($old_image);

        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function changeStatus($id)
    {
        $gallery = ProductGallery::find($id);
        if ($gallery->status == 1) {
            $gallery->status = 0;
            $gallery->save();
            $message = trans('admin_validation.Inactive Successfully');
        } else {
            $gallery->status = 1;
            $gallery->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
}
