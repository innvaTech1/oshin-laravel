@php
    $setting = App\Models\Setting::first();
    $announcementModal = App\Models\AnnouncementModal::first();
    $productCategories = App\Models\Category::where(['status' => 1])->get();
    $megaMenuCategories = App\Models\MegaMenuCategory::orderBy('serial', 'asc')->where('status', 1)->get();
    $megaMenuBanner = App\Models\BannerImage::find(1);
    $modalProducts = App\Models\Product::all();
    $currencySetting = App\Models\Setting::first();
    $menus = App\Models\MenuVisibility::select('status', 'id')->get();
    $customPages = App\Models\CustomPage::where('status', 1)->get();
    $googleAnalytic = App\Models\GoogleAnalytic::first();
    $facebookPixel = App\Models\FacebookPixel::first();
@endphp

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densityDpi=device-dpi" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    @yield('title')
    @yield('meta')

    <link rel="icon" type="image/png" href="{{ asset($setting->favicon) }}">
    <link rel="stylesheet" href="{{ asset('user/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/jquery.nice-number.min.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/jquery.calendar.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/add_row_custon.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/mobile_menu.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/jquery.exzoom.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/multiple-image-video.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/ranger_style.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/jquery.classycountdown.css') }}">
    <link rel="stylesheet" href="{{ asset('user/css/venobox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('toastr/toastr.min.css') }}">

    @if ($setting->text_direction == 'rtl')
        <link rel="stylesheet" href="{{ asset('user/css/rtl.css') }}">
    @endif

    <link rel="stylesheet" href="{{ asset('user/css/style.css') }}">


    <link rel="stylesheet" href="{{ asset('user/css/responsive.css') }}">

    <link rel="stylesheet" href="{{ asset('user/css/dev.css') }}">

    <!--jquery library js-->
    <script src="{{ asset('user/js/jquery-3.6.0.min.js') }}"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>


    @if ($googleAnalytic->status == 1)
        <script async src="https://www.googletagmanager.com/gtag/js?id={{ $googleAnalytic->analytic_id }}"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', '{{ $googleAnalytic->analytic_id }}');
        </script>
    @endif

    @if ($facebookPixel->status == 1)
        <script>
            ! function(f, b, e, v, n, t, s) {
                if (f.fbq) return;
                n = f.fbq = function() {
                    n.callMethod ?
                        n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq) f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script',
                'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '{{ $facebookPixel->app_id }}');
            fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none"
                src="https://www.facebook.com/tr?id={{ $facebookPixel->app_id }}&ev=PageView&noscript=1" /></noscript>
    @endif

    <script>
        var end_year = '';
        var end_month = '';
        var end_date = '';
        var capmaign_time = '';
        var campaign_end_year = ''
        var campaign_end_month = ''
        var campaign_end_date = ''
        var campaign_hour = ''
        var campaign_min = ''
        var campaign_sec = ''
        var productIds = [];
        var productYears = [];
        var productMonths = [];
        var productDays = [];
    </script>

    {{-- @include('theme_style_css') --}}
</head>

<body>

    <!--============================
        TOP BAR START
    ==============================-->
    @include('website.partials.top-bar')
    <!--============================
        TOP BAR END
    ==============================-->


    <!--============================
        HEADER START
    ==============================-->
    @include('website.partials.header-2')
    <!--============================
        HEADER END
    ==============================-->

    <!--============================
        MOBILE MENU START
    ==============================-->
    {{-- <section id="wsus__mobile_menu">
        <span class="wsus__mobile_menu_close"><i class="fal fa-times"></i></span>
        <ul class="wsus__mobile_menu_header_icon d-inline-flex">
            @if ($menus->where('id', 21)->first()->status == 1)
                <li><a href="{{ route('user.wishlist') }}"><i class="far fa-heart"></i>
                        @auth
                            @php
                                $user = Auth::guard('web')->user();
                                $wishlist = App\Models\Wishlist::where('user_id', $user->id)->count();
                            @endphp
                            <span id="mobileMenuwishlistQty">{{ $wishlist }}</span>
                        @endauth
                    </a></li>
            @endif

            @if ($menus->where('id', 20)->first()->status == 1)
                <li><a href="{{ route('compare') }}"><i class="far fa-random"></i><span
                            id="mobileMenuCompareQty">{{ Cart::instance('compare')->count() }}</span></a></li>
            @endif
        </ul>
        @if ($menus->where('id', 25)->first()->status == 1)
            <form action="{{ route('product') }}">
                <input type="text" placeholder="{{ __('user.Search') }}" name="search">
                <button type="submit"><i class="far fa-search"></i></button>
            </form>
        @endif

        @php
            $categoryFalse = $menus->where('id', 24)->first()->status == 1 ? false : true;
        @endphp
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            @if ($menus->where('id', 24)->first()->status == 1)
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-home" role="tab" aria-controls="pills-home"
                        aria-selected="true">{{ __('user.Categories') }}</button>
                </li>
            @endif
            <li class="nav-item" role="presentation">
                <button class="nav-link {{ $categoryFalse ? 'active' : '' }}" id="pills-profile-tab"
                    data-bs-toggle="pill" data-bs-target="#pills-profile" role="tab" aria-controls="pills-profile"
                    aria-selected="false">{{ __('user.Main Menu') }}</button>
            </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
            @if ($menus->where('id', 24)->first()->status == 1)
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                    <div class="wsus__mobile_menu_main_menu">
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <ul class="wsus_mobile_menu_category">
                                @foreach ($productCategories as $productCategory)
                                    @if ($productCategory->subCategories->count() == 0)
                                        <li><a href="{{ route('product', ['category' => $productCategory->slug]) }}"><i
                                                    class="{{ $productCategory->icon }}"></i>
                                                {{ $productCategory->name }}</a></li>
                                    @else
                                        <li><a href="{{ route('product', ['category' => $productCategory->slug]) }}"
                                                class="accordion-button collapsed" data-bs-toggle="collapse"
                                                data-bs-target="#flush-collapseThreew-{{ $productCategory->id }}"
                                                aria-expanded="false"
                                                aria-controls="flush-collapseThreew-{{ $productCategory->id }}"><i
                                                    class="{{ $productCategory->icon }}"></i>
                                                {{ $productCategory->name }}</a>
                                            <div id="flush-collapseThreew-{{ $productCategory->id }}"
                                                class="accordion-collapse collapse"
                                                data-bs-parent="#accordionFlushExample">
                                                <div class="accordion-body">
                                                    <ul>
                                                        @foreach ($productCategory->subCategories as $subCategory)
                                                            <li><a
                                                                    href="{{ route('product', ['sub_category' => $subCategory->slug]) }}">{{ $subCategory->name }}</a>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            @endif
            <div class="tab-pane fade  {{ $categoryFalse ? 'show active' : '' }}" id="pills-profile" role="tabpanel"
                aria-labelledby="pills-profile-tab">
                <div class="wsus__mobile_menu_main_menu">
                    <div class="accordion accordion-flush" id="accordionFlushExample2">
                        <ul>
                            @if ($menus->where('id', 1)->first()->status == 1)
                                <li><a href="{{ route('home') }}">{{ __('user.Home') }}</a></li>
                            @endif
                            @if ($menus->where('id', 2)->first()->status == 1)
                                @if ($menus->where('id', 3)->first()->status == 1)
                                    <li><a href="{{ route('product') }}" class="accordion-button collapsed"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
                                            aria-expanded="false"
                                            aria-controls="flush-collapseThree">{{ __('user.Shop') }}</a>
                                        <div id="flush-collapseThree" class="accordion-collapse collapse"
                                            data-bs-parent="#accordionFlushExample2">
                                            <div class="accordion-body">
                                                <ul>
                                                    @foreach ($megaMenuCategories as $megaMenuCategory)
                                                        <li><a
                                                                href="{{ route('product', ['category' => $megaMenuCategory->category->slug]) }}">{{ $megaMenuCategory->category->name }}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                @else
                                    <li><a href="{{ route('product') }}">{{ __('user.Shop') }}</a></li>
                                @endif
                            @endif
                            @if ($menus->where('id', 4)->first()->status == 1)
                                @if ($setting->enable_multivendor == 1)
                                    <li><a href="{{ route('sellers') }}">{{ __('user.Sellers') }}</a></li>
                                @endif
                            @endif
                            @if ($menus->where('id', 5)->first()->status == 1)
                                <li><a href="{{ route('blog') }}">{{ __('user.Blog') }}</a></li>
                            @endif
                            @if ($menus->where('id', 6)->first()->status == 1)
                                <li><a href="{{ route('campaign') }}">{{ __('user.Campain') }}</a></li>
                            @endif
                            @if ($menus->where('id', 7)->first()->status == 1)
                                <li><a href="#" class="accordion-button collapsed" data-bs-toggle="collapse"
                                        data-bs-target="#flush-collapseThree101" aria-expanded="false"
                                        aria-controls="flush-collapseThree101">{{ __('user.Pages') }}</a>
                                    <div id="flush-collapseThree101" class="accordion-collapse collapse"
                                        data-bs-parent="#accordionFlushExample2">
                                        <div class="accordion-body">
                                            <ul>
                                                @if ($menus->where('id', 8)->first()->status == 1)
                                                    <li><a
                                                            href="{{ route('about-us') }}">{{ __('user.About Us') }}</a>
                                                    </li>
                                                @endif
                                                @if ($menus->where('id', 9)->first()->status == 1)
                                                    <li><a
                                                            href="{{ route('contact-us') }}">{{ __('user.Contact Us') }}</a>
                                                    </li>
                                                @endif
                                                @if ($menus->where('id', 10)->first()->status == 1)
                                                    <li><a
                                                            href="{{ route('user.checkout.billing-address') }}">{{ __('user.Check Out') }}</a>
                                                    </li>
                                                @endif
                                                @if ($menus->where('id', 11)->first()->status == 1)
                                                    <li><a href="{{ route('brand') }}">{{ __('user.Brand') }}</a>
                                                    </li>
                                                @endif
                                                @if ($menus->where('id', 12)->first()->status == 1)
                                                    <li><a href="{{ route('faq') }}">{{ __('user.FAQ') }}</a></li>
                                                @endif
                                                @if ($menus->where('id', 13)->first()->status == 1)
                                                    <li><a
                                                            href="{{ route('privacy-policy') }}">{{ __('user.Privacy Policy') }}</a>
                                                    </li>
                                                @endif
                                                @if ($menus->where('id', 14)->first()->status == 1)
                                                    <li><a
                                                            href="{{ route('terms-and-conditions') }}">{{ __('user.Terms and Conditions') }}</a>
                                                    </li>
                                                @endif

                                                @foreach ($customPages as $customPage)
                                                    <li><a
                                                            href="{{ route('page', $customPage->slug) }}">{{ $customPage->page_name }}</a>
                                                    </li>
                                                @endforeach

                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            @endif
                            @if ($menus->where('id', 15)->first()->status == 1)
                                <li><a href="{{ route('track-order') }}">{{ __('user.Track Order') }}</a></li>
                            @endif
                            @if ($menus->where('id', 16)->first()->status == 1)
                                <li><a href="{{ route('flash-deal') }}">{{ __('user.Flash Deal') }}</a></li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}

    <section class="wsus__mobile_section d-block d-md-none">
        <div class="row">
            <div class="col-3">
                <a href="{{ route('home') }}" class="wsus__mobile_bottom_menu">
                    <i class="far fa-home"></i>
                    <span>{{ __('user.Home') }}</span>
                </a>
            </div>
            <div class="col-3">
                <div class="wsus__mobile_bottom_menu wsus__mobile_menu_bottom">
                    <i class="far fa-th-large"></i>
                    <span>{{ __('user.Categories') }}</span>
                </div>
            </div>
            <div class="col-3">
                <a href="{{ route('cart') }}" class="wsus__mobile_bottom_menu">
                    <i class="far fa-shopping-cart"></i>
                    <span>{{ __('user.Cart') }}</span>
                </a>
            </div>
            <div class="col-3">
                @auth
                    <a href="{{ route('user.dashboard') }}" class="wsus__mobile_bottom_menu"></a>
                    <i class="far fa-user-alt"></i>
                    <span>{{ __('user.Account') }}</span>
                    </a>
                @else
                    <a href="{{ route('login') }}" class="wsus__mobile_bottom_menu">
                        <i class="far fa-user-alt"></i>
                        <span>{{ __('user.Login') }}</span>
                    </a>
                @endauth
            </div>
        </div>
    </section>
    <!--============================
        MOBILE MENU END
    ==============================-->

    <!--============================
        MOBILE MENU START
    ==============================-->
    <section id="wsus__mobile_menu">
        <span class="wsus__mobile_menu_close"><i class="fal fa-times"></i></span>
        <ul class="wsus__mobile_menu_header_icon d-inline-flex">

            <!-- <li><a href="wishlist.html"><i class="far fa-heart"></i> <span>2</span></a></li>

            <li><a href="compare.html"><i class="far fa-random"></i> </i><span>3</span></a></li> -->
        </ul>
        <!-- <form>
            <input type="text" placeholder="Search">
            <button type="submit"><i class="far fa-search"></i></button>
        </form> -->

        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home"
                    role="tab" aria-controls="pills-home" aria-selected="true">Categories</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile"
                    role="tab" aria-controls="pills-profile" aria-selected="false">main menu</button>
            </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                <div class="wsus__mobile_menu_main_menu">
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        @include('website.partials.mobile-menu-item')
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                <div class="wsus__mobile_menu_main_menu">
                    <div class="accordion accordion-flush" id="accordionFlushExample2">
                        <ul>
                            <li><a href="{{ route('product') }}">{{ __('user.Shop') }}</a></li>
                            <li><a href="{{ route('brand') }}">{{ __('Brands') }}</a></li>
                            <li><a href="">{{ __('Gift Corner') }}</a></li>
                            <li><a href="">{{ __('Wholesale') }}</a></li>
                            <li><a href="">{{ __('Pre-Order') }}</a></li>
                            <li><a href="">{{ __('Campaign') }}</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
        MOBILE MENU END
    ==============================-->


    <!--==========================
           POP UP START
    ===========================-->

    @if ($announcementModal->status)
        <section id="wsus__pop_up">
            <div class="wsus__pop_up_center" style="background-image:url({{ asset($announcementModal->image) }})">
                <div class="wsus__pop_up_text">
                    <span id="cross"><i class="fas fa-times"></i></span>
                    <h5>{{ $announcementModal->title }}</h5>
                    <p>{{ $announcementModal->description }}</p>
                    <form id="modalSubscribeForm">
                        @csrf
                        <input type="email" name="email" placeholder="{{ __('user.Your Email') }}"
                            class="news_input">
                        <button type="submit" class="common_btn" id="modalSubscribeBtn"><i
                                id="modal-subscribe-spinner"
                                class="loading-icon fa fa-spin fa-spinner mr-3 d-none"></i>
                            {{ __('user.Subscribe') }}</button>
                        <div class="wsus__pop_up_check_box"></div>
                </div>
                </form>
                <div class="form-check">
                    <input type="hidden" id="announcement_expired_date"
                        value="{{ $announcementModal->expired_date }}">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault11">
                    <label class="form-check-label" for="flexCheckDefault11">
                        {{ $announcementModal->footer_text }}
                    </label>
                </div>
            </div>
            </div>
        </section>

        <script>
            let isannouncementModal = sessionStorage.getItem("announcementModal");
            let expirationDate = sessionStorage.getItem("announcementModalExpiration");
            if (isannouncementModal && expirationDate) {
                let today = new Date();
                today = today.toISOString().slice(0, 10)
                if (today < expirationDate) {
                    $("#wsus__pop_up").addClass("d-none");
                }
            }
        </script>
    @endif
    <!--==========================
           POP UP END
    ===========================-->
    @yield('public-content')

    @php
        $footer = App\Models\Footer::first();
        $links = App\Models\FooterSocialLink::all();
        $footerLinks = App\Models\FooterLink::all();
    @endphp

    <!--============================
        FOOTER PART START
    ==============================-->
    <footer style="margin-top: 30px">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-xl-3 col-sm-6 col-md-6 col-lg-3 col-6">
                    <div class="wsus__footer_content">
                        <a href="{{ url('/') }}"><img src="{{ asset($setting->logo) }}" alt="Oshin_logo"></a>
                        <div class="footer_qr-code">
                            <img src="{{ asset('user/images/icons/qr-code.png') }}" alt="Oshin_QR-Code">
                        </div>
                        <a class="action" href="callto:{{ $footer->phone }}"><i class="fas fa-phone-alt"></i>
                            {{ $footer->phone }}</a>
                        <a class="action" href="mailto:{{ $footer->email }}"><i class="far fa-envelope"></i>
                            {{ $footer->email }}</a>
                        <p><i class="fal fa-map-marker-alt"></i> {{ $footer->address }}</p>
                        <ul class="wsus__footer_social">
                            @foreach ($links as $link)
                                <li><a class="facebook" href="{{ $link->link }}"><i
                                            class="{{ $link->icon }}"></i></a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-xl-2 col-sm-6 col-md-6 col-lg-2 col-6">
                    <div class="wsus__footer_content">

                        <h5>{{ $footer->first_column }}</h5>
                        <ul class="wsus__footer_menu">
                            @foreach ($footerLinks->where('column', 1) as $footerLink)
                                <li><a href="{{ url($footerLink->link) }}"><i class="fas fa-caret-right"></i>
                                        {{ $footerLink->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-xl-2 col-sm-6 col-md-6 col-lg-2 col-6">
                    <div class="wsus__footer_content">
                        <h5>{{ $footer->second_column }}</h5>
                        <ul class="wsus__footer_menu">
                            @foreach ($footerLinks->where('column', 2) as $footerLink)
                                <li><a href="{{ url($footerLink->link) }}"><i class="fas fa-caret-right"></i>
                                        {{ $footerLink->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-xl-2 col-sm-6 col-md-6 col-lg-3 col-6">
                    <div class="wsus__footer_content">
                        <h5>{{ $footer->third_column }}</h5>
                        <ul class="wsus__footer_menu">
                            @foreach ($footerLinks->where('column', 3) as $footerLink)
                                <li><a href="{{ url($footerLink->link) }}"><i class="fas fa-caret-right"></i>
                                        {{ $footerLink->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="wsus__footer_bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div style="width: 100%">
                            <img class="img-fluid" src="{{ asset('user/images/icons/aamarPay_Footer-Logo.png') }}"
                                alt="aamarPay_Footer-Logo">
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="wsus__copyright">
                            <p>{{ $footer->copyright }}</p>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="wsus_development">
                            <p>Design & Development by <a href="innvatech.com"> Innvatech</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!--============================
        FOOTER PART END
    ==============================-->


    <!--============================
        SCROLL BUTTON START
    ==============================-->
    <div class="wsus__scroll_btn">
        <i class="fas fa-chevron-up"></i>
    </div>
    <!--============================
        SCROLL BUTTON  END
    ==============================-->


    <!-- Facebook Messenger Chat Plugin -->
    <div id="fb-root"></div>

    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v15.0">
    </script>
    <div class="fb-customerchat" attribution="setup_tool" page_id="61557679401681" theme_color="#0084ff"
        logged_in_greeting="Hi! How can we help you?" logged_out_greeting="Hi! Please log in to chat with us.">
    </div>
    {{-- <script>
        window.fbAsyncInit = function() {
            FB.init({
                xfbml: true,
                version: 'v13.0'
            });
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <!-- Your customer chat code -->
    <div class="fb-customerchat" attribution="setup_tool" page_id="{{ $facebookPixel->app_id }}"
        theme_color="#0084ff" logged_in_greeting="Hi! How can we help you?"
        logged_out_greeting="Hi! How can we help you?">
    </div> --}}

    @php
        $isAuth = false;
        if (Auth::check()) {
            $isAuth = true;
        }
        $shop_page = App\Models\ShopPage::first();
        $max_val = $shop_page->filter_price_range;
        $currencySetting = $setting;
        $currency_icon = currency_icon();
        $tawk_setting = App\Models\TawkChat::first();
        $cookie_consent = App\Models\CookieConsent::first();
    @endphp
    <script>
        let filter_max_val = "{{ $max_val }}";
        let currency_icon = "{{ $currency_icon }}";
        let themeColor = "{{ $setting->theme_one }}";
    </script>

    @if ($tawk_setting->status == 1)
        <script type="text/javascript">
            var Tawk_API = Tawk_API || {},
                Tawk_LoadStart = new Date();
            (function() {
                var s1 = document.createElement("script"),
                    s0 = document.getElementsByTagName("script")[0];
                s1.async = true;
                s1.src = '{{ $tawk_setting->chat_link }}';
                s1.charset = 'UTF-8';
                s1.setAttribute('crossorigin', '*');
                s0.parentNode.insertBefore(s1, s0);
            })();
        </script>
    @endif

    <!--bootstrap js-->
    <script src="{{ asset('user/js/bootstrap.bundle.min.js') }}"></script>
    <!--font-awesome js-->
    <script src="{{ asset('user/js/Font-Awesome.js') }}"></script>
    <!--select2 js-->
    <script src="{{ asset('user/js/select2.min.js') }}"></script>
    <!--slick slider js-->
    <script src="{{ asset('user/js/slick.min.js') }}"></script>
    <!--simplyCountdown js-->
    <script src="{{ asset('user/js/simplyCountdown.js') }}"></script>
    <!--product zoomer js-->
    <script src="{{ asset('user/js/jquery.exzoom.js') }}"></script>
    <!--nice-number js-->
    <script src="{{ asset('user/js/jquery.nice-number.min.js') }}"></script>
    <!--counter js-->
    <script src="{{ asset('user/js/jquery.waypoints.min.js') }}"></script>
    <script src="{{ asset('user/js/jquery.countup.min.js') }}"></script>
    <!--calender js-->
    <script src="{{ asset('user/js/jquery.calendar.js') }}"></script>
    <!--add row js-->
    <script src="{{ asset('user/js/add_row_custon.js') }}"></script>
    <!--multiple-image-video js-->
    <script src="{{ asset('user/js/multiple-image-video.js') }}"></script>
    <!--sticky sidebar js-->
    <script src="{{ asset('user/js/sticky_sidebar.js') }}"></script>
    <!--price ranger js-->
    <script src="{{ asset('user/js/ranger_jquery-ui.min.js') }}"></script>
    <script src="{{ asset('user/js/ranger_slider.js') }}"></script>
    <!--isotope js-->
    <script src="{{ asset('user/js/isotope.pkgd.min.js') }}"></script>
    <!--venobox js-->
    <script src="{{ asset('user/js/venobox.min.js') }}"></script>
    <!--classycountdown js-->
    <script src="{{ asset('user/js/jquery.classycountdown.js') }}"></script>

    <!--main/custom js-->
    <script src="{{ asset('user/js/main.js') }}"></script>

    <script src="{{ asset('toastr/toastr.min.js') }}"></script>

    <script>
        @if (Session::has('messege'))
            var type = "{{ Session::get('alert-type', 'info') }}"
            switch (type) {
                case 'info':
                    toastr.info("{{ Session::get('messege') }}");
                    break;
                case 'success':
                    toastr.success("{{ Session::get('messege') }}");
                    break;
                case 'warning':
                    toastr.warning("{{ Session::get('messege') }}");
                    break;
                case 'error':
                    toastr.error("{{ Session::get('messege') }}");
                    break;
            }
        @endif
    </script>

    @if ($errors->any())
        @foreach ($errors->all() as $error)
            <script>
                toastr.error('{{ $error }}');
            </script>
        @endforeach
    @endif



    <script>
        (function($) {
            "use strict";
            $(document).ready(function() {
                $(".click_first_cat").click();
                $(".click_featured_product").click();

                $("#modalSubscribeForm").on('submit', function(e) {
                    e.preventDefault();


                    $("#modal-subscribe-spinner").removeClass('d-none')
                    $("#modalSubscribeBtn").addClass('after_subscribe')
                    $("#modalSubscribeBtn").attr('disabled', true);

                    $.ajax({
                        type: 'POST',
                        data: $('#modalSubscribeForm').serialize(),
                        url: "{{ route('subscribe-request') }}",
                        success: function(response) {
                            if (response.status == 1) {
                                toastr.success(response.message);
                                $("#modal-subscribe-spinner").addClass('d-none')
                                $("#modalSubscribeBtn").removeClass('after_subscribe')
                                $("#modalSubscribeBtn").attr('disabled', false);
                                let expiredDate = $("#announcement_expired_date").val();
                                expiredDate = expiredDate * 1;
                                let date = new Date();
                                date.setDate(date.getDate() + expiredDate);
                                let nextDate = date.toISOString().slice(0, 10);
                                sessionStorage.setItem("announcementModal", "yes");
                                sessionStorage.setItem("announcementModalExpiration",
                                    nextDate);
                                $("#cross").click();

                            }

                            if (response.status == 0) {
                                toastr.error(response.message);
                                $("#modal-subscribe-spinner").addClass('d-none')
                                $("#modalSubscribeBtn").removeClass('after_subscribe')
                                $("#modalSubscribeBtn").attr('disabled', false);
                            }
                        },
                        error: function(err) {
                            toastr.error('Something went wrong');
                            $("#modal-subscribe-spinner").addClass('d-none')
                            $("#modalSubscribeBtn").removeClass('after_subscribe')
                            $("#modalSubscribeBtn").attr('disabled', false);
                        }
                    });
                })

                $("#flexCheckDefault11").on("click", function() {
                    let expiredDate = $("#announcement_expired_date").val();
                    expiredDate = expiredDate * 1;
                    let date = new Date();
                    date.setDate(date.getDate() + expiredDate);
                    let nextDate = date.toISOString().slice(0, 10);
                    sessionStorage.setItem("announcementModal", "yes");
                    sessionStorage.setItem("announcementModalExpiration", nextDate);
                    $("#cross").click();
                })

                $("#subscriberForm").on('submit', function(e) {
                    e.preventDefault();


                    $("#subscribe-spinner").removeClass('d-none')
                    $("#SubscribeBtn").addClass('after_subscribe')
                    $("#SubscribeBtn").attr('disabled', true);

                    $.ajax({
                        type: 'POST',
                        data: $('#subscriberForm').serialize(),
                        url: "{{ route('subscribe-request') }}",
                        success: function(response) {
                            if (response.status == 1) {
                                toastr.success(response.message);
                                $("#subscribe-spinner").addClass('d-none')
                                $("#SubscribeBtn").removeClass('after_subscribe')
                                $("#SubscribeBtn").attr('disabled', false);
                                $("#subscriberForm").trigger("reset");
                            }

                            if (response.status == 0) {
                                toastr.error(response.message);
                                $("#subscribe-spinner").addClass('d-none')
                                $("#SubscribeBtn").removeClass('after_subscribe')
                                $("#SubscribeBtn").attr('disabled', false);
                            }
                        },
                        error: function(err) {
                            toastr.error('Something went wrong');
                            $("#subscribe-spinner").addClass('d-none')
                            $("#SubscribeBtn").removeClass('after_subscribe')
                            $("#SubscribeBtn").attr('disabled', false);
                        }
                    });
                })

                $(".productModalVariant").on("change", function() {
                    let id = $(this).data("product");
                    calculateProductModalPrice(id);

                })

                $(document).on('click', '.variant', function() {
                    var itemId = $(this).data('id');
                    const parentVar = $(this).data('parent-variant');
                    if ($(this).children('i').length) {
                        $('.variant').each(function(index, item) {
                            $(item).children('i').css('opacity', '0');
                            if ($(item).children('i').length) {
                                $(item).removeClass('select-variant');
                            }
                        });
                        // Set opacity of 'i' elements of the clicked element to 1
                        $(this).children('i').css('opacity', '1');
                        $(this).addClass('select-variant');
                    } else {
                        $('.variant').each(function(index, item) {
                            if (!$(item).children('i').length && $(item).data(
                                    'parent-variant') == parentVar) {
                                $(item).removeClass('active-variant');
                                $(item).removeClass('select-variant');
                            }
                        });
                        $(this).addClass('active-variant');
                        $(this).addClass('select-variant');
                    }

                    const variantItem = $(this).parents('.parent-variant').siblings('[name="items"]')
                    let ItemsParentVariant = $(variantItem).data('parent-variant');
                    ItemsParentVariant = ItemsParentVariant.split(',');
                    let ItemsVariant = $(variantItem).val().split(',');
                    let selectedItems = {};
                    for (let i = 0; i < ItemsParentVariant.length; i++) {
                        selectedItems[ItemsParentVariant[i]] = ItemsVariant[i];
                    }

                    selectedItems[parentVar] = itemId;


                    variantItem.val(Object.values(selectedItems).join(','));
                    variantItem.data('parent-variant', Object.keys(selectedItems).join(','));
                })
            });
        })(jQuery);

        function addToWishlist(id) {


            let isAuth = "{{ $isAuth }}";
            if (!isAuth) {
                toastr.error("{{ __('user.Please Login First') }}");
                return;
            }
            $.ajax({
                type: 'get',
                url: "{{ url('user/add-to-wishlist/') }}" + "/" + id,
                success: function(response) {
                    if (response.status == 1) {
                        toastr.success(response.message)

                        let currentQty = $("#wishlistQty").text();
                        currentQty = currentQty * 1 + 1 * 1;
                        $("#wishlistQty").text(currentQty);

                        let mobileMenuCurrentQty = $("#mobileMenuwishlistQty").text();
                        mobileMenuCurrentQty = mobileMenuCurrentQty * 1 + 1 * 1;
                        $("#mobileMenuwishlistQty").text(mobileMenuCurrentQty);
                    }
                    if (response.status == 0) {
                        toastr.error(response.message)
                    }
                },
                error: function(response) {
                    alert('error');
                }
            });
        }


        function calculateProductModalPrice(productId) {
            $.ajax({
                type: 'get',
                data: $('#productModalFormId-' + productId).serialize(),
                url: "{{ route('calculate-product-price') }}",
                success: function(response) {
                    let qty = $("#productModalQty-" + productId).val();
                    let price = response.productPrice * qty;
                    price = price.toFixed(2);
                    $("#productModalPrice-" + productId).text(price);
                    $("#mainProductModalPrice-" + productId).text(price);
                },
                error: function(err) {
                    alert('error')
                }
            });

        }

        function productModalIncrement(id, current_stock) {
            let qty = $("#productModalQty-" + id).val();
            if (parseInt(qty) < parseInt(current_stock)) {
                qty = qty * 1 + 1 * 1;
                $("#productModalQty-" + id).val(qty);
                calculateProductModalPrice(id)
            }

        }

        function productModalDecrement(id) {
            let qty = $("#productModalQty-" + id).val();
            if (qty > 1) {
                qty = qty - 1;
                $("#productModalQty-" + id).val(qty);
                calculateProductModalPrice(id)
            }

        }

        function addToCartMainProduct(productId) {
            addToCartInProductModal(productId);
        }


        function addToCartInProductModal(productId) {
            $.ajax({
                type: 'get',
                data: $('#productModalFormId-' + productId).serialize(),
                url: "{{ route('add-to-cart') }}",
                success: function(response) {
                    if (response.status == 0) {
                        toastr.error(response.message)
                    }
                    if (response.status == 1) {
                        toastr.success(response.message)
                        $.ajax({
                            type: 'get',
                            url: "{{ route('load-sidebar-cart') }}",
                            success: function(response) {
                                $("#load_sidebar_cart").html(response)
                                $.ajax({
                                    type: 'get',
                                    url: "{{ route('get-cart-qty') }}",
                                    success: function(response) {
                                        $("#cartQty").text(response.qty);
                                        $("#productModalView-" + productId).modal(
                                            'hide');
                                    },
                                });
                            },
                        });
                    }
                },
                error: function(response) {

                }
            });
        }

        function addToBuyNow(id) {
            $.ajax({
                type: 'get',
                data: $('#productModalFormId-' + id).serialize(),
                url: "{{ route('add-to-cart') }}",
                success: function(response) {
                    if (response.status == 0) {
                        toastr.error(response.message)
                    }
                    if (response.status == 1) {
                        window.location.href = "{{ route('cart') }}";
                        toastr.success(response.message)
                        $.ajax({
                            type: 'get',
                            url: "{{ route('load-sidebar-cart') }}",
                            success: function(response) {
                                $("#load_sidebar_cart").html(response)
                                $.ajax({
                                    type: 'get',
                                    url: "{{ route('get-cart-qty') }}",
                                    success: function(response) {
                                        $("#cartQty").text(response.qty);
                                    },
                                });
                            },
                        });
                    }
                },
                error: function(response) {

                }
            });
        }

        function sidebarCartItemRemove(id) {
            $.ajax({
                type: 'get',
                url: "{{ url('sidebar-cart-item-remove') }}" + "/" + id,
                success: function(response) {
                    toastr.success(response.message)
                    let ifCheckoutPage =
                        "{{ Route::is('user.checkout.payment') || Route::is('user.checkout.checkout') || Route::is('user.checkout.billing-address') ? 'yes' : 'no' }}";
                    if (ifCheckoutPage == 'yes') {
                        window.location.reload();
                    }
                    $.ajax({
                        type: 'get',
                        url: "{{ route('load-sidebar-cart') }}",
                        success: function(response) {
                            $("#load_sidebar_cart").html(response)
                            $.ajax({
                                type: 'get',
                                url: "{{ route('get-cart-qty') }}",
                                success: function(response) {
                                    $("#cartQty").text(response.qty);
                                },
                            });
                        },
                    });

                    $.ajax({
                        type: 'get',
                        url: "{{ route('load-main-cart') }}",
                        success: function(response) {
                            $("#CartResponse").html(response)
                        },
                    });
                },
            });

        }

        function addToCompare(id) {
            $.ajax({
                type: 'get',
                url: "{{ url('add-to-compare') }}" + "/" + id,
                success: function(response) {
                    if (response.status == 1) {
                        toastr.success(response.message)
                        let currentQty = $("#compareQty").text();
                        currentQty = currentQty * 1 + 1 * 1;
                        $("#compareQty").text(currentQty);

                        let mobileMenuCurrentQty = $("#mobileMenuCompareQty").text();
                        mobileMenuCurrentQty = mobileMenuCurrentQty * 1 + 1 * 1;
                        $("#mobileMenuCompareQty").text(mobileMenuCurrentQty);

                    } else {
                        toastr.error(response.message)
                    }
                },
            });

        }
    </script>

    @stack('js')
</body>

</html>
