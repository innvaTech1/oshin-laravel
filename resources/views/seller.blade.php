@extends('layout')

@section('title')
    <title>{{ $seoSetting->seo_title }}</title>
@endsection

@section('meta')
    <meta name="description" content="{{ $seoSetting->seo_description }}">
@endsection

@section('public-content')
    <section id="wsus__brands">
        <div class="container">
            <div class="row">
                @foreach ($sellers as $seller)
                    <div class="col-xl-2 col-sm-4 col-lg-2 col-4">
                        <a href="{{ route('seller-detail', ['shop_name' => $seller->slug]) }}" class="wsus__single_brand">
                            <img src="{{ asset($seller->banner_image) }}" alt="seller" class="img-fluid w-100">
                            @php
                                // Calculate rating (same logic as before)
                                $reviewQty = App\Models\ProductReview::where('status', 1)
                                    ->where('product_vendor_id', $seller->id)
                                    ->count();
                                $totalReview = App\Models\ProductReview::where('status', 1)
                                    ->where('product_vendor_id', $seller->id)
                                    ->sum('rating');
                                $average = $reviewQty > 0 ? $totalReview / $reviewQty : 0;
                            @endphp
                            <span class="rating">{{ number_format($average, 1) }} <i class="fas fa-star"></i></span>
                        </a>
                    </div>
                @endforeach

                <div class="col-xl-12" style="margin-bottom:30px">
                    {{ $sellers->links('custom_paginator') }}
                </div>
            </div>
        </div>
    </section>
@endsection
