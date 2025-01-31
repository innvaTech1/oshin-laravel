@extends('layout')

@section('title')
    <title>{{ $seoSetting->seo_title }}</title>
@endsection

@section('meta')
    <meta name="description" content="{{ $seoSetting->seo_description }}">
@endsection

@section('public-content')
    <section id="wsus__product_page" class="wsus__vendors">
        <div class="container">
            <div class="row">
                @if ($sellers->count() > 0)
                    <div class="col-12">
                        <div class="row">
                            @foreach ($sellers as $seller)
                                <div class="col-xl-3 col-md-3">
                                    <div class="card border-0 shadow-lg rounded-3 overflow-hidden">
                                        <img src="{{ asset($seller->banner_image) }}" alt="vendor"
                                            class="card-img-top img-fluid">
                                        <div class="card-body text-center bg-white position-relative">
                                            <h5 class="fw-bold text-primary">{{ $seller->shop_name }}</h5>

                                            @php
                                                $reviewQty = App\Models\ProductReview::where('status', 1)
                                                    ->where('product_vendor_id', $seller->id)
                                                    ->count();
                                                $totalReview = App\Models\ProductReview::where('status', 1)
                                                    ->where('product_vendor_id', $seller->id)
                                                    ->sum('rating');
                                                $average = $reviewQty > 0 ? $totalReview / $reviewQty : 0;
                                                $intAverage = floor($average);
                                                $halfReview = $average - $intAverage >= 0.5;
                                            @endphp

                                            <p class="mb-2">
                                                @for ($i = 1; $i <= 5; $i++)
                                                    @if ($i <= $intAverage)
                                                        <i class="fas fa-star text-warning"></i>
                                                    @elseif ($halfReview && $i == $intAverage + 1)
                                                        <i class="fas fa-star-half-alt text-warning"></i>
                                                        @php $halfReview = false; @endphp
                                                    @else
                                                        <i class="far fa-star text-secondary"></i>
                                                    @endif
                                                @endfor
                                                <span class="text-muted ms-1">({{ $reviewQty }} Reviews)</span>
                                            </p>

                                            <div class="d-flex justify-content-center gap-3">
                                                <a href="tel:{{ $seller->phone }}"
                                                    class="btn btn-light btn-sm rounded-pill shadow-sm">
                                                    <i class="fas fa-phone-alt me-1"></i> Call
                                                </a>
                                                <a href="mailto:{{ $seller->email }}"
                                                    class="btn btn-light btn-sm rounded-pill shadow-sm">
                                                    <i class="fas fa-envelope me-1"></i> Email
                                                </a>
                                            </div>

                                            <a href="{{ route('seller-detail', ['shop_name' => $seller->slug]) }}"
                                                class="btn btn-primary btn-sm mt-3 px-4 rounded-pill">
                                                <i class="fas fa-store me-1"></i> Visit Store
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                @else
                    <div class="col-12 text-center">
                        <h3 class="text-danger">{{ __('user.Seller not found') }}</h3>
                    </div>
                @endif
            </div>
        </div>
    </section>
@endsection
