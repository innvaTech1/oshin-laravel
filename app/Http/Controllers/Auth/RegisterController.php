<?php

namespace App\Http\Controllers\Auth;

use Auth;
use Mail;
use App\Models\User;
use App\Rules\Captcha;
use App\Helpers\MailHelper;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\EmailTemplate;
use App\Mail\UserRegistration;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;


class RegisterController extends Controller
{

    use RegistersUsers;


    protected $redirectTo = RouteServiceProvider::HOME;


    public function __construct()
    {
        $this->middleware('guest:web');
    }

    public function storeRegister(Request $request)
    {
        $rules = [
            'name' => 'required',
            'password' => 'required|min:4|confirmed'
        ];
        $customMessages = [
            'name.required' => trans('user_validation.Name is required'),
            'password.required' => trans('user_validation.Password is required'),
            'password.min' => trans('user_validation.Password must be 4 characters'),
            'password.confirmed' => trans('user_validation.Confirm password does not match'),
        ];
        $this->validate($request, $rules, $customMessages);

        $login = $request->username;

        $field = null;
        if (is_numeric($login)) {
            $field = 'phone';
        } elseif (filter_var($login, FILTER_VALIDATE_EMAIL)) {
            $field = 'email';
        }



        $check = User::where($field, $login)->first();

        if ($check) {
            return back()->with([
                'messege' => 'User already exists',
                'alert-type' => 'error'
            ]);
        }

        $user = User::create([
            'name' => $request->name,
            $field => $request->username,
            'password' => Hash::make($request->password),
            'verify_token' => Str::random(100),
            'email_verified_at' => now(),
            'email_verified' => 1,
            "agree_policy" => $request->agree ? 1 : 0,
            'status' => 1,
        ]);

        // MailHelper::setMailConfig();

        // $template = EmailTemplate::where('id', 4)->first();
        // $subject = $template->subject;
        // $message = $template->description;
        // $message = str_replace('{{user_name}}', $request->name, $message);
        // Mail::to($user->email)->send(new UserRegistration($message, $subject, $user));

        $notification = trans('user_validation.Register Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function userVerification($token)
    {
        $user = User::where('verify_token', $token)->first();
        if ($user) {
            $user->verify_token = null;
            $user->status = 1;
            $user->email_verified = 1;
            $user->save();
            $notification = trans('user_validation.Verification Successfully');
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->route('login')->with($notification);
        } else {
            $notification = trans('user_validation.Invalid token');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }
    }


    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }


    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }
}
