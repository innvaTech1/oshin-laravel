<?php

namespace App\Http\Controllers\Admin;

use App\Models\Order;
use App\Models\Invoice;
use App\Models\Setting;
use App\Models\OrderAddress;
use App\Models\OrderProduct;
use Illuminate\Http\Request;
use App\Models\OrderProductVariant;
use App\Http\Controllers\Controller;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $orders = Order::with('user')->orderBy('id', 'desc')->get();
        $title = trans('admin_validation.All Orders');
        $setting = Setting::first();
        return view('admin.order', compact('orders', 'title', 'setting'));
    }

    public function pendingOrder()
    {
        $orders = Order::with('user')->orderBy('id', 'desc')->where('order_status', 0)->get();
        $title = trans('admin_validation.Pending Orders');
        $setting = Setting::first();
        return view('admin.order', compact('orders', 'title', 'setting'));
    }

    public function pregressOrder()
    {
        $orders = Order::with('user')->orderBy('id', 'desc')->where('order_status', 1)->get();
        $title = trans('admin_validation.Pregress Orders');
        $setting = Setting::first();
        return view('admin.order', compact('orders', 'title', 'setting'));
    }

    public function deliveredOrder()
    {
        $orders = Order::with('user')->orderBy('id', 'desc')->where('order_status', 2)->get();
        $title = trans('admin_validation.Delivered Orders');
        $setting = Setting::first();
        return view('admin.order', compact('orders', 'title', 'setting'));
    }

    public function completedOrder()
    {
        $orders = Order::with('user')->orderBy('id', 'desc')->where('order_status', 3)->get();
        $title = trans('admin_validation.Completed Orders');
        $setting = Setting::first();
        return view('admin.order', compact('orders', 'title', 'setting'));
    }

    public function declinedOrder()
    {
        $orders = Order::with('user')->orderBy('id', 'desc')->where('order_status', 4)->get();
        $title = trans('admin_validation.Declined Orders');
        $setting = Setting::first();
        return view('admin.order', compact('orders', 'title', 'setting'));
    }

    public function cashOnDelivery()
    {
        $orders = Order::with('user')->orderBy('id', 'desc')->where('cash_on_delivery', 1)->get();
        $title = trans('admin_validation.Cash On Delivery');
        $setting = Setting::first();
        return view('admin.order', compact('orders', 'title', 'setting'));
    }

    public function show($id)
    {
        $order = Order::with('orderProducts', 'user')->findOrFail($id);
        $setting = Setting::first();

        $latestInvoice = Invoice::latest('id')->first();
        $nextId = $latestInvoice ? $latestInvoice->id + 1 : 1;
        $year = date('y');
        $uniqueInvoiceNumber = 'IN' . str_pad($nextId, 5, '0', STR_PAD_LEFT) . '.' . $year . '_OSHIN';

        // Save the invoice if not already generated
        $existingInvoice = Invoice::where('order_id', $id)->first();
        if (!$existingInvoice) {
            $invoice = new Invoice();
            $invoice->order_id = $id;
            $invoice->user_id = auth()->id();
            $invoice->invoice_number = $uniqueInvoiceNumber;
            $invoice->save();
        } else {
            $uniqueInvoiceNumber = $existingInvoice->invoice_number;
        }

        return view('admin.show_order', compact('order', 'setting', 'uniqueInvoiceNumber'));
    }

    public function updateOrderStatus(Request $request, $id)
    {
        $rules = [
            'order_status' => 'required',
            'payment_status' => 'required',
        ];
        $this->validate($request, $rules);

        $order = Order::find($id);
        if ($request->order_status == 0) {
            $order->order_status = 0;
            $order->save();
        } elseif ($request->order_status == 1) {
            $order->order_status = 1;
            $order->order_approval_date = date('Y-m-d');
            $order->save();
        } elseif ($request->order_status == 2) {
            $order->order_status = 2;
            $order->order_delivered_date = date('Y-m-d');
            $order->save();
        } elseif ($request->order_status == 3) {
            $order->order_status = 3;
            $order->order_completed_date = date('Y-m-d');
            $order->save();
        } elseif ($request->order_status == 4) {
            $order->order_status = 4;
            $order->order_declined_date = date('Y-m-d');
            $order->save();
        }

        if ($request->payment_status == 0) {
            $order->payment_status = 0;
            $order->save();
        } elseif ($request->payment_status == 1) {
            $order->payment_status = 1;
            $order->payment_approval_date = date('Y-m-d');
            $order->save();
        }

        $notification = trans('admin_validation.Order Status Updated successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }


    public function destroy($id)
    {
        $order = Order::find($id);
        $order->delete();
        $orderProducts = OrderProduct::where('order_id', $id)->get();
        $orderAddress = OrderAddress::where('order_id', $id)->first();
        foreach ($orderProducts as $orderProduct) {
            OrderProductVariant::where('order_product_id', $orderProduct->id)->delete();
            $orderProduct->delete();
        }
        OrderAddress::where('order_id', $id)->delete();

        $notification = trans('admin_validation.Delete successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.all-order')->with($notification);
    }
}
