<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\BlogComment;
use App\Models\Brand;
use App\Models\Category;
use App\Models\ChildCategory;
use App\Models\SubCategory;
use App\Models\CustomPage;
use App\Models\EmailConfiguration;
use App\Models\EmailTemplate;
use App\Models\PopularPost;
use App\Models\Product;
use App\Models\ProductGallery;
use App\Models\ProductSpecification;
use App\Models\ProductSpecificationKey;
use App\Models\ProductTax;
use App\Models\ProductVariant;
use App\Models\ProductVariantItem;
use App\Models\ReturnPolicy;
use App\Models\Service;
use App\Models\TermsAndCondition;
use App\Models\User;
use App\Models\Setting;
use App\Models\CookieConsent;
use App\Models\GoogleRecaptcha;
use App\Models\FacebookComment;
use App\Models\TawkChat;
use App\Models\GoogleAnalytic;
use App\Models\CustomPagination;
use App\Models\SocialLoginInformation;
use App\Models\FacebookPixel;
use App\Models\About;
use App\Models\AboutUs;
use App\Models\BillingAddress;
use App\Models\Campaign;
use App\Models\City;
use App\Models\ContactPage;
use App\Models\Country;
use App\Models\CountryState;
use App\Models\Coupon;
use App\Models\Faq;
use App\Models\FooterLink;
use App\Models\FooterSocialLink;
use App\Models\MegaMenuCategory;
use App\Models\MegaMenuSubCategory;
use App\Models\Order;
use App\Models\OrderAddress;
use App\Models\OrderProduct;
use App\Models\OrderProductVariant;
use App\Models\ProductReport;
use App\Models\ProductReview;
use App\Models\SellerMailLog;
use App\Models\SellerWithdraw;
use App\Models\Vendor;
use App\Models\VendorSocialLink;
use App\Models\Wishlist;
use App\Models\WithdrawMethod;
use App\Models\CampaignProduct;
use App\Models\ShippingMethod;
use App\Models\ContactMessage;
use App\Models\ShippingAddress;
use App\Models\Slider;
use App\Models\Subscriber;
use App\Models\Admin;
use App\Models\PusherCredentail;
use App\Models\Message;
use Illuminate\Support\Facades\Artisan;

class SettingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $setting = Setting::first();
        $cookieConsent = CookieConsent::first();
        $googleRecaptcha = GoogleRecaptcha::first();
        $facebookComment = FacebookComment::first();
        $tawkChat = TawkChat::first();
        $googleAnalytic = GoogleAnalytic::first();
        $customPaginations = CustomPagination::all();
        $socialLogin = SocialLoginInformation::first();
        $facebookPixel = FacebookPixel::first();
        $pusher = PusherCredentail::first();
        return view('admin.setting', compact('setting', 'cookieConsent', 'googleRecaptcha', 'facebookComment', 'tawkChat', 'googleAnalytic', 'customPaginations', 'socialLogin', 'facebookPixel', 'pusher'));
    }

    public function updateThemeColor(Request $request)
    {
        $setting = Setting::first();
        $setting->theme_one = $request->theme_one;
        $setting->theme_two = $request->theme_two;
        $setting->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateCustomPagination(Request $request)
    {

        foreach ($request->quantities as $index => $quantity) {
            if ($request->quantities[$index] == '') {
                $notification = array(
                    'messege' => trans('admin_validation.Every field is required'),
                    'alert-type' => 'error'
                );

                return redirect()->back()->with($notification);
            }

            $customPagination = CustomPagination::find($request->ids[$index]);
            $customPagination->qty = $request->quantities[$index];
            $customPagination->save();
        }

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateGeneralSetting(Request $request)
    {
        $rules = [
            'user_register' => 'required',
            'lg_header' => 'required',
            'sm_header' => 'required',
            'contact_email' => 'required',
        ];
        $customMessages = [
            'user_register.required' => trans('admin_validation.User register is required'),

            'lg_header.required' => trans('admin_validation.Sidebar large header is required'),
            'sm_header.required' => trans('admin_validation.Sidebar small header is required'),
            'contact_email.required' => trans('admin_validation.Contact email is required'),
            'timezone.required' => trans('admin_validation.Timezone is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $setting = Setting::first();
        $setting->enable_user_register = $request->user_register;
        $setting->sidebar_lg_header = $request->lg_header;
        $setting->sidebar_sm_header = $request->sm_header;
        $setting->contact_email = $request->contact_email;

        $setting->timezone = $request->timezone;
        $setting->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateCookieConset(Request $request)
    {
        $rules = [
            'allow' => 'required',
            'border' => 'required',
            'corners' => 'required',
            'background_color' => 'required',
            'text_color' => 'required',
            'border_color' => 'required',
            'button_color' => 'required',
            'btn_text_color' => 'required',
            'link_text' => 'required',
            'btn_text' => 'required',
            'message' => 'required',
        ];
        $customMessages = [
            'allow.required' => trans('admin_validation.Allow is required'),
            'border.required' => trans('admin_validation.Border is required'),
            'corners.required' => trans('admin_validation.Corner is required'),
            'background_color.required' => trans('admin_validation.Background color is required'),
            'text_color.required' => trans('admin_validation.Text color is required'),
            'border_color.required' => trans('admin_validation.Border Color is required'),
            'button_color.required' => trans('admin_validation.Button color is required'),
            'btn_text_color.required' => trans('admin_validation.Button text color is required'),
            'link_text.required' => trans('admin_validation.Link text is required'),
            'btn_text.required' => trans('admin_validation.Button text is required'),
            'message.required' => trans('admin_validation.Message is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $cookieConsent = CookieConsent::first();
        $cookieConsent->status = $request->allow;
        $cookieConsent->border = $request->border;
        $cookieConsent->corners = $request->corners;
        $cookieConsent->background_color = $request->background_color;
        $cookieConsent->text_color = $request->text_color;
        $cookieConsent->border_color = $request->border_color;
        $cookieConsent->btn_bg_color = $request->button_color;
        $cookieConsent->btn_text_color = $request->btn_text_color;
        $cookieConsent->link_text = $request->link_text;
        $cookieConsent->btn_text = $request->btn_text;
        $cookieConsent->message = $request->message;
        $cookieConsent->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateFacebookComment(Request $request)
    {
        $rules = [
            'comment_type' => 'required',
            'app_id' => $request->comment_type == 0 ?  'required' : ''
        ];
        $customMessages = [
            'app_id.required' => trans('admin_validation.App id is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $facebookComment = FacebookComment::first();
        $facebookComment->comment_type = $request->comment_type;
        $facebookComment->app_id = $request->app_id;
        $facebookComment->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateTawkChat(Request $request)
    {
        $rules = [
            'allow' => 'required',
            'chat_link' => $request->allow == 1 ?  'required' : ''
        ];
        $customMessages = [
            'allow.required' => trans('admin_validation.Allow is required'),
            'chat_link.required' => trans('admin_validation.Chat link is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $tawkChat = TawkChat::first();
        $tawkChat->status = $request->allow;
        $tawkChat->chat_link = $request->chat_link;
        $tawkChat->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateGoogleAnalytic(Request $request)
    {
        $rules = [
            'allow' => 'required',
            'analytic_id' => $request->allow == 1 ?  'required' : ''
        ];
        $customMessages = [
            'allow.required' => trans('admin_validation.Allow is required'),
            'analytic_id.required' => trans('admin_validation.Analytic id is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $googleAnalytic = GoogleAnalytic::first();
        $googleAnalytic->status = $request->allow;
        $googleAnalytic->analytic_id = $request->analytic_id;
        $googleAnalytic->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }


    public function updateGoogleRecaptcha(Request $request)
    {

        $rules = [
            'site_key' => $request->allow == 1 ?  'required' : '',
            'secret_key' => $request->allow == 1 ?  'required' : '',
            'allow' => 'required',
        ];
        $customMessages = [
            'site_key.required' => trans('admin_validation.Site key is required'),
            'secret_key.required' => trans('admin_validation.Secret key is required'),
            'allow.required' => trans('admin_validation.Allow is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $googleRecaptcha = GoogleRecaptcha::first();
        $googleRecaptcha->status = $request->allow;
        $googleRecaptcha->site_key = $request->site_key;
        $googleRecaptcha->secret_key = $request->secret_key;
        $googleRecaptcha->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateLogoFavicon(Request $request)
    {
        $setting = Setting::first();
        if ($request->logo) {
            $old_logo = $setting->logo;
            $logo_name = file_upload($request->logo, $old_logo, 'uploads/website-images/', 'logo-');
            $setting->logo = $logo_name;
            $setting->save();
        }

        if ($request->favicon) {
            $old_favicon = $setting->favicon;
            $favicon_name = file_upload($request->favicon, $old_favicon, 'uploads/website-images/', 'favicon-');
            $setting->favicon = $favicon_name;
            $setting->save();
        }

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateSocialLogin(Request $request)
    {

        $rules = [
            'facebook_app_id' => $request->allow_facebook_login ?  'required' : '',
            'facebook_app_secret' => $request->allow_facebook_login ?  'required' : '',
            'gmail_client_id' => $request->allow_gmail_login ?  'required' : '',
            'gmail_secret_id' => $request->allow_gmail_login ?  'required' : '',
            'gmail_redirect_url' => $request->allow_gmail_login ?  'required' : '',
            'facebook_redirect_url' => $request->allow_gmail_login ?  'required' : '',
        ];
        $customMessages = [
            'facebook_app_id.required' => trans('admin_validation.Facebook app id is required'),
            'facebook_app_secret.required' => trans('admin_validation.Facebook app secret is required'),
            'gmail_client_id.required' => trans('admin_validation.Gmail client id is required'),
            'gmail_secret_id.required' => trans('admin_validation.Gmail secret id is required'),
            'gmail_redirect_url.required' => trans('admin_validation.Gmail redirect url is required'),
            'facebook_redirect_url.required' => trans('admin_validation.Facebook redirect url is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $socialLogin = SocialLoginInformation::first();
        $socialLogin->is_facebook = $request->allow_facebook_login ? 1 : 0;
        $socialLogin->facebook_client_id = $request->facebook_app_id;
        $socialLogin->facebook_secret_id = $request->facebook_app_secret;
        $socialLogin->facebook_redirect_url = $request->facebook_redirect_url;
        $socialLogin->is_gmail = $request->allow_gmail_login ? 1 : 0;
        $socialLogin->gmail_client_id = $request->gmail_client_id;
        $socialLogin->gmail_secret_id = $request->gmail_secret_id;
        $socialLogin->gmail_redirect_url = $request->gmail_redirect_url;
        $socialLogin->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updateFacebookPixel(Request $request)
    {

        $rules = [
            'app_id' => $request->allow_facebook_pixel ?  'required' : '',
        ];
        $customMessages = [
            'app_id.required' => trans('admin_validation.App id is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $facebookPixel = FacebookPixel::first();
        $facebookPixel->app_id = $request->app_id;
        $facebookPixel->status = $request->allow_facebook_pixel ? 1 : 0;
        $facebookPixel->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function updatePusher(Request $request)
    {
        $rules = [
            'app_id' => 'required',
            'app_key' => 'required',
            'app_secret' => 'required',
            'app_cluster' => 'required',
        ];
        $customMessages = [
            'app_id.required' => trans('admin_validation.App id is required'),
            'app_key.required' => trans('admin_validation.App key is required'),
            'app_secret.required' => trans('admin_validation.App secret is required'),
            'app_cluster.required' => trans('admin_validation.App cluster is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        $pusher = PusherCredentail::first();
        $pusher->app_id = $request->app_id;
        $pusher->app_key = $request->app_key;
        $pusher->app_secret = $request->app_secret;
        $pusher->app_cluster = $request->app_cluster;
        $pusher->save();

        Artisan::call("env:set PUSHER_APP_ID='" . $request->app_id . "'");
        Artisan::call("env:set PUSHER_APP_KEY='" . $request->app_key . "'");
        Artisan::call("env:set PUSHER_APP_SECRET='" . $request->app_secret . "'");
        Artisan::call("env:set PUSHER_APP_CLUSTER='" . $request->app_cluster . "'");


        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
    public function updateInvoiceAddress(Request $request)
    {
        $this->validate($request, [
            'invoice_address' => 'required',
        ]);
        $setting = Setting::first();
        $setting->invoice_address = $request->invoice_address;
        $setting->save();

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
}
