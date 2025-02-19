<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ContactPage;

class ContactPageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $contact = ContactPage::first();
        return view('admin.contact_page', compact('contact'));
    }
    public function store(Request $request)
    {
        $rules = [
            'banner_image' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'title' => 'required',
            'google_map' => 'required',
            'description' => 'required',
        ];
        $customMessages = [
            'banner_image.required' => trans('admin_validation.Banner Image is required'),
            'email.required' => trans('admin_validation.Email is required'),
            'phone.unique' => trans('admin_validation.Phone is required'),
            'address.unique' => trans('admin_validation.Address is required'),
            'title.unique' => trans('admin_validation.Title is required'),
            'google_map.unique' => trans('admin_validation.Google Map is required'),
            'description.unique' => trans('admin_validation.Description is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $contact = new ContactPage();
        if ($request->banner_image) {
            $banner_name = file_upload($request->banner_image, null, 'uploads/custom-images/');
            $contact->banner = $banner_name;
        }

        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->address = $request->address;
        $contact->title = $request->title;
        $contact->map = $request->google_map;
        $contact->description = $request->description;
        $contact->save();


        $notification = trans('admin_validation.Create Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'email' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'title' => 'required',
            'google_map' => 'required',
            'description' => 'required',
        ];
        $customMessages = [
            'email.required' => trans('admin_validation.Email is required'),
            'phone.unique' => trans('admin_validation.Phone is required'),
            'address.unique' => trans('admin_validation.Address is required'),
            'title.unique' => trans('admin_validation.Title is required'),
            'google_map.unique' => trans('admin_validation.Google Map is required'),
            'description.unique' => trans('admin_validation.Description is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $contact = ContactPage::find($id);
        if ($request->banner_image) {
            $exist_banner = $contact->banner;
            $banner_name = file_upload($request->banner_image, $exist_banner, 'uploads/custom-images/');
            $contact->banner = $banner_name;
            $contact->save();
        }

        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->address = $request->address;
        $contact->title = $request->title;
        $contact->map = $request->google_map;
        $contact->description = $request->description;
        $contact->save();

        $notification = trans('admin_validation.Updated Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
}
