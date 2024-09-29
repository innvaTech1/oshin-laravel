<?php

namespace App\Http\Controllers\Auth;


use App\Models\User;
use App\Models\Vendor;
use App\Rules\Captcha;
use App\Helpers\MailHelper;
use App\Models\BannerImage;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\EmailTemplate;
use App\Models\BreadcrumbImage;
use App\Models\GoogleRecaptcha;
use App\Mail\UserForgetPassword;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\SocialLoginInformation;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Mail;
use Laravel\Socialite\Facades\Socialite;

class LoginController extends Controller
{

    use AuthenticatesUsers;
    protected $redirectTo = '/user/dashboard';

    public function __construct()
    {
        $this->middleware('guest:web')->except('userLogout');
    }

    public function loginPage()
    {
        $banner = BreadcrumbImage::where(['id' => 5])->first();
        $background = BannerImage::whereId('13')->first();
        $recaptchaSetting = GoogleRecaptcha::first();
        $socialLogin = SocialLoginInformation::first();
        return view('auth.customer.login', compact('banner', 'background', 'recaptchaSetting', 'socialLogin'));
    }

    public function storeLogin(Request $request)
    {
        $rules = [
            'email' => 'required',
            'password' => 'required',
            'g-recaptcha-response' => new Captcha()
        ];
        $customMessages = [
            'email.required' => trans('user_validation.Email is required'),
            'password.required' => trans('user_validation.Password is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $login = $request->email;

        $field = null;
        if (is_numeric($login)) {
            $field = 'phone';
        } elseif (filter_var($login, FILTER_VALIDATE_EMAIL)) {
            $field = 'email';
        } else {
            return redirect()->back()->with(['messege' => trans('user_validation.Please provide valid email or phone'), 'alert-type' => 'error']);
        }

        $user = User::where($field, $login)->first();

        $credential = [
            $field => $login,
            'password' => $request->password,
        ];


        if ($user) {
            if ($user->status == 1) {
                if (Hash::check($request->password, $user->password)) {
                    if (Auth::guard('web')->attempt($credential, $request->remember)) {
                        $notification = trans('user_validation.Login Successfully');
                        $notification = array('messege' => $notification, 'alert-type' => 'success');
                        $isVendor = Vendor::where('user_id', $user->id)->first();
                        if ($isVendor) {
                            if ($isVendor->status == 1) {
                                return redirect()->intended(route('seller.dashboard'))->with($notification);
                            }
                        } else {
                            return redirect()->intended(route('user.dashboard'))->with($notification);
                        }
                    }
                } else {
                    $notification = trans('user_validation.Credentials does not exist');
                    $notification = array('messege' => $notification, 'alert-type' => 'error');
                    return redirect()->back()->with($notification);
                }
            } else {
                $notification = trans('user_validation.Disabled Account');
                $notification = array('messege' => $notification, 'alert-type' => 'error');
                return redirect()->back()->with($notification);
            }
        } else {
            $notification = trans('user_validation.Email / Phone does not exist');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }
    }


    public function forgetPage()
    {
        $banner = BreadcrumbImage::where(['id' => 5])->first();
        $recaptchaSetting = GoogleRecaptcha::first();
        return view('forget_password', compact('banner', 'recaptchaSetting'));
    }

    public function sendForgetPassword(Request $request)
    {
        $rules = [
            'email' => 'required',
            'g-recaptcha-response' => new Captcha()
        ];
        $customMessages = [
            'email.required' => trans('user_validation.Email is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $user = User::where('email', $request->email)->first();
        if ($user) {
            $user->forget_password_token = Str::random(100);
            $user->save();

            MailHelper::setMailConfig();
            $template = EmailTemplate::where('id', 1)->first();
            $subject = $template->subject;
            $message = $template->description;
            $message = str_replace('{{name}}', $user->name, $message);
            Mail::to($user->email)->send(new UserForgetPassword($message, $subject, $user));

            $notification = trans('user_validation.Reset password link send to your email.');
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->back()->with($notification);
        } else {
            $notification = trans('user_validation.Email does not exist');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }
    }


    public function resetPasswordPage($token)
    {
        $user = User::where('forget_password_token', $token)->first();
        $banner = BreadcrumbImage::where(['id' => 5])->first();
        $recaptchaSetting = GoogleRecaptcha::first();
        return view('reset_password', compact('banner', 'recaptchaSetting', 'user', 'token'));
    }

    public function storeResetPasswordPage(Request $request, $token)
    {
        $rules = [
            'email' => 'required',
            'password' => 'required|min:4|confirmed',
            'g-recaptcha-response' => new Captcha()
        ];
        $customMessages = [
            'email.required' => trans('user_validation.Email is required'),
            'password.required' => trans('user_validation.Password is required'),
            'password.min' => trans('user_validation.Password must be 4 characters'),
            'password.confirmed' => trans('user_validation.Confirm password does not match'),
        ];
        $this->validate($request, $rules, $customMessages);

        $user = User::where(['email' => $request->email, 'forget_password_token' => $token])->first();
        if ($user) {
            $user->password = Hash::make($request->password);
            $user->forget_password_token = null;
            $user->save();

            $notification = trans('user_validation.Password Reset successfully');
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->route('login')->with($notification);
        } else {
            $notification = trans('user_validation.Something went wrong');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->route('login')->with($notification);
        }
    }

    public function userLogout()
    {
        Auth::guard('web')->logout();
        $notification = trans('user_validation.Logout Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('login')->with($notification);
    }

    public function redirectToGoogle()
    {
        SocialLoginInformation::setGoogleLoginInfo();
        return Socialite::driver('google')->redirect();
    }

    public function googleCallBack()
    {
        SocialLoginInformation::setGoogleLoginInfo();
        $user = Socialite::driver('google')->user();
        $user = $this->createUser($user, 'google');
        auth()->login($user);
        return redirect()->intended(route('user.dashboard'));
    }

    public function redirectToFacebook()
    {
        SocialLoginInformation::setFacebookLoginInfo();
        return Socialite::driver('facebook')->redirect();
    }

    public function facebookCallBack()
    {
        SocialLoginInformation::setFacebookLoginInfo();
        $user = Socialite::driver('facebook')->user();
        $user = $this->createUser($user, 'facebook');
        auth()->login($user);
        return redirect()->intended(route('user.dashboard'));
    }



    function createUser($getInfo, $provider)
    {
        $user = User::where('provider_id', $getInfo->id)->first();
        if (!$user) {
            $user = User::create([
                'name'     => $getInfo->name,
                'email'    => $getInfo->email,
                'provider' => $provider,
                'provider_id' => $getInfo->id,
                'provider_avatar' => $getInfo->avatar,
                'status' => 1,
                'email_verified' => 1,
            ]);
        }
        return $user;
    }
}
