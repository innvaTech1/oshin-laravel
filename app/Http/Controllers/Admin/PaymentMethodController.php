<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AamarpayPayment;
use Illuminate\Http\Request;
use App\Models\BankPayment;
use App\Models\Currency;
use App\Models\Setting;

class PaymentMethodController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $bank = BankPayment::first();
        $setting = Setting::first();
        $currency = Currency::first();
        $aamarpay  = AamarpayPayment::first();
        return view('admin.payment_method', compact('bank', 'setting', 'currency', 'aamarpay'));
    }

    public function updateBank(Request $request)
    {
        $rules = [
            'account_info' => $request->status ? 'required' : ''
        ];
        $customMessages = [
            'account_info.required' => trans('admin_validation.Account information is required'),
        ];
        $this->validate($request, $rules, $customMessages);
        $bank = BankPayment::first();
        $bank->account_info = $request->account_info;
        $bank->status = $request->status ? 1 : 0;
        $bank->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateCashOnDelivery(Request $request)
    {
        $bank = BankPayment::first();
        if ($bank->cash_on_delivery_status == 1) {
            $bank->cash_on_delivery_status = 0;
            $bank->save();
            $message = trans('admin_validation.Inactive Successfully');
        } else {
            $bank->cash_on_delivery_status = 1;
            $bank->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }

    public function updateAamarpay(Request $request)
    {
        $rules = [
            'store_id' => $request->status ? 'required' : '',
            'signature_key' => $request->status ? 'required' : '',
            'currency_name' => $request->status ? 'required' : '',
        ];
        $customMessages = [
            'store_id.required' => trans('admin_validation.Store id is required'),
            'signature_key.required' => trans('admin_validation.Signature Key is required'),
            'currency_name.required' => trans('admin_validation.Currency name is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $aamarpay  = AamarpayPayment::first();

        $aamarpay->update([
            'store_id' => $request->store_id,
            'mode' => $request->account_mode,
            'signature_key' => $request->signature_key,
            'currency_id' => $request->currency_name,
            'status' => $request->status ? 1 : 0
        ]);

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
}
