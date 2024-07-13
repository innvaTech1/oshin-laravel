@extends('layout')
@section('title')
    <title>{{ $seoSetting->seo_title }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ $seoSetting->seo_description }}">
@endsection

@section('public-content')
    <!--============================
                                                                                                    BANNER PART START
                                                                                                ==============================-->
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
    <!--============================
                                                                                                    BANNER PART END
                                                                                                ==============================-->

    <!--============================
                                                                                                    BRAND SLIDER START
                                                                                                ==============================-->
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
    <!--============================
                                                                                                    BRAND SLIDER END
                                                                                                ==============================-->

    <!-- =========================
                                                                                         HOME FEATURED START
                                                                                         ========================== -->
    <section class="section_separate">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-12">
                    <div class="wsus__features_section">
                        <a href="brands.html">
                            <div class="wsus__section_content">
                                <img src="images/features_service/brand.png" alt="" class="img-fluid">
                                <h2>Brands</h2>
                            </div>
                        </a>
                        <a href="#">
                            <div class="wsus__section_content">
                                <img src="images/features_service/surprise.png" alt="" class="img-fluid">
                                <h2>Gift Corner</h2>
                            </div>
                        </a>
                        <a href="#">
                            <div class="wsus__section_content">
                                <img src="images/features_service/supply-chain.png" alt="" class="img-fluid">
                                <h2>Wholesale</h2>
                            </div>
                        </a>
                        <a href="#">
                            <div class="wsus__section_content">
                                <img src="images/features_service/order.png" alt="" class="img-fluid">
                                <h2>Pre-Order</h2>
                            </div>
                        </a>
                        <a href="#">
                            <div class="wsus__section_content">
                                <img src="images/features_service/marketing.png" alt="" class="img-fluid">
                                <h2>Campaigns</h2>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- =====================
                                                                                          HOME FEATURED END
                                                                                          ========================= -->

    <!--============================
                                                                                          HOME SERVICES START
                                                                                        ==============================-->
    <section id="wsus__home_services">
        <div class="container">
            <div class="wsus__home_services_bg">
                <div class="row">
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="images/icons/verified.png" alt="" class="img-fluid">
                            <h5>Safe Payments</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="images/icons/shipped.png" alt="" class="img-fluid">
                            <h5>Nationalwide Delevery</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="images/icons/product-return.png" alt="" class="img-fluid">
                            <h5>Free & Easy Return</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="images/icons//tag.png" alt="" class="img-fluid">
                            <h5>Best Price Guaranteed</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="images/icons/high-quality.png" alt="" class="img-fluid">
                            <h5>100% Authentic Products</h5>
                        </div>
                    </div>
                    <div class="col-xl-2 col-sm-3 col-lg-2 col-4">
                        <div class="wsus__home_services_single">
                            <img src="images/icons/verify.png" alt="" class="img-fluid">
                            <h5>Oshin verified</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
                                                                                            HOME SERVICES END
                                                                                        ==============================-->

    <!--============================
                                                                                                    FLASH SELL START
                                                                                                ==============================-->
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


    <!--============================
                                                                BRAND SLIDER START
                                                            ==============================-->
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
    <!--============================
                                                                BRAND SLIDER END
                                                            ==============================-->

    <!--============================
                                                                                                   MONTHLY TOP PRODUCT END
                                                                                                ==============================-->


    <!--============================
                                                                                                    SINGLE BANNER START
                                                                                                ==============================-->
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

            <section id="wsus__single_banner" class="home_2_single_banner">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6">
                            <div class="wsus__single_banner_content banner_1">
                                <div class="wsus__single_banner_img">
                                    <img src="images/single_banner_44.jpg" alt="banner" class="img-fluid w-100">
                                </div>
                                <div class="wsus__single_banner_text">
                                    <h6>sell on <span>35% off</span></h6>
                                    <h3>smart watch</h3>
                                    <a class="shop_btn" href="#">shop now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="row">
                                <div class="col-12">
                                    <div class="wsus__single_banner_content single_banner_2">
                                        <div class="wsus__single_banner_img">
                                            <img src="images/single_banner_55.jpg" alt="banner"
                                                class="img-fluid w-100">
                                        </div>
                                        <div class="wsus__single_banner_text">
                                            <h6>New Collection</h6>
                                            <h3>kid's fashion</h3>
                                            <a class="shop_btn" href="#">shop now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 mt-lg-4">
                                    <div class="wsus__single_banner_content">
                                        <div class="wsus__single_banner_img">
                                            <img src="images/single_banner_66.jpg" alt="banner"
                                                class="img-fluid w-100">
                                        </div>
                                        <div class="wsus__single_banner_text">
                                            <h6>sell on <span>42% off</span></h6>
                                            <h3>winter collection</h3>
                                            <a class="shop_btn" href="#">shop now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
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
                            <a class="see_btn" href="#">see more <i class="fas fa-caret-right"></i></a>
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


        <!--============================
                Featured Products START
            ==============================-->
        <section id="wsus__electronic2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="wsus__section_header">
                            <h3>Featured Products</h3>
                            <a class="see_btn" href="#">see more <i class="fas fa-caret-right"></i></a>
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
        <!--============================
                Featured Products END
            ==============================-->
    @endif


    @php
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
    </section>

    <!--============================
                                                                                                       HOT DEALS END
                                                                                                ==============================-->



    <!--============================
                                                                                                    WEEKLY BEST ITEM START
                                                                                                ==============================-->
    @php
        $threeColVisible = $visibilities->where('id', 9)->first();
    @endphp
    @if ($threeColVisible->status == 1)
        <section id="wsus__weekly_best">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-sm-6 col-md-6 col-lg-4">
                        <div class="wsus__section_header">
                            @php
                                $firstCategory = $columnCategories
                                    ->where('id', $threeColumnCategory->category_id_one)
                                    ->first();
                            @endphp
                            <h3>{{ $firstCategory ? $firstCategory->name : '' }}</h3>
                        </div>
                        <div class="row weekly_best">
                            @foreach ($threeColumnFirstCategoryProducts as $threeColfirstCatProduct)
                                <div class="col-xl-12">
                                    <a class="wsus__hot_deals__single"
                                        href="{{ route('product-detail', $threeColfirstCatProduct->slug) }}">
                                        <div class="wsus__hot_deals__single_img">
                                            <img src="{{ asset($threeColfirstCatProduct->thumb_image) }}" alt="bag"
                                                class="img-fluid w-100">
                                        </div>
                                        <div class="wsus__hot_deals__single_text">
                                            <h5>{{ $threeColfirstCatProduct->short_name }}</h5>
                                            @php
                                                $reviewQty = $threeColfirstCatProduct->reviews
                                                    ->where('status', 1)
                                                    ->count();
                                                $totalReview = $threeColfirstCatProduct->reviews
                                                    ->where('status', 1)
                                                    ->sum('rating');
                                                if ($reviewQty > 0) {
                                                    $average = $totalReview / $reviewQty;
                                                    $intAverage = intval($average);
                                                    $nextValue = $intAverage + 1;
                                                    $reviewPoint = $intAverage;
                                                    $halfReview = false;
                                                    if ($intAverage < $average && $average < $nextValue) {
                                                        $reviewPoint = $intAverage + 0.5;
                                                        $halfReview = true;
                                                    }
                                                }
                                            @endphp

                                            @if ($reviewQty > 0)
                                                <p class="wsus__rating">
                                                    @for ($i = 1; $i <= 5; $i++)
                                                        @if ($i <= $reviewPoint)
                                                            <i class="fas fa-star"></i>
                                                        @elseif ($i > $reviewPoint)
                                                            @if ($halfReview == true)
                                                                <i class="fas fa-star-half-alt"></i>
                                                                @php
                                                                    $halfReview = false;
                                                                @endphp
                                                            @else
                                                                <i class="fal fa-star"></i>
                                                            @endif
                                                        @endif
                                                    @endfor
                                                    <span>({{ $reviewQty }})</span>
                                                </p>
                                            @endif

                                            @if ($reviewQty == 0)
                                                <p class="wsus__rating">
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <span>(0)</span>
                                                </p>
                                            @endif

                                            @php
                                                $variantPrice = 0;
                                                $variants = $threeColfirstCatProduct->variants->where('status', 1);
                                                if ($variants->count() != 0) {
                                                    foreach ($variants as $variants_key => $variant) {
                                                        if ($variant->variantItems->where('status', 1)->count() != 0) {
                                                            $item = $variant->variantItems
                                                                ->where('is_default', 1)
                                                                ->first();
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
                                                    'product_id' => $threeColfirstCatProduct->id,
                                                ])->first();
                                                if ($campaign) {
                                                    $campaign = $campaign->campaign;
                                                    if (
                                                        $campaign->start_date <= $today &&
                                                        $today <= $campaign->end_date
                                                    ) {
                                                        $isCampaign = true;
                                                    }
                                                    $campaignOffer = $campaign->offer;
                                                    $productPrice = $threeColfirstCatProduct->price;
                                                    $campaignOfferPrice = ($campaignOffer / 100) * $productPrice;
                                                    $totalPrice = $productPrice;
                                                    $campaignOfferPrice = $totalPrice - $campaignOfferPrice;
                                                }

                                                $totalPrice = $threeColfirstCatProduct->price;
                                                if ($threeColfirstCatProduct->offer_price != null) {
                                                    $offerPrice = $threeColfirstCatProduct->offer_price;
                                                    $offer = $totalPrice - $offerPrice;
                                                    $percentage = ($offer * 100) / $totalPrice;
                                                    $percentage = round($percentage);
                                                }
                                            @endphp

                                            @if ($isCampaign)
                                                <p class="wsus__tk">
                                                    {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $campaignOfferPrice + $variantPrice) }}
                                                    <del>{{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice) }}</del>
                                                </p>
                                            @else
                                                @if ($threeColfirstCatProduct->offer_price == null)
                                                    <p class="wsus__tk">
                                                        {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice + $variantPrice) }}
                                                    </p>
                                                @else
                                                    <p class="wsus__tk">
                                                        {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $threeColfirstCatProduct->offer_price + $variantPrice) }}
                                                        <del>{{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice) }}</del>
                                                    </p>
                                                @endif
                                            @endif

                                        </div>
                                    </a>
                                </div>
                            @endforeach

                        </div>
                    </div>
                    <div class="col-xl-4 col-sm-6 col-md-6 col-lg-4">
                        <div class="wsus__section_header">
                            @php
                                $secondCategory = $columnCategories
                                    ->where('id', $threeColumnCategory->category_id_two)
                                    ->first();
                            @endphp
                            <h3>{{ $secondCategory ? $secondCategory->name : '' }}</h3>
                        </div>
                        <div class="row weekly_best">
                            @foreach ($threeColumnSecondCategoryProducts as $threeColsecondCatProduct)
                                <div class="col-xl-12">
                                    <a class="wsus__hot_deals__single"
                                        href="{{ route('product-detail', $threeColsecondCatProduct->slug) }}">
                                        <div class="wsus__hot_deals__single_img">
                                            <img src="{{ asset($threeColsecondCatProduct->thumb_image) }}" alt="bag"
                                                class="img-fluid w-100">
                                        </div>
                                        <div class="wsus__hot_deals__single_text">
                                            <h5>{{ $threeColsecondCatProduct->short_name }}</h5>
                                            @php
                                                $reviewQty = $threeColsecondCatProduct->reviews
                                                    ->where('status', 1)
                                                    ->count();
                                                $totalReview = $threeColsecondCatProduct->reviews
                                                    ->where('status', 1)
                                                    ->sum('rating');
                                                if ($reviewQty > 0) {
                                                    $average = $totalReview / $reviewQty;
                                                    $intAverage = intval($average);
                                                    $nextValue = $intAverage + 1;
                                                    $reviewPoint = $intAverage;
                                                    $halfReview = false;
                                                    if ($intAverage < $average && $average < $nextValue) {
                                                        $reviewPoint = $intAverage + 0.5;
                                                        $halfReview = true;
                                                    }
                                                }
                                            @endphp

                                            @if ($reviewQty > 0)
                                                <p class="wsus__rating">
                                                    @for ($i = 1; $i <= 5; $i++)
                                                        @if ($i <= $reviewPoint)
                                                            <i class="fas fa-star"></i>
                                                        @elseif ($i > $reviewPoint)
                                                            @if ($halfReview == true)
                                                                <i class="fas fa-star-half-alt"></i>
                                                                @php
                                                                    $halfReview = false;
                                                                @endphp
                                                            @else
                                                                <i class="fal fa-star"></i>
                                                            @endif
                                                        @endif
                                                    @endfor
                                                    <span>({{ $reviewQty }})</span>
                                                </p>
                                            @endif

                                            @if ($reviewQty == 0)
                                                <p class="wsus__rating">
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <span>(0)</span>
                                                </p>
                                            @endif

                                            @php
                                                $variantPrice = 0;
                                                $variants = $threeColsecondCatProduct->variants->where('status', 1);
                                                if ($variants->count() != 0) {
                                                    foreach ($variants as $variants_key => $variant) {
                                                        if ($variant->variantItems->where('status', 1)->count() != 0) {
                                                            $item = $variant->variantItems
                                                                ->where('is_default', 1)
                                                                ->first();
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
                                                    'product_id' => $threeColsecondCatProduct->id,
                                                ])->first();
                                                if ($campaign) {
                                                    $campaign = $campaign->campaign;
                                                    if (
                                                        $campaign->start_date <= $today &&
                                                        $today <= $campaign->end_date
                                                    ) {
                                                        $isCampaign = true;
                                                    }
                                                    $campaignOffer = $campaign->offer;
                                                    $productPrice = $threeColsecondCatProduct->price;
                                                    $campaignOfferPrice = ($campaignOffer / 100) * $productPrice;
                                                    $totalPrice = $productPrice;
                                                    $campaignOfferPrice = $totalPrice - $campaignOfferPrice;
                                                }

                                                $totalPrice = $threeColsecondCatProduct->price;
                                                if ($threeColsecondCatProduct->offer_price != null) {
                                                    $offerPrice = $threeColsecondCatProduct->offer_price;
                                                    $offer = $totalPrice - $offerPrice;
                                                    $percentage = ($offer * 100) / $totalPrice;
                                                    $percentage = round($percentage);
                                                }
                                            @endphp

                                            @if ($isCampaign)
                                                <p class="wsus__tk">
                                                    {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $campaignOfferPrice + $variantPrice) }}
                                                    <del>{{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice) }}</del>
                                                </p>
                                            @else
                                                @if ($threeColsecondCatProduct->offer_price == null)
                                                    <p class="wsus__tk">
                                                        {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice + $variantPrice) }}
                                                    </p>
                                                @else
                                                    <p class="wsus__tk">
                                                        {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $threeColsecondCatProduct->offer_price + $variantPrice) }}
                                                        <del>{{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice) }}</del>
                                                    </p>
                                                @endif
                                            @endif

                                        </div>
                                    </a>
                                </div>
                            @endforeach


                        </div>
                    </div>
                    <div class="col-xl-4 col-sm-6 col-md-6 col-lg-4">
                        <div class="wsus__section_header">
                            @php
                                $threeCategory = $columnCategories
                                    ->where('id', $threeColumnCategory->category_id_three)
                                    ->first();
                            @endphp
                            <h3>{{ $threeCategory ? $threeCategory->name : '' }}</h3>
                        </div>
                        <div class="row weekly_best">
                            @foreach ($threeColumnThirdCategoryProducts as $threeColCatProduct)
                                <div class="col-xl-12">
                                    <a class="wsus__hot_deals__single"
                                        href="{{ route('product-detail', $threeColCatProduct->slug) }}">
                                        <div class="wsus__hot_deals__single_img">
                                            <img src="{{ asset($threeColCatProduct->thumb_image) }}" alt="bag"
                                                class="img-fluid w-100">
                                        </div>
                                        <div class="wsus__hot_deals__single_text">
                                            <h5>{{ $threeColCatProduct->short_name }}</h5>
                                            @php
                                                $reviewQty = $threeColCatProduct->reviews->where('status', 1)->count();
                                                $totalReview = $threeColCatProduct->reviews
                                                    ->where('status', 1)
                                                    ->sum('rating');
                                                if ($reviewQty > 0) {
                                                    $average = $totalReview / $reviewQty;
                                                    $intAverage = intval($average);
                                                    $nextValue = $intAverage + 1;
                                                    $reviewPoint = $intAverage;
                                                    $halfReview = false;
                                                    if ($intAverage < $average && $average < $nextValue) {
                                                        $reviewPoint = $intAverage + 0.5;
                                                        $halfReview = true;
                                                    }
                                                }
                                            @endphp

                                            @if ($reviewQty > 0)
                                                <p class="wsus__rating">
                                                    @for ($i = 1; $i <= 5; $i++)
                                                        @if ($i <= $reviewPoint)
                                                            <i class="fas fa-star"></i>
                                                        @elseif ($i > $reviewPoint)
                                                            @if ($halfReview == true)
                                                                <i class="fas fa-star-half-alt"></i>
                                                                @php
                                                                    $halfReview = false;
                                                                @endphp
                                                            @else
                                                                <i class="fal fa-star"></i>
                                                            @endif
                                                        @endif
                                                    @endfor
                                                    <span>({{ $reviewQty }})</span>
                                                </p>
                                            @endif

                                            @if ($reviewQty == 0)
                                                <p class="wsus__rating">
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <i class="fal fa-star"></i>
                                                    <span>(0)</span>
                                                </p>
                                            @endif

                                            @php
                                                $variantPrice = 0;
                                                $variants = $threeColCatProduct->variants->where('status', 1);
                                                if ($variants->count() != 0) {
                                                    foreach ($variants as $variants_key => $variant) {
                                                        if ($variant->variantItems->where('status', 1)->count() != 0) {
                                                            $item = $variant->variantItems
                                                                ->where('is_default', 1)
                                                                ->first();
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
                                                    'product_id' => $threeColCatProduct->id,
                                                ])->first();
                                                if ($campaign) {
                                                    $campaign = $campaign->campaign;
                                                    if (
                                                        $campaign->start_date <= $today &&
                                                        $today <= $campaign->end_date
                                                    ) {
                                                        $isCampaign = true;
                                                    }
                                                    $campaignOffer = $campaign->offer;
                                                    $productPrice = $threeColCatProduct->price;
                                                    $campaignOfferPrice = ($campaignOffer / 100) * $productPrice;
                                                    $totalPrice = $productPrice;
                                                    $campaignOfferPrice = $totalPrice - $campaignOfferPrice;
                                                }

                                                $totalPrice = $threeColCatProduct->price;
                                                if ($threeColCatProduct->offer_price != null) {
                                                    $offerPrice = $threeColCatProduct->offer_price;
                                                    $offer = $totalPrice - $offerPrice;
                                                    $percentage = ($offer * 100) / $totalPrice;
                                                    $percentage = round($percentage);
                                                }
                                            @endphp

                                            @if ($isCampaign)
                                                <p class="wsus__tk">
                                                    {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $campaignOfferPrice + $variantPrice) }}
                                                    <del>{{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice) }}</del>
                                                </p>
                                            @else
                                                @if ($threeColCatProduct->offer_price == null)
                                                    <p class="wsus__tk">
                                                        {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice + $variantPrice) }}
                                                    </p>
                                                @else
                                                    <p class="wsus__tk">
                                                        {{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $threeColCatProduct->offer_price + $variantPrice) }}
                                                        <del>{{ $currencySetting->currency_icon }}{{ sprintf('%.2f', $totalPrice) }}</del>
                                                    </p>
                                                @endif
                                            @endif

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
    <!--============================
                                                                                                    WEEKLY BEST ITEM END
                                                                                                ==============================-->

    <!--============================
                                                                                                    LARGE BANNER  START
                                                                                                ==============================-->

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
    <!--============================
                                                                                                    LARGE BANNER  END
                                                                                                ==============================-->

    <!--============================
                                                                                                  HOME SERVOCES START
                                                                                                ==============================-->
    @php
        $serviceVisibility = $visibilities->where('id', 11)->first();
    @endphp
    @if ($serviceVisibility->status == 1)
        <section id="wsus__home_services">
            <div class="container">
                <div class="row">
                    @foreach ($services as $service)
                        <div class="col-xl-3 col-sm-6 col-lg-3">
                            <div class="wsus__home_services_single">
                                <i class="{{ $service->icon }}"></i>
                                <h5>{{ $service->title }}</h5>
                                <p>{{ $service->description }}</p>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @endif
    <!--============================
                                                                                                    HOME SERVOCES END
                                                                                                ==============================-->


    <!--============================
                                                                                                    HOME BLOGS START
                                                                                                ==============================-->
    @php
        $blogVisibilty = $visibilities->where('id', 12)->first();
    @endphp
    @if ($blogVisibilty->status == 1)
        <section id="wsus__blogs" class="home_blogs">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="wsus__section_header">
                            <h3>{{ __('user.recent blogs') }}</h3>
                            <a class="see_btn" href="{{ route('blog') }}">{{ __('user.see more') }} <i
                                    class="fas fa-caret-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row home_blog_slider">
                    @php
                        $colorId = 1;
                    @endphp
                    @foreach ($blogs as $index => $blog)
                        @php
                            if ($index % 4 == 0) {
                                $colorId = 1;
                            }

                            $color = '';
                            if ($colorId == 1) {
                                $color = 'blue';
                            } elseif ($colorId == 2) {
                                $color = 'red';
                            } elseif ($colorId == 3) {
                                $color = 'orange';
                            } elseif ($colorId == 4) {
                                $color = 'green';
                            }
                        @endphp
                        <div class="col-xl-4">
                            <div class="wsus__single_blog">
                                <a class="wsus__blog_img" href="{{ route('blog-detail', $blog->slug) }}">
                                    <img src="{{ asset($blog->image) }}" alt="blog" class="img-fluid w-100">
                                </a>
                                <a class="blog_top {{ $color }}"
                                    href="{{ route('blog-by-category', $blog->category->slug) }}">{{ $blog->category->name }}</a>
                                <div class="wsus__blog_text">
                                    <div class="wsus__blog_text_center">
                                        <a href="{{ route('blog-detail', $blog->slug) }}">{{ $blog->title }}</a>
                                        <p class="date"><span>{{ $blog->created_at->format('d F, Y') }}</span>
                                            {{ __('user.Hosted by') }} {{ $blog->admin->name }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @php
                            $colorId++;
                        @endphp
                    @endforeach
                </div>
            </div>
        </section>
    @endif
    <!--============================
                                                                                                    HOME BLOGS END
                                                                                                ==============================-->

@endsection
