@extends('layout')
@section('title')
    <title>{{ $seoSetting->seo_title }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ $seoSetting->seo_description }}">
@endsection

@section('public-content')
    {{-- <!--============================
        BANNER PART START
    ==============================--> --}}
    @php
        $sliderVisibility = $visibilities->where('id', 1)->first();
    @endphp
    @if ($sliderVisibility->status == 1)
        <section id="wsus__banner">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2 col-md-2">
                        <div class="innva__cate_area">
                            <div class="relative_contect d-flex">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-10">
                        <div class="wsus__banner_content">
                            <div class="row banner_slider">
                                @foreach ($sliders->take($sliderVisibility->qty) as $slider)
                                    <div class="col-xl-12">
                                        <div class="wsus__single_slider"
                                            style="background: url({{ asset($slider->image) }});">
                                            <div class="wsus__single_slider_text">
                                                <h1>{!! nl2br($slider->title) !!}</h1>
                                                <h6>{!! nl2br($slider->description) !!}</h6>
                                                <a class="common_btn"
                                                    href="{{ $slider->link }}">{{ __('user.shop now') }}</a>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    {{-- <!--============================
        BANNER PART END
    ==============================--> --}}

    {{-- <!--============================
        BRAND SLIDER START
    ==============================--> --}}
    {{-- @php
        $brandVisibility = $visibilities->where('id', 2)->first();
    @endphp --}}
    {{-- @if ($brandVisibility->status == 1)
        <section id="wsus__brand_sleder">
            <div class="container">
                <div class="brand_border">
                    <div class="row brand_slider">
                        @foreach ($brands->take($brandVisibility->qty) as $brand)
                            <div class="col-xl-2">
                                <div class="wsus__brand_logo">
                                    <a href="{{ route('product', ['brand' => $brand->slug]) }}"><img
                                            src="{{ asset($brand->logo) }}" alt="brand" class="img-fluid w-100"></a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
    @endif --}}
    {{-- <!--============================
        BRAND SLIDER END
    ==============================--> --}}

    {{-- <!-- =========================
        HOME FEATURED START
    ========================== --> --}}
    <section class="section_separate">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-12">
                    <div class="wsus__features_section">
                        <a href="brands.html">
                            <div class="wsus__section_content">
                                <img src="{{ asset('user/images/features_service/brand.png') }}" alt=""
                                    class="img-fluid">
                                <h2>Brands</h2>
                            </div>
                        </a>
                        <a href="#">
                            <div class="wsus__section_content">
                                <img src="{{ asset('user/images/features_service/surprise.png') }}" alt=""
                                    class="img-fluid">
                                <h2>Gift Corner</h2>
                            </div>
                        </a>
                        <a href="#">
                            <div class="wsus__section_content">
                                <img src="{{ asset('user/images/features_service/supply-chain.png') }}" alt=""
                                    class="img-fluid">
                                <h2>Wholesale</h2>
                            </div>
                        </a>
                        <a href="#">
                            <div class="wsus__section_content">
                                <img src="{{ asset('user/images/features_service/order.png') }}" alt=""
                                    class="img-fluid">
                                <h2>Pre-Order</h2>
                            </div>
                        </a>
                        <a href="#">
                            <div class="wsus__section_content">
                                <img src="{{ asset('user/images/features_service/marketing.png') }}" alt=""
                                    class="img-fluid">
                                <h2>Campaigns</h2>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- <!-- =====================
        HOME FEATURED END
    ========================= --> --}}

    {{-- <!--============================
        HOME SERVICES START
    ==============================--> --}}
    <section id="wsus__home_services">
        <div class="container">
            <div class="wsus__home_services_bg">
                <div class="row">
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="{{ asset('user/images/icons/verified.png') }}" alt="" class="img-fluid">
                            <h5>Safe Payments</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="{{ asset('user/images/icons/shipped.png') }}" alt="" class="img-fluid">
                            <h5>Nationalwide Delevery</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="{{ asset('user/images/icons/product-return.png') }}" alt=""
                                class="img-fluid">
                            <h5>Free & Easy Return</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="{{ asset('user/images/icons/tag.png') }}" alt="" class="img-fluid">
                            <h5>Best Price Guaranteed</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="{{ asset('user/images/icons/high-quality.png') }}" alt="" class="img-fluid">
                            <h5>100% Authentic Products</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="{{ asset('user/images/icons/verify.png') }}" alt="" class="img-fluid">
                            <h5>Oshin verified</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- <!--============================
        HOME SERVICES END
    ==============================--> --}}

    {{-- <!--============================
        FLASH SELL START
    ==============================--> --}}
    @php
        $campaignVisibility = $visibilities->where('id', 3)->first();
    @endphp
    @if ($campaignVisibility->status == 1)
        <section id="wsus__flash_sell" class="wsus__flash_sell_2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        @if ($campaign)
                            @php
                                $end = strtotime($campaign->end_date);
                                $current_time = Carbon\Carbon::now()->timestamp;
                                $capmaign_time = $end - $current_time;

                            @endphp
                            <script>
                                var capmaign_time = {{ $capmaign_time }};
                            </script>

                            <script>
                                var campaign_end_year = {{ date('Y', strtotime($campaign->end_date)) }}
                                var campaign_end_month = {{ date('m', strtotime($campaign->end_date)) }}
                                var campaign_end_date = {{ date('d', strtotime($campaign->end_date)) }}
                                var campaign_hour = {{ date('H', strtotime($campaign->end_date)) }}
                                var campaign_min = {{ date('i', strtotime($campaign->end_date)) }}
                                var campaign_sec = {{ date('s', strtotime($campaign->end_date)) }}
                            </script>

                            <div class="offer_time"
                                style="background: url('{{ asset('user/images/flash_sell_bg.jpg') }}')">
                                <div class="wsus__flash_coundown">
                                    <span class=" end_text">{{ $campaign->name }}</span>
                                    <div class="simply-countdown campaign-details"></div>
                                    <a class="common_btn"
                                        href="{{ route('campaign-detail', $campaign->slug) }}">{{ __('user.see more') }}
                                        <i class="fas fa-caret-right"></i></a>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
                <div class="row flash_sell_slider">
                    @if ($campaignProducts != null)
                        @foreach ($campaignProducts->take($campaignVisibility->qty) as $campaignProduct)
                            <div class="col-xl-2 col-sm-6 col-lg-2">
                                @include('website.product-cart', ['product' => $campaignProduct->product])
                            </div>
                        @endforeach
                    @endif
                </div>

                @if ($campaignProducts != null)
                    @foreach ($campaignProducts->take($campaignVisibility->qty) as $campaignProduct)
                        @include('website.product-modal', ['product' => $campaignProduct->product])
                    @endforeach
                @endif
            </div>
        </section>
    @endif
    {{-- <!--============================
        FLASH SELL END
    ==============================--> --}}


    {{-- <!--============================
        MONTHLY TOP PRODUCT START
    ==============================--> --}}
    @php
        $popularCategoryVisible = $visibilities->where('id', 4)->first();
    @endphp
    @if ($popularCategoryVisible->status == 1)
        <section id="wsus__monthly_top" class="wsus__monthly_top_2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12">
                        <div class="wsus__monthly_top_banner">
                            <div class="wsus__monthly_top_banner_img">
                                <img src="{{ asset($oneColumnBanner->image) }}" alt="img" class="img-fluid w-100">
                                <span></span>
                            </div>
                            <div class="wsus__monthly_top_banner_text">
                                <h3>{{ $oneColumnBanner->title }}</h3>
                                <H6>{{ $oneColumnBanner->description }}</H6>
                                <a class="shop_btn" href="{{ $oneColumnBanner->link }}">{{ __('user.shop now') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <div class="wsus__section_header for_md">
                            <h3>Top Categories</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12 col-lg-12">
                        <div class="row grid">
                            @foreach ($topCategories as $category)
                                <div class="col-xl-2 col-sm-4 col-4">
                                    <a class="wsus__hot_deals__single"
                                        href="{{ route('product', ['category' => $category->slug]) }}">
                                        <div class="wsus__hot_deals__single_img">
                                            <img src="{{ asset($category->image) }}" alt="bag"
                                                class="img-fluid w-100">
                                        </div>
                                        <div class="wsus__hot_deals__single_text">
                                            <h5>{{ $category->name }}</h5>
                                        </div>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif


    {{-- <!--============================
        BRAND SLIDER START
    ==============================--> --}}
    @php
        $brandVisibility = $visibilities->where('id', 2)->first();
    @endphp
    @if ($brandVisibility->status == 1)
        <section id="wsus__brand_sleder" class="brand_slider_2">
            <div class="container">
                <div class="brand_border">
                    <div class="row brand_slider">
                        @foreach ($brands->take($brandVisibility->qty) as $brand)
                            <div class="col-xl-2">
                                <div class="wsus__brand_logo">
                                    <a href="{{ route('product', ['brand' => $brand->slug]) }}"><img
                                            src="{{ asset($brand->logo) }}" alt="brand" class="img-fluid w-100"></a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
    @endif
    {{-- <!--============================
        BRAND SLIDER END
    ==============================--> --}}

    {{-- <!--============================
        MONTHLY TOP PRODUCT END
    ==============================--> --}}


    {{-- <!--============================
        SINGLE BANNER START
    ==============================--> --}}
    @php
        $bannerVisibility = $visibilities->where('id', 5)->first();
    @endphp
    @if ($bannerVisibility->status == 1)
        <section id="wsus__single_banner">
            <div class="container">
                <div class="row">
                    @php
                        $bannerOne = $banners->where('id', 3)->first();
                        $bannerTwo = $banners->where('id', 4)->first();
                    @endphp
                    <div class="col-xl-6 col-lg-6">
                        <div class="wsus__single_banner_content">
                            <div class="wsus__single_banner_img">
                                <img src="{{ asset($bannerOne->image) }}" alt="banner" class="img-fluid w-100">
                            </div>
                            <div class="wsus__single_banner_text">
                                <h6>{{ $bannerOne->description }}</h6>
                                <h3>{{ $bannerOne->title }}</h3>
                                <a class="shop_btn" href="{{ $bannerOne->link }}">{{ __('user.shop now') }}</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="wsus__single_banner_content">
                            <div class="wsus__single_banner_img">
                                <img src="{{ asset($bannerTwo->image) }}" alt="banner" class="img-fluid w-100">
                            </div>
                            <div class="wsus__single_banner_text">
                                <h6>{{ $bannerTwo->description }}</h6>
                                <h3>{{ $bannerTwo->title }}</h3>
                                <a class="shop_btn" href="{{ $bannerTwo->link }}">{{ __('user.shop now') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    {{-- <!--============================
        SINGLE BANNER END
    ==============================--> --}}


    {{-- <!--============================
            HOT DEALS START
    ==============================--> --}}


    <section id="wsus__hot_deals" class="wsus__hot_deals_2">
        <div class="container">
            @php
                $flashDealVisibility = $visibilities->where('id', 6)->first();
                $productIds = [];
                $productYears = [];
                $productMonths = [];
                $productDays = [];

                foreach ($flashDealProducts as $key => $flashDealProduct) {
                    $productIds[] = $flashDealProduct->id;
                    $productYears[] = date('Y', strtotime($flashDealProduct->flash_deal_date));
                    $productMonths[] = date('m', strtotime($flashDealProduct->flash_deal_date));
                    $productDays[] = date('d', strtotime($flashDealProduct->flash_deal_date));
                }

            @endphp
            <script>
                var productIds = <?= json_encode($productIds) ?>;
                var productYears = <?= json_encode($productYears) ?>;
                var productMonths = <?= json_encode($productMonths) ?>;
                var productDays = <?= json_encode($productDays) ?>;
            </script>

            @if ($flashDealVisibility->status == 1)
                <div class="row">
                    <div class="col-xl-12">
                        <div class="wsus__section_header">
                            <h3>{{ __('user.hot deals of the day') }}</h3>
                        </div>
                    </div>
                </div>
                <div class="row hot_deals_slider_2">
                    @foreach ($flashDealProducts->take($flashDealVisibility->qty) as $flashDealProduct)
                        <div class="col-xl-3 col-lg-6 col-6">
                            <div class="wsus__hot_deals_offer">
                                <div class="wsus__hot_deals_img">
                                    <img src="{{ $flashDealProduct->thumb_image }}" alt="mobile"
                                        class="img-fluid w-100">
                                </div>
                                <div class="wsus__hot_deals_text">
                                    <a class="wsus__hot_title"
                                        href="{{ route('product-detail', $flashDealProduct->slug) }}">{{ $flashDealProduct->short_name }}</a>
                                    <p class="wsus__pro_rating">
                                        @for ($i = 1; $i <= 5; $i++)
                                            @if ($i <= $flashDealProduct->avgReview)
                                                <i class="fas fa-star"></i>
                                            @elseif($i - $flashDealProduct->avgReview == 0.5)
                                                <i class="fas fa-star-half-alt"></i>
                                            @else
                                                <i class="far fa-star"></i>
                                            @endif
                                        @endfor
                                        <span>({{ $flashDealProduct->totalReviews() }} {{ __('user.review') }})</span>
                                    </p>

                                    @php

                                        $variantPrice = 0;
                                        $variants = $flashDealProduct->variants->where('status', 1);
                                        if ($variants->count() != 0) {
                                            foreach ($variants as $variants_key => $variant) {
                                                if ($variant->variantItems->where('status', 1)->count() != 0) {
                                                    $item = $variant->variantItems->where('is_default', 1)->first();
                                                    if ($item) {
                                                        $variantPrice += $item->price;
                                                    }
                                                }
                                            }
                                        }
                                        $isCampaign = false;
                                        $today = date('Y-m-d H:i:s');

                                        $campaign = App\Models\CampaignProduct::where([
                                            'status' => 1,
                                            'product_id' => $flashDealProduct->id,
                                        ])->first();
                                        if ($campaign) {
                                            $campaign = $campaign->campaign;
                                            if ($campaign->start_date <= $today && $today <= $campaign->end_date) {
                                                $isCampaign = true;
                                            }
                                            $campaignOffer = $campaign->offer;
                                            $productPrice = $flashDealProduct->price;
                                            $campaignOfferPrice = ($campaignOffer / 100) * $productPrice;
                                            $totalPrice = $productPrice;
                                            $campaignOfferPrice = $totalPrice - $campaignOfferPrice;
                                        }
                                    @endphp
                                    @if ($isCampaign)
                                        <p class="wsus__hot_deals_proce">
                                            {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $campaignOfferPrice + $variantPrice) }}
                                            <del>{{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice) }}</del>
                                        </p>
                                    @else
                                        @if ($flashDealProduct->offer_price == null)
                                            <p class="wsus__hot_deals_proce">
                                                {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice + $variantPrice) }}
                                            </p>
                                        @else
                                            <p class="wsus__hot_deals_proce">
                                                {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $flashDealProduct->offer_price + $variantPrice) }}
                                                <del>{{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice) }}</del>
                                            </p>
                                        @endif
                                    @endif
                                    <ul>
                                        <a class="add_cart" onclick="addToCartMainProduct('{{ $flashDealProduct->id }}')"
                                            href="javascript:;"><i class="far fa-shopping-basket"></i>
                                            {{ __('user.ADD TO CART') }}</a>
                                        <li><a href="javascript:;"
                                                onclick="addToWishlist('{{ $flashDealProduct->id }}')"><i
                                                    class="far fa-heart"></i></a></li>
                                        <li><a href="javascript:;"
                                                onclick="addToCompare('{{ $flashDealProduct->id }}')"><i
                                                    class="far fa-random"></i></a></li>
                                    </ul>
                                    <div class="simply-countdown flash-deal-product-{{ $flashDealProduct->id }}"></div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </section>

    @php
        $productHighlightVisibility = $visibilities->where('id', 7)->first();
    @endphp
    @if ($productHighlightVisibility->status == 1)
        <section id="wsus__electronic">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="wsus__section_header">
                            <h3>{{ __('user.Sale Products') }}</h3>
                            <a class="see_btn" href="{{ route('product', ['type' => 'new']) }}">see more <i
                                    class="fas fa-caret-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach ($newProducts as $product)
                        <div class="col-xl-2 col-sm-6 col-lg-2 col-6">
                            @include('website.product-cart')
                        </div>
                    @endforeach
                </div>
                @foreach ($newProducts as $product)
                    @include('website.product-modal')
                @endforeach
            </div>
        </section>


        {{-- <!--============================
            Featured Products START
        ==============================--> --}}
        <section id="wsus__electronic2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="wsus__section_header">
                            <h3>Featured Products</h3>
                            <a class="see_btn" href="{{ route('product', ['type' => 'featured']) }}">see more <i
                                    class="fas fa-caret-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach ($featuredProducts as $product)
                        <div class="col-xl-2 col-sm-6 col-lg-3 col-6">
                            @include('website.product-cart')
                        </div>
                    @endforeach
                </div>
                @foreach ($featuredProducts as $product)
                    @include('website.product-modal')
                @endforeach
            </div>
        </section>
        {{-- <!--============================
            Featured Products END
        ==============================--> --}}
    @endif


    {{-- <!--============================
        LARGE BANNER  START
    ==============================--> --}}
    {{-- <section id="wsus__large_banner">
        <div class="container">
            <div class="row">
                <div class="cl-xl-12">
                    <div class="wsus__large_banner_content" style="background: url(images/large_banner_img.jpg);">
                        <div class="wsus__large_banner_content_overlay">
                            <div class="row">
                                <div class="col-xl-6 col-12 col-md-6">
                                    <div class="wsus__large_banner_text">
                                        <h3>This Week's Deal</h3>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem repudiandae in
                                            ipsam
                                            nesciunt.</p>
                                        <a class="shop_btn" href="#">view more</a>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-12 col-md-6">
                                    <div class="wsus__large_banner_text wsus__large_banner_text_right">
                                        <h3>headphones</h3>
                                        <h5>up to 20% off</h5>
                                        <p>Spring's collection has discounted now!</p>
                                        <a class="shop_btn" href="#">shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    {{-- <!--============================
        LARGE BANNER  END
    ==============================--> --}}


    {{-- @php
        $bannerVisiblity = $visibilities->where('id', 8)->first();
    @endphp
    @if ($bannerVisiblity->status == 1)
        <section id="wsus__single_banner">
            <div class="">
                <div class="row">
                    @php
                        $bannerOne = $banners->where('id', 5)->first();
                        $bannerTwo = $banners->where('id', 6)->first();
                    @endphp
                    <div class="col-xl-6 col-lg-6">
                        <div class="wsus__single_banner_content">
                            <div class="wsus__single_banner_img">
                                <img src="{{ $bannerOne->image }}" alt="banner" class="img-fluid w-100">
                            </div>
                            <div class="wsus__single_banner_text">
                                <h6>{{ $bannerOne->description }}</h6>
                                <h3>{{ $bannerOne->title }}</h3>
                                <a class="shop_btn" href="{{ $bannerOne->link }}">{{ __('user.shop now') }}</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="wsus__single_banner_content">
                            <div class="wsus__single_banner_img">
                                <img src="{{ $bannerTwo->image }}" alt="banner" class="img-fluid w-100">
                            </div>
                            <div class="wsus__single_banner_text">
                                <h6>{{ $bannerTwo->description }}</h6>
                                <h3>{{ $bannerTwo->title }}</h3>
                                <a class="shop_btn" href="{{ $bannerTwo->link }}">{{ __('user.shop now') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    </div>
    </section> --}}

    {{-- <!--============================
            HOT DEALS END
    ==============================--> --}}


    {{-- <!--============================
        LARGE BANNER  START
    ==============================--> --}}

    @php
        $bannerVisibility = $visibilities->where('id', 10)->first();
    @endphp
    @if ($bannerVisibility->status == 1)
        <section id="wsus__single_banner">
            <div class="container">
                <div class="row">
                    @php
                        $bannerOne = $banners->where('id', 7)->first();
                        $bannerTwo = $banners->where('id', 8)->first();
                    @endphp
                    <div class="col-xl-6 col-lg-6">
                        <div class="wsus__single_banner_content">
                            <div class="wsus__single_banner_img">
                                <img src="{{ asset($bannerOne->image) }}" alt="banner" class="img-fluid w-100">
                            </div>
                            <div class="wsus__single_banner_text">
                                <h6>{{ $bannerOne->description }}</h6>
                                <h3>{{ $bannerOne->title }}</h3>
                                <a class="shop_btn" href="{{ $bannerOne->link }}">{{ __('user.shop now') }}</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="wsus__single_banner_content">
                            <div class="wsus__single_banner_img">
                                <img src="{{ asset($bannerTwo->image) }}" alt="banner" class="img-fluid w-100">
                            </div>
                            <div class="wsus__single_banner_text">
                                <h6>{{ $bannerTwo->description }}</h6>
                                <h3>{{ $bannerTwo->title }}</h3>
                                <a class="shop_btn" href="{{ $bannerTwo->link }}">{{ __('user.shop now') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    {{-- <!--============================
        LARGE BANNER  END
    ==============================--> --}}


    {{-- <!--============================
        Best selling products START
    ==============================--> --}}
    <section id="wsus__electronic2" class="section_separate">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="wsus__section_header">
                        <h3>{{ __('user.Best Selling Products') }}</h3>
                        <a class="see_btn" href="{{ route('product', ['type' => 'best']) }}">{{ __('user.see more') }}
                            <i class="fas fa-caret-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($bestProducts as $product)
                    <div class="col-xl-2 col-sm-6 col-lg-3 col-6">
                        @include('website.product-cart')
                    </div>
                @endforeach
            </div>
            @foreach ($bestProducts as $product)
                @include('website.product-modal')
            @endforeach
        </div>
    </section>
    {{-- <!--============================
        Best selling products END
    ==============================--> --}}


    {{-- <!--============================
        Just for START
    ==============================--> --}}
    <section id="wsus__electronic2" class="section_separate">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="wsus__section_header">
                        <h3>{{ __('user.Just for You') }}</h3>
                        <a class="see_btn" href="{{ route('product', ['type' => 'top']) }}">{{ __('see more') }} <i
                                class="fas fa-caret-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($topProducts as $product)
                    <div class="col-xl-2 col-sm-6 col-lg-3 col-6">
                        @include('website.product-cart')
                    </div>
                @endforeach
            </div>
            @foreach ($topProducts as $product)
                @include('website.product-modal')
            @endforeach
        </div>
    </section>
    {{-- <!--============================
        Just for END
    ==============================--> --}}
@endsection
