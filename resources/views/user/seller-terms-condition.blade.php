@extends('user.layout')
@section('title')
    <title>{{ __('user.Seller Terms Condition') }}</title>
@endsection
@section('user-content')
    <div class="row">
        <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
            <div class="dashboard_content mt-2 mt-md-0">
                <h3><i class="far fa-user"></i> {{ __('user.Seller Terms Condition') }}</h3>
                <div class="wsus__dashboard_profile mb-4">
                    <div class="wsus__dash_pro_area">
                        {!! $setting->seller_condition !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
