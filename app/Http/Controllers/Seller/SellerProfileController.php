<?php

namespace App\Http\Controllers\Seller;

use App\Http\Controllers\Controller;
use App\Models\BankDetails;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Country;
use App\Models\CountryState;
use App\Models\City;
use App\Models\Vendor;
use App\Models\VendorSocialLink;
use App\Models\SellerWithdraw;
use App\Models\SellerMailLog;
use App\Models\OrderProduct;
use App\Models\Setting;
use App\Models\BannerImage;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class SellerProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:web');
    }

    public function index()
    {
        $user = Auth::guard('web')->user();
        $seller = $user->seller;
        $countries = Country::orderBy('name', 'asc')->where('status', 1)->get();
        $states = CountryState::orderBy('name', 'asc')->where(['status' => 1, 'country_id' => $user->country_id])->get();
        $cities = City::orderBy('name', 'asc')->where(['status' => 1, 'country_state_id' => $user->state_id])->get();

        $totalWithdraw = SellerWithdraw::where('seller_id', $seller->id)->where('status', 1)->sum('total_amount');
        $totalPendingWithdraw = SellerWithdraw::where('seller_id', $seller->id)->where('status', 0)->sum('withdraw_amount');

        $totalAmount = 0;
        $totalSoldProduct = 0;
        $orderProducts = OrderProduct::with('order')->where('seller_id', $seller->id)->get();
        foreach ($orderProducts as $orderProduct) {
            if ($orderProduct->order->payment_status == 1 && $orderProduct->order->order_status == 3) {
                $price = ($orderProduct->unit_price * $orderProduct->qty) + $orderProduct->vat;
                $totalAmount = $totalAmount + $price;
                $totalSoldProduct = $totalSoldProduct + $orderProduct->qty;
            }
        }

        $defaultProfile = BannerImage::whereId('15')->first();
        $setting = Setting::first();
        return view('seller.seller_profile', compact('user', 'countries', 'states', 'cities', 'seller', 'totalWithdraw', 'totalAmount', 'totalPendingWithdraw', 'totalSoldProduct', 'setting', 'defaultProfile'));
    }

    public function changePassword()
    {
        $user = Auth::guard('web')->user();
        $setting = Setting::first();
        return view('seller.change_password', compact('user', 'setting'));
    }

    public function stateByCountry($id)
    {
        $states = CountryState::where(['status' => 1, 'country_id' => $id])->get();
        $response = '<option value="">' . trans('user_validation.Select a State') . '</option>';
        if ($states->count() > 0) {
            foreach ($states as $state) {
                $response .= "<option value=" . $state->id . ">" . $state->name . "</option>";
            }
        }

        return response()->json(['states' => $response]);
    }

    public function cityByState($id)
    {
        $cities = City::where(['status' => 1, 'country_state_id' => $id])->get();
        $response = '<option value="">' . trans('user_validation.Select a City') . '</option>';
        if ($cities->count() > 0) {
            foreach ($cities as $city) {
                $response .= "<option value=" . $city->id . ">" . $city->name . "</option>";
            }
        }

        return response()->json(['cities' => $response]);
    }

    public function updateSellerProfile(Request $request)
    {
        $user = Auth::guard('web')->user();
        $rules = [
            'name' => 'required',
            'email' => 'nullable|unique:users,email,' . $user->id,
            'phone' => 'required',
        ];
        $customMessages = [
            'name.required' => trans('user_validation.Name is required'),
            'email.unique' => trans('user_validation.Email already exist'),
            'phone.required' => trans('user_validation.Phone is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $user->name = $request->name;
        $user->phone = $request->phone;
        $user->country_id = $request->country;
        $user->state_id = $request->state;
        $user->city_id = $request->city;
        $user->zip_code = $request->zip_code;
        $user->address = $request->address;
        $user->save();

        if ($request->file('image')) {
            $old_image = $user->image;
            $user_image = file_upload($request->image, $old_image, 'uploads/custom-images/');
            $user->image = $user_image;
            $user->save();
        }

        $notification = trans('user_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updatePassword(Request $request)
    {
        $user = Auth::guard('web')->user();
        $rules = [
            'password' => 'required|min:4|confirmed',
        ];

        $customMessages = [
            'password.required' => trans('user_validation.Password is required'),
            'password.min' => trans('user_validation.Password must be 4 characters'),
            'password.confirmed' => trans('user_validation.Confirm password does not match'),
        ];
        $this->validate($request, $rules, $customMessages);

        $user->password = Hash::make($request->password);
        $user->save();
        $notification = trans('user_validation.Password Change Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function myShop()
    {
        $user = Auth::guard('web')->user();
        $seller = Vendor::with('socialLinks')->where('user_id', $user->id)->first();
        $setting = Setting::first();
        return view('seller.shop_profile', compact('user', 'seller', 'setting'));
    }

    public function updateSellerSop(Request $request)
    {

        $user = Auth::guard('web')->user();
        $seller = Vendor::where('user_id', $user->id)->first();
        $rules = [
            'shop_name' => 'required|unique:vendors,email,' . $seller->id,
            'email' => 'required|unique:vendors,email,' . $seller->id,
            'phone' => 'required',
            'opens_at' => 'required',
            'closed_at' => 'required',
            'address' => 'required',
            'description' => 'required',
            'greeting_msg' => 'required',
        ];
        $customMessages = [
            'shop_name.required' => trans('user_validation.Shop name is required'),
            'shop_name.unique' => trans('user_validation.Shop anme is required'),
            'email.required' => trans('user_validation.Email is required'),
            'email.unique' => trans('user_validation.Email already exist'),
            'phone.required' => trans('user_validation.Phone is required'),
            'description.required' => trans('user_validation.Description is required'),
            'greeting_msg.required' => trans('user_validation.Greeting Messsage is required'),
            'opens_at.required' => trans('user_validation.Opens at is required'),
            'closed_at.required' => trans('user_validation.Close at is required'),
            'address.required' => trans('user_validation.Address is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $seller->phone = $request->phone;
        $seller->open_at = $request->opens_at;
        $seller->closed_at = $request->closed_at;
        $seller->address = $request->address;
        $seller->description = $request->description;
        $seller->greeting_msg = $request->greeting_msg;
        $seller->seo_title = $request->seo_title ? $request->seo_title : $request->shop_name;
        $seller->seo_description = $request->seo_description ? $request->seo_description : $request->shop_name;
        $seller->save();

        if ($request->banner_image) {
            $exist_banner = $seller->banner_image;
            $banner_name = file_upload($request->banner_image, $exist_banner, 'uploads/custom-images/');

            $seller->banner_image = $banner_name;
            $seller->save();
        }

        if (count($request->links) > 0) {
            $socialLinks = $seller->socialLinks;
            foreach ($socialLinks as $link) {
                $link->delete();
            }
            foreach ($request->links as $index => $link) {
                if ($request->links[$index] != null && $request->icons[$index] != null) {
                    $socialLink = new VendorSocialLink();
                    $socialLink->vendor_id = $seller->id;
                    $socialLink->icon = $request->icons[$index];
                    $socialLink->link = $request->links[$index];
                    $socialLink->save();
                }
            }
        }

        $notification = trans('user_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function removeSellerSocialLink($id)
    {
        $socialLink = VendorSocialLink::find($id);
        $socialLink->delete();
        return response()->json(['success' => trans('user_validation.Delete Successfully')]);
    }

    public function emailHistory()
    {
        $user = Auth::guard('web')->user();
        $seller = $user->seller;
        $emails = SellerMailLog::where('seller_id', $seller->id)->orderBy('id', 'desc')->get();
        $setting = Setting::first();
        return view('seller.email_history', compact('emails', 'user', 'setting'));
    }

    public function bankDetails()
    {
        $user = Auth::guard('web')->user();
        $bank = BankDetails::where('user_id', $user->id)->first();
        return view('seller.bank_details', compact('user', 'bank'));
    }

    public function updateBankDetails(Request $request)
    {
        $user = Auth::guard('web')->user();

        $bank = BankDetails::where('user_id', $user->id)->first();
        $image = $bank?->image;
        if ($request->hasFile('image')) {
            $image =  file_upload($request->image, $bank->image, 'uploads/custom-images/');
        }
        if ($bank) {
            $bank->account_name = $request->account_name;
            $bank->account_number = $request->account_number;
            $bank->bank_name = $request->bank_name;
            $bank->branch_name = $request->branch_name;
            $bank->routing_no = $request->routing_no;
            $bank->image = $image;
            $bank->save();
        } else {
            BankDetails::create([
                'user_id' => $user->id,
                'account_name' => $request->account_name,
                'account_number' => $request->account_number,
                'bank_name' => $request->bank_name,
                'branch_name' => $request->branch_name,
                'routing_no' => $request->routing_no,
                'image' => $image
            ]);
        }

        $notification = trans('user_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
}
