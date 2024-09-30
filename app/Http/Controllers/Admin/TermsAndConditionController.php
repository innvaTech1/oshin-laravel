<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\TermsAndCondition;
use Illuminate\Http\Request;

class TermsAndConditionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $termsAndCondition = TermsAndCondition::first();
        $isTermsCondition = false;
        if ($termsAndCondition) {
            $isTermsCondition = true;
        }
        return view('admin.terms_and_condition', compact('termsAndCondition', 'isTermsCondition'));
    }


    public function store(Request $request)
    {
        $rules = [
            'terms_and_condition' => 'required',
            'banner_image' => 'required',
        ];
        $customMessages = [
            'terms_and_condition.required' => trans('admin_validation.Terms and condition is required'),
            'banner_image.required' => trans('admin_validation.Banner image is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $termsAndCondition = new TermsAndCondition();

        $termsAndCondition->terms_and_condition = $request->terms_and_condition;
        $termsAndCondition->save();
        if ($request->banner_image) {

            $banner_name = file_upload($request->banner_image, null, 'uploads/custom-images/');

            $termsAndCondition->terms_condition_banner = $banner_name;
            $termsAndCondition->save();
        }

        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.terms-and-condition.index')->with($notification);
    }


    public function update(Request $request, $id)
    {
        $termsAndCondition = TermsAndCondition::find($id);

        $rules = [
            'terms_and_condition' => 'required',
            'banner_image' => $termsAndCondition->terms_condition_banner ? '' : 'required',
        ];
        $customMessages = [
            'terms_and_condition.required' => trans('admin_validation.Terms and condition is required'),
            'banner_image.required' => trans('admin_validation.Banner image is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $termsAndCondition->terms_and_condition = $request->terms_and_condition;
        $termsAndCondition->save();
        if ($request->banner_image) {
            $exist_banner = $termsAndCondition->terms_condition_banner;

            $banner_name = file_upload($request->banner_image, $exist_banner, 'uploads/custom-images/');

            $termsAndCondition->terms_condition_banner = $banner_name;
            $termsAndCondition->save();
        }

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.terms-and-condition.index')->with($notification);
    }
}
