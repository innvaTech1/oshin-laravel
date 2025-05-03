<?php

namespace App\Http\Controllers\Seller;

use Auth;
use App\Models\Order;
use App\Models\Invoice;
use App\Models\Setting;
use App\Models\OrderAddress;
use App\Models\OrderProduct;
use Illuminate\Http\Request;
use App\Models\OrderProductVariant;
use App\Http\Controllers\Controller;

class SellerOrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:web');
    }

    public function index()
    {
        $seller = Auth::guard('web')->user()->seller;
        $orders = Order::with('user')->whereHas('orderProducts', function ($query) use ($seller) {
            $query->where(['seller_id' => $seller->id]);
        })->orderBy('id', 'desc')->get();
        $title = trans('user_validation.All Orders');
        $setting = Setting::first();
        return view('seller.order', compact('orders', 'title', 'setting'));
    }

    public function pendingOrder()
    {
        $seller = Auth::guard('web')->user()->seller;
        $orders = Order::with('user')->whereHas('orderProducts', function ($query) use ($seller) {
            $query->where(['seller_id' => $seller->id]);
        })->orderBy('id', 'desc')->where('order_status', 0)->get();
        $title = trans('user_validation.Pending Orders');
        $setting = Setting::first();
        return view('seller.order', compact('orders', 'title', 'setting'));
    }

    public function pregressOrder()
    {
        $seller = Auth::guard('web')->user()->seller;
        $orders = Order::with('user')->whereHas('orderProducts', function ($query) use ($seller) {
            $query->where(['seller_id' => $seller->id]);
        })->orderBy('id', 'desc')->where('order_status', 1)->get();
        $title = trans('user_validation.Pregress Orders');
        $setting = Setting::first();
        return view('seller.order', compact('orders', 'title', 'setting'));
    }

    public function deliveredOrder()
    {
        $seller = Auth::guard('web')->user()->seller;
        $orders = Order::with('user')->whereHas('orderProducts', function ($query) use ($seller) {
            $query->where(['seller_id' => $seller->id]);
        })->orderBy('id', 'desc')->where('order_status', 2)->get();
        $title = trans('user_validation.Delivered Orders');
        $setting = Setting::first();
        return view('seller.order', compact('orders', 'title', 'setting'));
    }

    public function completedOrder()
    {
        $seller = Auth::guard('web')->user()->seller;
        $orders = Order::with('user')->whereHas('orderProducts', function ($query) use ($seller) {
            $query->where(['seller_id' => $seller->id]);
        })->orderBy('id', 'desc')->where('order_status', 3)->get();
        $title = trans('user_validation.Completed Orders');
        $setting = Setting::first();
        return view('seller.order', compact('orders', 'title', 'setting'));
    }

    public function declinedOrder()
    {
        $seller = Auth::guard('web')->user()->seller;
        $orders = Order::with('user')->whereHas('orderProducts', function ($query) use ($seller) {
            $query->where(['seller_id' => $seller->id]);
        })->orderBy('id', 'desc')->where('order_status', 4)->get();
        $title = trans('user_validation.Declined Orders');
        $setting = Setting::first();
        return view('seller.order', compact('orders', 'title', 'setting'));
    }

    public function cashOnDelivery()
    {
        $seller = Auth::guard('web')->user()->seller;
        $orders = Order::with('user')->whereHas('orderProducts', function ($query) use ($seller) {
            $query->where(['seller_id' => $seller->id]);
        })->orderBy('id', 'desc')->where('cash_on_delivery', 1)->get();

        $title = trans('user_validation.Cash On Delivery');
        $setting = Setting::first();
        return view('seller.order', compact('orders', 'title', 'setting'));
    }

    public function show($id)
    {
        $order = Order::with('orderProducts', 'user')->find($id);
        $setting = Setting::first();

        $latestInvoice = Invoice::latest('id')->first();
        $nextId = $latestInvoice ? $latestInvoice->id + 1 : 1;
        $year = date('y');
        $uniqueInvoiceNumber = 'IN' . str_pad($nextId, 5, '0', STR_PAD_LEFT) . '.' . $year . '_OSHIN';

        return view('seller.show_order', compact('order', 'setting', 'uniqueInvoiceNumber'));
    }
}
