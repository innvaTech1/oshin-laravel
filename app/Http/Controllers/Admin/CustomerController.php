<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\BannerImage;
use App\Models\Order;
use App\Models\ProductReport;
use App\Models\ProductReview;
use App\Models\ShippingAddress;
use App\Models\BillingAddress;
use App\Models\Wishlist;
use App\Helpers\MailHelper;

use App\Mail\SendSingleSellerMail;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $customers = User::orderBy('id', 'desc')->where('status', 1)->get();
        $defaultProfile = BannerImage::whereId('15')->first();
        $orders = Order::all();
        return view('admin.customer', compact('customers', 'defaultProfile', 'orders'));
    }
    public function deletedUserList()
    {
        $customers = User::with('city', 'seller', 'state', 'country')->orderBy('id', 'desc')->onlyTrashed()->get();

        $defaultProfile = BannerImage::whereId('15')->first();
        $orders = Order::all();
        return view('admin.customer-deleted', compact('customers', 'defaultProfile', 'orders'));
    }

    public function deletedUserRemove($id)
    {
        $user = User::withTrashed()->find($id);

        $user->deleted_at = null;
        $user->save();

        $notification = 'User Activated Successfully';
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.deleted-user-list')->with($notification);
    }

    public function deletedUserDelete($id)
    {
        $user = User::withTrashed()->find($id);
        $user->forceDelete();
        $notification = 'User Deleted Successfully';
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.deleted-user-list')->with($notification);
    }

    public function pendingCustomerList()
    {
        $customers = User::orderBy('id', 'desc')->where('status', 0)->get();
        $defaultProfile = BannerImage::whereId('15')->first();
        $orders = Order::all();
        return view('admin.customer', compact('customers', 'defaultProfile', 'orders'));
    }

    public function show($id)
    {
        $customer = User::find($id);
        if ($customer) {
            $defaultProfile = BannerImage::whereId('15')->first();
            return view('admin.show_customer', compact('customer', 'defaultProfile'));
        } else {
            $notification = 'Something went wrong';
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->route('admin.customer-list')->with($notification);
        }
    }

    public function destroy($id)
    {
        $user = User::find($id);
        $user_image = $user->image;
        $user->delete();
        file_delete($user_image);

        ProductReport::where('user_id', $id)->delete();
        ProductReview::where('user_id', $id)->delete();
        ShippingAddress::where('user_id', $id)->delete();
        BillingAddress::where('user_id', $id)->delete();
        Wishlist::where('user_id', $id)->delete();

        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function changeStatus($id)
    {
        $customer = User::find($id);
        if ($customer->status == 1) {
            $customer->status = 0;
            $customer->save();
            $message = trans('admin_validation.Inactive Successfully');
        } else {
            $customer->status = 1;
            $customer->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }

    public function sendEmailToAllUser()
    {
        return view('admin.send_email_to_all_customer');
    }

    public function sendMailToAllUser(Request $request)
    {
        $rules = [
            'subject' => 'required',
            'message' => 'required'
        ];
        $customMessages = [
            'subject.required' => trans('admin_validation.Subject is required'),
            'message.required' => trans('admin_validation.Message is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $users = User::where('status', 1)->get();
        MailHelper::setMailConfig();
        foreach ($users as $user) {
            Mail::to($user->email)->send(new SendSingleSellerMail($request->subject, $request->message));
        }

        $notification = trans('admin_validation.Email Send Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function sendMailToSingleUser(Request $request, $id)
    {
        $rules = [
            'subject' => 'required',
            'message' => 'required'
        ];
        $customMessages = [
            'subject.required' => trans('admin_validation.Subject is required'),
            'message.required' => trans('admin_validation.Message is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $user = User::find($id);
        MailHelper::setMailConfig();
        Mail::to($user->email)->send(new SendSingleSellerMail($request->subject, $request->message));

        $notification = trans('admin_validation.Email Send Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function resetPassword(Request $request, $id)
    {
        $request->validate(
            [
                'password' => 'required|confirmed'
            ],
        );
        $user = User::find($id);
        $user->password = Hash::make($user->email);
        $user->save();
        $notification = 'Password Reset Successfully';
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
}
