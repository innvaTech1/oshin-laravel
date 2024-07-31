<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\AamarpayPayment;
use App\Models\Address;
use Illuminate\Http\Request;
use App\Models\BreadcrumbImage;

use App\Models\CountryState;
use App\Models\City;
use App\Models\BillingAddress;
use App\Models\ShippingAddress;
use App\Models\Vendor;
use App\Models\ShippingMethod;
use App\Models\Setting;
use App\Models\Wishlist;




use App\Models\BankPayment;
use App\Models\Coupon;
use App\Models\Order;
use App\Models\OrderAddress;
use App\Models\OrderProduct;
use App\Models\OrderProductVariant;
use App\Models\Product;
use Exception;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;

class CheckoutController extends Controller
{
    public function __construct()
    {
        // $this->middleware('auth:web');
    }

    public function checkout()
    {
        if (Cart::count() == 0) {
            $notification = trans('user_validation.Your Shopping Cart is Empty');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->route('product')->with($notification);
        }
        $cartContents = Cart::content();
        $user = Auth::guard('web')->user();
        // $shipping = ShippingAddress::where('user_id', $user->id)->first();
        $states = CountryState::orderBy('name', 'asc')->where('status', 1)->get();

        $banner = BreadcrumbImage::where(['id' => 2])->first();
        $shippingMethods = ShippingMethod::where('status', 1)->get();

        $addresses = [];

        if (auth()->user()) {
            $addresses = Address::where('user_id', auth()->user()->id)->get();
        }
        // 'shipping',

        $bankInfo = BankPayment::first();
        $aamarpay = AamarpayPayment::first();

        return view('checkout', compact('banner', 'cartContents', 'states', 'shippingMethods', 'addresses', 'bankInfo', 'aamarpay'));
    }
    public function checkout_()
    {
        if (Cart::count() == 0) {
            $notification = trans('user_validation.Your Shopping Cart is Empty');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->route('product')->with($notification);
        }
        $cartContents = Cart::content();

        $user = Auth::guard('web')->user();

        $banner = BreadcrumbImage::where(['id' => 2])->first();
        $setting = Setting::first();

        $shippings = ShippingMethod::all();


        $inside_fee = 0;
        $outside_fee = 0;

        foreach ($cartContents as $cartContent) {
            $product = Product::find($cartContent->id);
            $inside_single = (int)$product->inside_fee *  (int)$cartContent->qty;
            $inside_fee += $inside_single;
            $outside_single = ((int)$product->outside_fee * (int)$cartContent->qty);
            $outside_fee = $outside_fee + $outside_single;
        }


        $bankInfo = BankPayment::first();
        $states = CountryState::all();

        return view('checkout', compact('banner', 'cartContents', 'setting', 'inside_fee', 'outside_fee', 'shippings', "bankInfo"));
    }



    public function payment(Request $request)
    {
        $rules = [
            'name' => 'required',
            'phone' => 'required',
            'delivery_fee' => 'required',
            'state_id' => 'required',
            'city_id' => 'required',
            'address' => 'required',
            'payment_method' => 'required',
            'agree_terms_condition' => 'required',
        ];

        $customMessages = [
            'name.required' => trans('user_validation.Name is required'),
            'phone.required' => trans('user_validation.Phone is required'),
            'address.required' => trans('user_validation.Address is required'),
            'state_id.required' => trans('user_validation.State is required'),
            'city_id.required' => trans('user_validation.City is required'),
            'delivery_fee.required' => trans('user_validation.Delivery fee is required'),
            'agree_terms_condition.required' => trans('user.You must agree to our terms and condition'),
        ];

        if (!$request->same_shipping) {
            $rules['billing_name'] = 'required';
            $rules['billing_phone'] = 'required';
            $rules['billing_address'] = 'required';
            $rules['billing_city_id'] = 'required';
            $rules['billing_state_id'] = 'required';


            $customMessages['billing_name.required'] = trans('user_validation.Billing Name is required');
            $customMessages['billing_phone.required'] = trans('user_validation.Billing Phone is required');
            $customMessages['billing_address.required'] = trans('user_validation.Billing Address is required');
            $customMessages['billing_state_id.required'] = trans('user_validation.Billing State is required');
            $customMessages['billing_city_id.required'] = trans('user_validation.Billing City is required');
        }

        $this->validate($request, $rules, $customMessages);


        if ($request->payment_method == 'Cash on Delivery') {
            $order = $this->placeOrder($request);

            if ($order) {
                return redirect()->route('order.success');
            } else {
                return redirect()->back()->with(['messege' => 'Order Failed', 'alert-type' => 'error']);
            }
        } else {
            $this->aamarpay($request);
        }
    }

    public function placeOrder(Request $request)
    {
        DB::beginTransaction();
        try {
            $address_id = $this->storeAddress($request);
            $billing_id = $request->same_shipping;
            if (!$request->same_shipping) {
                $billing_id = $this->storeAddress($request, 'billing_');
            }
            $this->orderStore($request, auth('web')->user(),  $request->delivery_fee, $address_id, $billing_id);

            Address::where('id', $address_id)->delete();

            if (!$request->same_shipping) {
                Address::where('id', $billing_id)->delete();
            }

            DB::commit();

            // forget cart
            Cart::destroy();


            return true;
        } catch (Exception $e) {
            DB::rollBack();
            Log::error($e->getMessage());
            return false;
        }
    }

    public function storeAddress(Request $request, $prefix = '')
    {
        $address = new Address();
        $address->name = $prefix . $request->name;
        $address->phone = $prefix . $request->phone;
        $address->address = $prefix . $request->address;
        $address->city_id = $prefix . $request->city_id;
        $address->state_id = $prefix . $request->state_id;
        $address->type = 'home';
        $address->save();
        return $address->id;
    }

    public function orderStore($request, $user, $shipping_fee, $billing_address_id, $shipping_address_id)
    {
        $tax_amount = 0;
        $total_price = 0;
        $coupon_price = 0;

        $user = Auth::guard('web')->user();
        $billing = Address::where('id', $billing_address_id)->first();
        $shipping = Address::where('id', $shipping_address_id)->first();

        $cartContents = Cart::content();
        $shipping_method = $request->shipping_method;


        foreach ($cartContents as $key => $content) {
            $tax = $content->options->tax * $content->qty;
            $tax_amount = $tax_amount + $tax;
        }


        $subTotal = 0;
        foreach ($cartContents as $cartContent) {
            $variantPrice = 0;
            foreach ($cartContent->options->variants as $indx => $variant) {
                $variantPrice += $cartContent->options->prices[$indx];
            }
            $productPrice = $cartContent->price;
            $total = $productPrice * $cartContent->qty;
            $subTotal += $total;
        }

        $total_price = $tax_amount + $subTotal;
        if (Session::get('coupon_price') && Session::get('offer_type')) {
            if (Session::get('offer_type') == 1) {
                $coupon_price = Session::get('coupon_price');
                $coupon_price = ($coupon_price / 100) * $total_price;
            } else {
                $coupon_price = Session::get('coupon_price');
            }
        }

        $total_price = $total_price - $coupon_price;
        $total_price += $shipping_fee;
        $total_price = str_replace(array('\'', '"', ',', ';', '<', '>'), '', $total_price);
        $setting = Setting::first();


        $order = new Order();
        $orderId = substr(rand(0, time()), 0, 10);
        $order->order_id = $orderId;
        $order->user_id = $user ? $user->id : null;
        $order->sub_total = $subTotal;
        $order->product_qty = Cart::count();
        $order->total_amount = $total_price;
        $order->payment_method = $request->payment_method;
        $order->transection_id = $request->transaction_info;
        $order->payment_status = 0;
        $order->shipping_cost = $shipping_fee;
        $order->coupon_coast = $coupon_price;
        $order->order_status = 0;
        $order->cash_on_delivery = $request->payment_method == 'Cash on Delivery' ? 1 : 0;
        $order->additional_info = $request->addition_information;
        $order->save();

        if (Session::get('coupon_name')) {
            $coupon = Coupon::where(['code' => Session::get('coupon_name')])->first();
            $qty = $coupon->apply_qty;
            $qty = $qty + 1;
            $coupon->apply_qty = $qty;
            $coupon->save();
        }


        $order_details = '';
        foreach ($cartContents as $key => $cartContent) {

            $productUnitPrice = 0;
            $variantPrice = 0;
            foreach ($cartContent->options->variants as $indx => $variant) {
                $variantPrice += $cartContent->options->prices[$indx];
            }
            $productUnitPrice = $cartContent->price;

            $product = Product::find($cartContent->id);
            $orderProduct = new OrderProduct();
            $orderProduct->order_id = $order->id;
            $orderProduct->product_id = $cartContent->id;
            $orderProduct->seller_id = $product->vendor_id;
            $orderProduct->product_name = $cartContent->name;
            $orderProduct->unit_price = $productUnitPrice;
            $orderProduct->qty = $cartContent->qty;
            $orderProduct->vat = $cartContent->options->tax * $cartContent->qty;
            $orderProduct->save();

            $productStock = Product::find($cartContent->id);
            $qty = $productStock->qty - $cartContent->qty;
            $productStock->qty = $qty;
            $productStock->save();


            if (count($cartContent->options->variants) > 0) {
                foreach ($cartContent->options->variants as $index => $variant) {
                    $productVariant = new OrderProductVariant();
                    $productVariant->order_product_id = $orderProduct->id;
                    $productVariant->product_id = $cartContent->id;
                    $productVariant->variant_name = $variant;
                    $productVariant->variant_value = $cartContent->options->values[$index];
                    $productVariant->variant_price = $cartContent->options->prices[$index];
                    $productVariant->save();
                }
            }

            $order_details .= 'Product: ' . $cartContent->name . '<br>';
            $order_details .= 'Quantity: ' . $cartContent->qty . '<br>';
            $order_details .= 'Price: ' . $setting->currency_icon . $cartContent->qty * $productUnitPrice . '<br>';
        }

        // store shipping and billing address
        $billing = Address::find($billing_address_id);
        $shipping = Address::find($shipping_address_id);
        $orderAddress = new OrderAddress();
        $orderAddress->order_id = $order->id;
        $orderAddress->billing_name = $billing->name;
        $orderAddress->billing_email = $billing->email;
        $orderAddress->billing_phone = $billing->phone;
        $orderAddress->billing_address = $billing->address;
        $orderAddress->shipping_name = $shipping->name;
        $orderAddress->shipping_email = $shipping->email;
        $orderAddress->shipping_phone = $shipping->phone;
        $orderAddress->shipping_address = $shipping->address;
        $orderAddress->save();


        $arr = [];
        $arr['order'] = $order;
        $arr['order_details'] = $order_details;

        return $arr;
    }


    public function aamarpay(Request $request)
    {

        $aamarpayCred = AamarpayPayment::first();

        $tran_id = $aamarpayCred->prefix . rand(1111111, 9999999); //unique transection id for every transection

        $currency = "BDT"; //aamarPay support Two type of currency USD & BDT

        $amount = $request->amount; //10 taka is the minimum amount for show card option in aamarPay payment gateway

        //For live Store Id & Signature Key please mail to support@aamarpay.com
        $store_id = $aamarpayCred->store_id;

        $signature_key = $aamarpayCred->signature_key;

        $url = null;

        if ($aamarpayCred->mode == 'sandbox') {
            $url = "https://sandbox.aamarpay.com/jsonpost.php";
        } else {
            $url = "https://secure.aamarpay.com/jsonpost.php"; // for Live Transection use "https://secure.aamarpay.com/jsonpost.php"
        }

        $curl = curl_init();

        $address_id = $this->storeAddress($request);
        $billing_id = $request->same_shipping;
        if (!$request->same_shipping) {
            $billing_id = $this->storeAddress($request, 'billing_');
        }



        $customer = null;
        if ($request->address_id) {
            $customer = Address::find($request->address_id);
        } else {
            $customer = $request;
        }

        curl_setopt_array($curl, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => '{
            "store_id": "' . $store_id . '",
            "tran_id": "' . $tran_id . '",
            "success_url": "' . route('checkout.success') . '",
            "fail_url": "' . route('checkout.fail') . '",
            "cancel_url": "' . route('checkout.cancel') . '",
            "amount": "' . $amount . '",
            "currency": "' . $currency . '",
            "signature_key": "' . $signature_key . '",
            "desc": "Order Payment",
            "cus_name": "' . $customer->name .  '",
            "cus_email": "' . $customer->email . '",
            "cus_add1": "' . $customer->address . '",
            "cus_add2": "",
            "cus_city": "' . $customer->city?->name . '",
            "cus_state": "' . $customer->state?->name . '",
            "cus_postcode": "",
            "cus_country": "Bangladesh",
            "cus_phone": "' . $customer->phone . '",
            "cus_company": "",
            "type": "json"
        }',
            CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json',
            ),
        ));

        $response = curl_exec($curl);
        curl_close($curl);
        $responseObj = json_decode($response);


        if (isset($responseObj->payment_url) && !empty($responseObj->payment_url)) {

            $request->merge(['transaction_info' => $tran_id]);
            $this->orderStore($request, auth('web')->user(),  $request->delivery_fee, $address_id, $billing_id);

            Address::where('id', $address_id)->delete();

            if (!$request->same_shipping) {
                Address::where('id', $billing_id)->delete();
            }

            $paymentUrl = $responseObj->payment_url;

            return redirect()->away($paymentUrl);
        } else {
            echo $response;
        }
    }

    public function success(Request $request)
    {
        $aamarpayCred = AamarpayPayment::first();
        if ($request->pay_status == 'Successful') {
            Order::where('transection_id', $request->tran_id)->update([
                'payment_status' => 1,
                'payment_method' => $request->card_type,
            ]);
        }
        $request_id = $request->mer_txnid;

        //verify the transection using Search Transection API

        if ($aamarpayCred->mode == 'sandbox') {
            $url = "http://secure.aamarpay.com/api/v1/trxcheck/request.php?request_id=$request_id&store_id=$aamarpayCred->store_id&signature_key=$aamarpayCred->signature_key&type=json";
        } else {
            $url = "http://sandbox.aamarpay.com/api/v1/trxcheck/request.php?request_id=$request_id&store_id=$aamarpayCred->store_id&signature_key=$aamarpayCred->signature_key&type=json";
        }

        //For Live Transection Use "http://secure.aamarpay.com/api/v1/trxcheck/request.php"

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        echo $response;

        return redirect()->route('home');
    }

    public function fail(Request $request)
    {
        $order = Order::where('transection_id', $request->tran_id)->update([
            'payment_status' => 0,
            'payment_method' => $request->card_type,
        ]);

        if (Session::get('coupon_name')) {
            $coupon = Coupon::where(['code' => Session::get('coupon_name')])->first();
            $qty = $coupon->apply_qty;
            $qty = $qty - 1;
            $coupon->apply_qty = $qty;
            $coupon->save();
        }

        $order->orderAddress->delete();
        $order->orderProducts?->orderProductVariants?->delete();
        $order->orderProducts?->delete();
        return back();
    }

    public function cancel()
    {
        return back();
    }

    public function orderSuccess()
    {
        return view('order-success');
    }
}
