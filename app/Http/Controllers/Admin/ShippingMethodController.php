<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CountryState;
use Illuminate\Http\Request;
use App\Models\ShippingMethod;
use App\Models\Setting;
use App\Models\ShippingLocation;

class ShippingMethodController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $shippings = ShippingMethod::orderBy('id', 'asc')->get();
        $setting = Setting::first();
        return view('admin.shipping_method', compact('shippings', 'setting'));
    }

    public function create()
    {
        $setting = Setting::first();
        return view('admin.create_shipping_method', compact('setting'));
    }

    public function store(Request $request)
    {
        $rules = [
            'title' => 'required|unique:shipping_methods',
            'shipping_coast' => 'required|numeric',
            'description' => 'required'
        ];
        $customMessages = [
            'title.required' => trans('admin_validation.Title is required'),
            'title.unique' => trans('admin_validation.Title already exist'),
            'shipping_coast.required' => trans('admin_validation.Shipping coast is required'),
            'description.required' => trans('admin_validation.Description is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $shipping = new ShippingMethod();
        $shipping->title = $request->title;
        $shipping->fee = $request->shipping_coast;
        $shipping->description = $request->description;
        $shipping->status = 1;
        $shipping->save();

        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.shipping.index')->with($notification);
    }

    public function edit($id)
    {
        $shipping = ShippingMethod::with('states')->find($id);
        $setting = Setting::first();
        $states = CountryState::where('status', 1)->get();

        $selectedState = $shipping->states->pluck('id')->toArray();

        return view('admin.edit_shipping_method', compact('shipping', 'setting', 'states', 'selectedState'));
    }

    public function update(Request $request, $id)
    {
        $shipping = ShippingMethod::find($id);

        $rules = [
            'title' => 'required|unique:shipping_methods,title,' . $id,
            'minimum_order' => $shipping->is_free == 1 ? 'nullable' : 'required|numeric',
            'description' => 'required',
            'shipping_coast' => $shipping->is_free == 1 ? 'nullable' : 'required|numeric',
        ];

        $customMessages = [
            'title.required' => trans('admin_validation.Title is required'),
            'title.unique' => trans('admin_validation.Title already exist'),
            'minimum_order.required' => trans('admin_validation.Minimum order is required'),
            'description.required' => trans('admin_validation.Description is required'),
            'shipping_coast.required' => trans('admin_validation.Shipping coast is required'),
        ];
        $this->validate($request, $rules, $customMessages);


        $shipping->title = $request->title;
        $shipping->fee = $request->shipping_coast;
        $shipping->description = $request->description;
        $shipping->minimum_order = $request->minimum_order;
        $shipping->status = 1;
        $shipping->save();

        ShippingLocation::where('shipping_id', $id)->delete();

        if (count($request->state_id) > 0) {
            foreach ($request->state_id as $state_id) {
                ShippingLocation::create([
                    'shipping_id' => $id,
                    'state_id' => $state_id,
                ]);
            }
        }


        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.shipping.index')->with($notification);
    }

    public function destroy($id)
    {
        $shipping = ShippingMethod::find($id);
        $shipping->delete();
        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.shipping.index')->with($notification);
    }

    public function changeStatus($id)
    {
        $shipping = ShippingMethod::find($id);
        if ($shipping->status == 1) {
            $shipping->status = 0;
            $shipping->save();
            $message = trans('admin_validation.Inactive Successfully');
        } else {
            $shipping->status = 1;
            $shipping->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
}
