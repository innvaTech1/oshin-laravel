<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Footer;

class FooterController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $footer = Footer::first();
        return view('admin.website_footer', compact('footer'));
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'email' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'image_title' => 'required',
            'copyright' => 'required',
        ];
        $customMessages = [
            'email.required' => trans('admin_validation.Email is required'),
            'phone.required' => trans('admin_validation.Phone is required'),
            'address.required' => trans('admin_validation.Address is required'),
            'image_title.required' => trans('admin_validation.Image title is required'),
            'copyright.required' => trans('admin_validation.Copyright is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $footer = Footer::first();
        $footer->email = $request->email;
        $footer->phone = $request->phone;
        $footer->address = $request->address;
        $footer->image_title = $request->image_title;
        $footer->copyright = $request->copyright;
        $footer->save();
        if ($request->card_image) {
            $old_logo = $footer->payment_image;
            $image = $request->card_image;
            $logo_name = file_upload($image, $old_logo, 'uploads/website-images/');

            $footer->payment_image = $logo_name;
            $footer->save();
        }


        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
}
