<?php

namespace App\Http\Controllers\User;

use App\Models\City;
use App\Models\User;
use App\Models\Order;
use App\Models\Vendor;
use App\Rules\Captcha;
use App\Models\Address;
use App\Models\Country;
use App\Models\Message;
use App\Models\Product;
use App\Models\Setting;
use App\Models\Category;
use App\Models\Wishlist;
use App\Models\BannerImage;
use Illuminate\Support\Str;
use App\Models\CountryState;
use App\Models\OrderAddress;
use App\Models\OrderProduct;
use Illuminate\Http\Request;
use App\Models\ProductReport;
use App\Models\ProductReview;
use App\Models\BillingAddress;
use App\Models\GoogleRecaptcha;
use App\Models\ShippingAddress;
use App\Models\OrderProductVariant;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:web');
    }
    public function dashboard()
    {
        $user = Auth::guard('web')->user();
        $orders = Order::where('user_id', $user->id)->get();
        $wishlists = Wishlist::where('user_id', $user->id)->get();
        $reviews = ProductReview::where(['user_id' => $user->id, 'status' => 1])->get();
        return view('user.dashboard', compact('orders', 'reviews', 'wishlists'));
    }

    public function order()
    {
        $user = Auth::guard('web')->user();
        $orders = Order::orderBy('id', 'desc')->where('user_id', $user->id)->paginate(10);
        $setting = Setting::first();
        return view('user.order', compact('orders', 'setting'));
    }

    public function pendingOrder()
    {
        $user = Auth::guard('web')->user();
        $orders = Order::orderBy('id', 'desc')->where('user_id', $user->id)->where('order_status', 0)->paginate(10);
        $setting = Setting::first();
        return view('user.order', compact('orders', 'setting'));
    }

    public function completeOrder()
    {
        $user = Auth::guard('web')->user();
        $orders = Order::orderBy('id', 'desc')->where('user_id', $user->id)->where('order_status', 3)->paginate(10);
        $setting = Setting::first();
        return view('user.order', compact('orders', 'setting'));
    }

    public function declinedOrder()
    {
        $user = Auth::guard('web')->user();
        $orders = Order::orderBy('id', 'desc')->where('user_id', $user->id)->where('order_status', 4)->paginate(10);
        $setting = Setting::first();
        return view('user.order', compact('orders', 'setting'));
    }

    public function orderShow($orderId)
    {
        $user = Auth::guard('web')->user();
        $order = Order::where('user_id', $user->id)->where('order_id', $orderId)->first();
        $setting = Setting::first();
        $products = Product::all();
        return view('user.show_order', compact('order', 'setting', 'products'));
    }


    public function wishlist()
    {
        $user = Auth::guard('web')->user();
        $wishlists = Wishlist::where(['user_id' => $user->id])->paginate(10);
        $setting = Setting::first();
        return view('user.wishlist', compact('wishlists', 'setting'));
    }

    public function myProfile()
    {
        $user = Auth::guard('web')->user();
        $countries = Country::orderBy('name', 'asc')->where('status', 1)->get();
        $states = CountryState::orderBy('name', 'asc')->get();
        $cities = City::orderBy('name', 'asc')->where(['status' => 1, 'country_state_id' => $user->state_id])->get();
        $defaultProfile = BannerImage::whereId('15')->first();
        return view('user.my_profile', compact('user', 'countries', 'cities', 'states', 'defaultProfile'));
    }

    public function updateProfile(Request $request)
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


    public function changePassword()
    {
        return view('user.change_password');
    }

    public function updatePassword(Request $request)
    {
        $rules = [
            'current_password' => 'required',
            'password' => 'required|min:4|confirmed',
        ];
        $customMessages = [
            'current_password.required' => trans('user_validation.Current password is required'),
            'password.required' => trans('user_validation.Password is required'),
            'password.min' => trans('user_validation.Password minimum 4 character'),
            'password.confirmed' => trans('user_validation.Confirm password does not match'),
        ];
        $this->validate($request, $rules, $customMessages);

        $user = Auth::guard('web')->user();
        if (Hash::check($request->current_password, $user->password)) {
            $user->password = Hash::make($request->password);
            $user->save();
            $notification = 'Password change successfully';
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->back()->with($notification);
        } else {
            $notification = trans('user_validation.Current password does not match');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }
    }

    public function address()
    {
        $user = Auth::guard('web')->user();
        $billing = BillingAddress::where('user_id', $user->id)->first();
        $shipping = ShippingAddress::where('user_id', $user->id)->first();
        return view('user.address', compact('billing', 'shipping'));
    }

    public function editBillingAddress()
    {
        $user = Auth::guard('web')->user();
        $billing = BillingAddress::where('user_id', $user->id)->first();
        $countries = Country::orderBy('name', 'asc')->where('status', 1)->get();

        if ($billing) {
            $states = CountryState::orderBy('name', 'asc')->where(['status' => 1, 'country_id' => $billing->country_id])->get();
            $cities = City::orderBy('name', 'asc')->where(['status' => 1, 'country_state_id' => $billing->state_id])->get();
        } else {
            $states = CountryState::orderBy('name', 'asc')->where(['status' => 1, 'country_id' => 0])->get();
            $cities = City::orderBy('name', 'asc')->where(['status' => 1, 'country_state_id' => 0])->get();
        }
        return view('user.edit_billing_address', compact('billing', 'countries', 'states', 'cities'));
    }

    public function updateBillingAddress(Request $request)
    {
        $request->validate([
            'phone' => 'required',
            'address' => 'required',
        ]);

        $user = Auth::guard('web')->user();
        $billing = BillingAddress::where('user_id', $user->id)->first();
        if ($billing) {
            $billing->name = $request->name;
            $billing->email = $request->email;
            $billing->phone = $request->phone;
            $billing->country_id = $request->country;
            $billing->state_id = $request->state;
            $billing->city_id = $request->city;
            $billing->zip_code = $request->zip_code;
            $billing->address = $request->address;
            $billing->save();

            $notification = trans('user_validation.Update Successfully');
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->route('user.address')->with($notification);
        } else {
            $billing = new BillingAddress();
            $billing->user_id = $user->id;
            $billing->name = $request->name;
            $billing->email = $request->email;
            $billing->phone = $request->phone;
            $billing->country_id = $request->country;
            $billing->state_id = $request->state;
            $billing->city_id = $request->city;
            $billing->zip_code = $request->zip_code;
            $billing->address = $request->address;
            $billing->save();

            $notification = trans('user_validation.Update Successfully');
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->route('user.address')->with($notification);
        }
    }


    public function editShippingAddress()
    {
        $user = Auth::guard('web')->user();
        $shipping = ShippingAddress::where('user_id', $user->id)->first();
        $countries = Country::orderBy('name', 'asc')->where('status', 1)->get();

        if ($shipping) {
            $states = CountryState::orderBy('name', 'asc')->where(['status' => 1, 'country_id' => $shipping->country_id])->get();
            $cities = City::orderBy('name', 'asc')->where(['status' => 1, 'country_state_id' => $shipping->state_id])->get();
        } else {
            $states = CountryState::orderBy('name', 'asc')->where(['status' => 1, 'country_id' => 0])->get();
            $cities = City::orderBy('name', 'asc')->where(['status' => 1, 'country_state_id' => 0])->get();
        }
        return view('user.edit_shipping_address', compact('shipping', 'countries', 'states', 'cities'));
    }

    public function updateShippingAddress(Request $request)
    {
        $request->validate([
            'phone' => 'required',
            'address' => 'required',
        ]);
        $user = Auth::guard('web')->user();
        $shipping = ShippingAddress::where('user_id', $user->id)->first();
        if ($shipping) {
            $shipping->name = $request->name;
            $shipping->email = $request->email;
            $shipping->phone = $request->phone;
            $shipping->country_id = $request->country;
            $shipping->state_id = $request->state;
            $shipping->city_id = $request->city;
            $shipping->zip_code = $request->zip_code;
            $shipping->address = $request->address;
            $shipping->save();

            $notification = trans('user_validation.Update Successfully');
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->route('user.address')->with($notification);
        } else {
            $shipping = new ShippingAddress();
            $shipping->user_id = $user->id;
            $shipping->name = $request->name;
            $shipping->email = $request->email;
            $shipping->phone = $request->phone;
            $shipping->country_id = $request->country;
            $shipping->state_id = $request->state;
            $shipping->city_id = $request->city;
            $shipping->zip_code = $request->zip_code;
            $shipping->address = $request->address;
            $shipping->save();

            $notification = trans('user_validation.Update Successfully');
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->route('user.address')->with($notification);
        }
    }

    public function newAddress(Request $request)
    {
        $default_address = isset($request->default_address) ? $request->default_address : 'no';
        $request->validate([
            'address' => 'required',
            "state_id" => 'required',
            "city_id" => 'required',
            "phone" => 'required',
        ], [
            'address.required' => 'Address is required',
            'state_id.required' => 'State is required',
            'city_id.required' => 'City is required',
            'phone.required' => 'Phone is required',
        ]);

        if ($default_address == 'yes') {
            // reset others to default false
            $user = auth('web')->user();
            $currentAddress = $user->addresses->where('default_address', 'yes')->first();
            if ($currentAddress) {
                $currentAddress->default_address = 'no';
                $currentAddress->save();
            }
        }

        $address = Address::create([
            'address' => $request->address,
            'user_id' => auth('web')->user()->id,
            'name' => $request->name,
            'state_id' => $request->state_id,
            'city_id' => $request->city_id,
            'phone' => $request->phone,
            'email' => $request->email,
            "additional_info" => $request->additional_info,
            "default_address" => $default_address,
        ]);

        if ($address->id) {
            $notification = trans("user_validation.Address Crated Successfully");
            $notification = array('messege' => $notification, 'alert-type' => "success");
            return redirect()->back()->with($notification);
        } else {
            $notification = trans("user_validation.Address Crated Failed");
            $notification = array('messege' => $notification, 'alert-type' => "error");
            return redirect()->back()->with($notification);
        }
    }


    public function stateByCountry($id)
    {
        $states = CountryState::where(['status' => 1, 'country_id' => $id])->get();
        $response = '<option value="0">Select a State</option>';
        if ($states->count() > 0) {
            foreach ($states as $state) {
                $response .= "<option value=" . $state->id . ">" . $state->name . "</option>";
            }
        }
        return response()->json(['states' => $response]);
    }



    public function sellerRegistration()
    {
        $setting = Setting::first();
        $states = CountryState::where(['status' => 1])->get();
        $categories = Category::where(['status' => 1])->get();
        return view('user.seller_registration', compact('setting', 'states', 'categories'));
    }

    public function sellerRequest(Request $request)
    {

        $user = Auth::guard('web')->user();
        $seller = Vendor::where('user_id', $user->id)->first();
        if ($seller) {
            $notification = 'Request Already exist';
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }

        $rules = [
            'shop_name' => 'required|unique:vendors',
            'seller_name' => 'required|unique:vendors',
            'email' => 'required|unique:vendors',
            'phone' => 'required',
            'address' => 'required',
            'state_id' => 'required',
            'city_id' => 'required',
            'category_id' => 'required',
            'product_info' => 'required_if:category_id,0',
            'agree_terms_condition' => 'required'
        ];

        $customMessages = [
            'banner_image.required' => trans('user_validation.Image is required'),
            'shop_name.required' => trans('user_validation.Shop name is required'),
            'shop_name.unique' => trans('user_validation.Shop name already exist'),
            'email.required' => trans('user_validation.Email is required'),
            'email.unique' => trans('user_validation.Email already exist'),
            'phone.required' => trans('user_validation.Phone is required'),
            'address.required' => trans('user_validation.Address is required'),
            'agree_terms_condition.required' => trans('user_validation.Agree field is required'),
            'seller_name.required' => trans('user_validation.Seller name is required'),
            'state_id.required' => trans('user_validation.Select a state'),
            'city_id.required' => trans('user_validation.Select a city'),
            'category_id.required' => trans('user_validation.Select a category'),
            'product_info.required_if' => trans('user_validation.Product info is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $user = Auth::guard('web')->user();
        $seller = new Vendor();
        $seller->shop_name = $request->shop_name;
        $seller->slug = Str::slug($request->shop_name);
        $seller->email = $request->email;
        $seller->phone = $request->phone;
        $seller->address = $request->address;
        $seller->description = $request->about;
        $seller->greeting_msg = trans('user_validation.Welcome to') . ' ' . $request->shop_name;
        $seller->category_id = $request->category_id != 0 ? $request->category_id : null;
        $seller->state_id = $request->state_id;
        $seller->city_id = $request->city_id;
        $seller->product_info = $request->product_info;
        $seller->seller_name = $request->seller_name;
        $seller->user_id = $user->id;
        $seller->seo_title = $request->shop_name;
        $seller->seo_description = $request->shop_name;

        if ($request->banner_image) {
            $exist_banner = $seller->banner_image;
            $banner_name = file_upload($request->banner_image, $exist_banner, 'uploads/custom-images/', 'seller-banner');
            $seller->banner_image = $banner_name;
        }
        $seller->save();
        $notification = trans('user_validation.Request submitted successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('user.dashboard')->with($notification);
    }


    public function sellerTerms()
    {
        $setting = Setting::first();
        return view('user.seller-terms-condition', compact('setting'));
    }



    public function addToWishlist($id)
    {
        $user = Auth::guard('web')->user();
        $product = Product::find($id);
        $isExist = Wishlist::where(['user_id' => $user->id, 'product_id' => $product->id])->count();
        if ($isExist == 0) {
            $wishlist = new Wishlist();
            $wishlist->product_id = $id;
            $wishlist->user_id = $user->id;
            $wishlist->save();
            $message = trans('user_validation.Wishlist added successfully');
            return response()->json(['status' => 1, 'message' => $message]);
        } else {
            $message = trans('user_validation.Already added');
            return response()->json(['status' => 0, 'message' => $message]);
        }
    }

    public function removeWishlist($id)
    {
        $wishlist = Wishlist::find($id);
        $wishlist->delete();
        $notification = trans('user_validation.Removed successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function storeProductReport(Request $request)
    {
        if ($request->subject == null) {
            $message = trans('user_validation.Subject filed is required');
            return response()->json(['status' => 0, 'message' => $message]);
        }
        if ($request->description == null) {
            $message = trans('user_validation.Description filed is required');
            return response()->json(['status' => 0, 'message' => $message]);
        }
        $user = Auth::guard('web')->user();
        $report = new ProductReport();
        $report->user_id = $user->id;
        $report->seller_id = $request->seller_id;
        $report->product_id = $request->product_id;
        $report->subject = $request->subject;
        $report->description = $request->description;
        $report->save();

        $message = trans('user_validation.Report Submited successfully');
        return response()->json(['status' => 1, 'message' => $message]);
    }

    public function review()
    {
        $user = Auth::guard('web')->user();
        $reviews = ProductReview::orderBy('id', 'desc')->where(['user_id' => $user->id, 'status' => 1])->paginate(10);
        return view('user.review', compact('reviews'));
    }


    public function storeProductReview(Request $request)
    {
        $rules = [
            'rating' => 'required',
            'review' => 'required',
            'g-recaptcha-response' => new Captcha()
        ];
        $customMessages = [
            'rating.required' => trans('user_validation.Rating is required'),
            'review.required' => trans('user_validation.Review is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $user = Auth::guard('web')->user();
        $isExistOrder = false;
        $orders = Order::where(['user_id' => $user->id])->get();
        foreach ($orders as $key => $order) {
            foreach ($order->orderProducts as $key => $orderProduct) {
                if ($orderProduct->product_id == $request->product_id) {
                    $isExistOrder = true;
                }
            }
        }

        if ($isExistOrder) {
            $isReview = ProductReview::where(['product_id' => $request->product_id, 'user_id' => $user->id])->count();
            if ($isReview > 0) {
                $message = trans('user_validation.You have already submited review');
                return response()->json(['status' => 0, 'message' => $message]);
            }
            $review = new ProductReview();
            $review->user_id = $user->id;
            $review->rating = $request->rating;
            $review->review = $request->review;
            $review->product_vendor_id = $request->seller_id;
            $review->product_id = $request->product_id;
            $review->save();
            $message = trans('user_validation.Review Submited successfully');
            return response()->json(['status' => 1, 'message' => $message]);
        } else {
            $message = trans('user_validation.Opps! You can not review this product');
            return response()->json(['status' => 0, 'message' => $message]);
        }
    }

    public function updateReview(Request $request, $id)
    {
        $rules = [
            'rating' => 'required',
            'review' => 'required',
        ];
        $this->validate($request, $rules);
        $user = Auth::guard('web')->user();
        $review = ProductReview::find($id);
        $review->rating = $request->rating;
        $review->review = $request->review;
        $review->save();

        $notification = trans('user_validation.Updated successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }


    public function delete_account()
    {

        $user = Auth::guard('web')->user();

        $isVendor = Vendor::where('user_id', $user->id)->first();
        if ($isVendor) {
            $notification = trans('user_validation.You can not delete your seller account');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }


        $id = $user->id;
        $user_image = $user->image;

        if ($user_image) {
            if (File::exists(public_path() . '/' . $user_image)) {
                unlink(public_path() . '/' . $user_image);
            }
        }
        ProductReport::where('user_id', $id)->delete();
        ProductReview::where('user_id', $id)->delete();
        ShippingAddress::where('user_id', $id)->delete();
        BillingAddress::where('user_id', $id)->delete();
        Wishlist::where('user_id', $id)->delete();
        Message::where('customer_id', $id)->delete();

        $orders = Order::where('user_id', $user->id)->get();

        foreach ($orders as $order) {
            $orderProducts = OrderProduct::where('order_id', $order->id)->get();
            $orderAddress = OrderAddress::where('order_id', $order->id)->first();
            foreach ($orderProducts as $orderProduct) {
                OrderProductVariant::where('order_product_id', $orderProduct->id)->delete();
                $orderProduct->delete();
            }
            OrderAddress::where('order_id', $order->id)->delete();
            $order->delete();
        }

        $user->delete();

        Auth::guard('web')->logout();

        $notification = trans('user_validation.Your account has been deleted successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('home')->with($notification);
    }
}
