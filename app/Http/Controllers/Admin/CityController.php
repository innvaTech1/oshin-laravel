<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\City;
use App\Models\CountryState;
use App\Models\Country;
use Str;
use App\Models\BillingAddress;
use App\Models\ShippingAddress;
use App\Models\User;

class CityController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $cities = City::orderBy('name', 'asc')->get();
        $billingAddress = BillingAddress::all();
        $shippingAddress = ShippingAddress::all();
        $users = User::all();
        return view('admin.city', compact('cities', 'billingAddress', 'shippingAddress', 'users'));
    }


    public function create()
    {
        $states = CountryState::all();
        return view('admin.create_city', compact('states'));
    }


    public function store(Request $request)
    {
        $rules = [
            'state' => 'required',
            'name' => 'required'
        ];

        $customMessages = [

            'state.required' => trans('admin_validation.State is required'),
            'name.required' => trans('admin_validation.Name is required'),
            'name.unique' => trans('admin_validation.Name already exist'),
        ];
        $this->validate($request, $rules, $customMessages);

        $city = new City();
        $city->country_state_id = $request->state;
        $city->name = $request->name;
        $city->slug = Str::slug($request->name);
        $city->status = $request->status;
        $city->save();

        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }


    public function edit($id)
    {
        $states = CountryState::all();
        $city = City::find($id);
        return view('admin.edit_city', compact('states', 'city'));
    }


    public function update(Request $request, $id)
    {
        $city = City::find($id);
        $rules = [
            'state' => 'required',
            'name' => 'required'
        ];
        $customMessages = [

            'state.required' => trans('admin_validation.State is required'),
            'name.required' => trans('admin_validation.Name is required'),
            'name.unique' => trans('admin_validation.Name already exist'),
        ];
        $this->validate($request, $rules, $customMessages);
        $city->country_state_id = $request->state;
        $city->name = $request->name;
        $city->slug = Str::slug($request->name);
        $city->status = $request->status;
        $city->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.city.index')->with($notification);
    }


    public function destroy($id)
    {
        $city = City::find($id);
        $city->delete();
        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.city.index')->with($notification);
    }

    public function changeStatus($id)
    {
        $city = City::find($id);
        if ($city->status == 1) {
            $city->status = 0;
            $city->save();
            $message = trans('admin_validation.Inactive Successfully');
        } else {
            $city->status = 1;
            $city->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }
}
