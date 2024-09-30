<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BreadcrumbImage;

class BreadcrumbController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $images = BreadcrumbImage::orderBy('id', 'asc')->get();
        return view('admin.breadcrumb_image', compact('images'));
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'image' => 'required',
        ];
        $this->validate($request, $rules);
        $image = BreadcrumbImage::find($id);
        if ($request->image) {
            $exist_banner = $image->image;

            $banner_name = file_upload($request->image, $exist_banner, 'uploads/website-images/');

            $image->image = $banner_name;
            $image->save();
        }

        $notification = 'Updated Successfully';
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
}
