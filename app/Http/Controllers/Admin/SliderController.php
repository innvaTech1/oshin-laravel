<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;

class SliderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $sliders = Slider::all();
        return view('admin.slider', compact('sliders'));
    }

    public function create()
    {
        return view('admin.create_slider');
    }

    public function store(Request $request)
    {
        $rules = [
            'slider_image' => 'required',
            'title' => 'required',
            'description' => 'required',
            'button_link' => 'required',
            'status' => 'required',
            'serial' => 'required',
        ];
        $customMessages = [
            'slider_image.required' => trans('admin_validation.Slider image is required'),
            'title.required' => trans('admin_validation.Title is required'),
            'description.required' => trans('admin_validation.Description is required'),
            'button_link.required' => trans('admin_validation.Button link is required'),
            'status.required' => trans('admin_validation.Status is required'),
            'serial.required' => trans('admin_validation.Serial is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $slider = new Slider();
        if ($request->slider_image) {
            $slider_image = file_upload($request->slider_image, null, 'uploads/custom-images/');

            $slider->image = $slider_image;
        }

        $slider->title = $request->title;
        $slider->description = $request->description;
        $slider->link = $request->button_link;
        $slider->serial = $request->serial;
        $slider->status = $request->status;
        $slider->save();

        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function edit($id)
    {
        $slider = Slider::find($id);
        return view('admin.edit_slider', compact('slider'));
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'title' => 'required',
            'description' => 'required',
            'button_link' => 'required',
            'status' => 'required',
            'serial' => 'required'
        ];
        $customMessages = [
            'title.required' => trans('admin_validation.Title is required'),
            'description.required' => trans('admin_validation.Description is required'),
            'button_link.required' => trans('admin_validation.Button link is required'),
            'status.required' => trans('admin_validation.Status is required'),
            'serial.required' => trans('admin_validation.Serial is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $slider = Slider::find($id);
        if ($request->slider_image) {
            $existing_slider = $slider->image;

            $slider_image = file_upload($request->slider_image, $existing_slider, 'uploads/custom-images/');

            $slider->image = $slider_image;
            $slider->save();
        }

        $slider->title = $request->title;
        $slider->description = $request->description;
        $slider->link = $request->button_link;
        $slider->serial = $request->serial;
        $slider->status = $request->status;
        $slider->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.slider.index')->with($notification);
    }

    public function destroy($id)
    {
        $slider = Slider::find($id);
        $existing_slider = $slider->image;
        $slider->delete();
        file_delete($existing_slider);

        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.slider.index')->with($notification);
    }


    public function changeStatus($id)
    {
        $slider = Slider::find($id);
        if ($slider->status == 1) {
            $slider->status = 0;
            $slider->save();
            $message = trans('admin_validation.Inactive Successfully');
        } else {
            $slider->status = 1;
            $slider->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
}
