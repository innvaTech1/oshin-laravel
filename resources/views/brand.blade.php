@extends('layout')
@section('title')
    <title>{{ $seoSetting->seo_title }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ $seoSetting->seo_description }}">
@endsection

@section('public-content')
    <!--============================
                BRANDS PAGE START
            ==============================-->
    <section id="wsus__brands">
        <div class="container">
            <div class="row">
                @foreach ($brands as $brand)
                    <div class="col-xl-2 col-sm-4 col-lg-2 col-4">
                        <a href="{{ route('product', ['brand' => $brand->slug]) }}" class="wsus__single_brand">
                            <img src="{{ asset($brand->logo) }}" alt="brand" class="img-fluid w-100">
                            {{-- <span class="new">{{ $brand->name }}</span> --}}
                            <span class="rating">{{ $brand->rating }} <i class="fas fa-star"></i></span>
                        </a>
                    </div>
                @endforeach

                <div class="col-xl-12" style="margin-bottom:30px">
                    {{ $brands->links('custom_paginator') }}
                </div>
            </div>
        </div>
    </section>
    <!--============================
                BRANDS PAGE END
            ==============================-->
@endsection
