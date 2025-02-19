<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\TermsAndCondition;
use Illuminate\Http\Request;

class PrivacyPolicyController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $privacyPolicy = TermsAndCondition::first();
        $isPrivacyPolicy = false;
        if ($privacyPolicy) {
            $isPrivacyPolicy = true;
        }
        return view('admin.privacy_policy', compact('privacyPolicy', 'isPrivacyPolicy'));
    }


    public function store(Request $request)
    {
        $rules = [
            'privacy_policy' => 'required',
            'banner_image' => 'required',
        ];
        $customMessages = [
            'privacy_policy.required' => trans('admin_validation.Privacy policy is required'),
            'banner_image.required' => trans('admin_validation.Banner image is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $privacyPolicy = new TermsAndCondition();

        $privacyPolicy->privacy_policy = $request->privacy_policy;
        $privacyPolicy->save();
        if ($request->banner_image) {

            $banner_name = file_upload($request->banner_image, null, 'uploads/custom-images/');
            $privacyPolicy->privacy_banner = $banner_name;
            $privacyPolicy->save();
        }

        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.privacy-policy.index')->with($notification);
    }


    public function update(Request $request, $id)
    {
        $privacyPolicy = TermsAndCondition::find($id);

        $rules = [
            'privacy_policy' => 'required',
            'banner_image' => $privacyPolicy->privacy_banner ? '' : 'required',
        ];
        $customMessages = [
            'privacy_policy.required' => trans('admin_validation.Privacy policy is required'),
            'banner_image.required' => trans('admin_validation.Banner image is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $privacyPolicy->privacy_policy = $request->privacy_policy;
        $privacyPolicy->save();
        if ($request->banner_image) {
            $exist_banner = $privacyPolicy->privacy_banner;

            $banner_name = file_upload($request->banner_image, $exist_banner, 'uploads/custom-images/');

            $privacyPolicy->privacy_banner = $banner_name;
            $privacyPolicy->save();
        }

        $notification = trans('admin_validation.Updated Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.privacy-policy.index')->with($notification);
    }
}
