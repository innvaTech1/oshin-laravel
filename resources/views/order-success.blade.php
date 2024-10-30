@extends('layout')

@section('title')
    <title>{{ __('user.Order Success') }}</title>
@endsection



@section('public-content')
    <style>
        .success-body {
            text-align: center;
            padding: 40px 0;
            background: #EBF0F5;
        }

        .success-body .order-success {
            color: #88B04B;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-weight: 900;
            font-size: 40px;
            margin-bottom: 10px;
        }

        .success-body p {
            color: #404F5E;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-size: 20px;
            margin: 0;
        }

        .success-body i {
            color: #9ABC66;
            font-size: 100px;
            line-height: 200px;
            margin-left: -15px;
        }

        .success-body .card {
            background: white;
            padding: 60px;
            border-radius: 4px;
            box-shadow: 0 2px 3px #C8D0D8;
            display: inline-block;
            margin: 0 auto;
        }
    </style>

    <div class="success-body">
        <div class="card">
            <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
                <i class="checkmark">✓</i>
            </div>
            <h1 class="order-success">Success</h1>
            <p>We received your purchase request;<br /> we'll be in touch shortly!</p>
            <p class="mt-2"><b>Your Order ID is: {{ session('order_id') }}</b></p>
        </div>
    </div>

    @php
        session()->forget('order_id');
    @endphp
@endsection
