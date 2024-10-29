@extends('seller.master_layout')
@section('title')
    <title>{{ __('user.Invoice') }}</title>
@endsection
<style>
    @media print {

        .section-header,
        .order-status,
        #sidebar-wrapper,
        .print-area,
        .main-footer {
            display: none !important;
        }
    }
</style>
@section('seller-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('user.Invoice') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route('seller.dashboard') }}">{{ __('user.Dashboard') }}</a></div>
                    <div class="breadcrumb-item">{{ __('user.Invoice') }}</div>
                </div>
            </div>
            <div class="section-body">
                <div class="invoice">
                    <div class="invoice-print">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="invoice-title">
                                    <h2><img src="{{ asset($setting->logo) }}" alt="" width="120px"></h2>
                                    <div class="invoice-number">{{ __('user.Order') }} #{{ $order->order_id }}</div>
                                </div>
                                <hr>
                                @php
                                    $orderAddress = $order->orderAddress;
                                @endphp
                                <div class="row">
                                    <div class="col-md-4">
                                        <address>
                                            <strong>{{ __('Billing Address') }}:</strong><br>
                                            {{ $orderAddress->billing_name }}<br>
                                            @if ($orderAddress->billing_email)
                                                {{ $orderAddress->billing_email }}<br>
                                            @endif
                                            @if ($orderAddress->billing_phone)
                                                {{ $orderAddress->billing_phone }}<br>
                                            @endif
                                            {{ $orderAddress->billing_address }},
                                            {{ $orderAddress->billing_city . ', ' . $orderAddress->billing_state . ', ' . $orderAddress->billing_country }}<br>
                                        </address>
                                    </div>
                                    <div class="col-md-4">
                                        <address>
                                            <strong>{{ __('Shipping Address') }} :</strong><br>
                                            {{ $orderAddress->shipping_name }}<br>
                                            @if ($orderAddress->shipping_email)
                                                {{ $orderAddress->shipping_email }}<br>
                                            @endif
                                            @if ($orderAddress->shipping_phone)
                                                {{ $orderAddress->shipping_phone }}<br>
                                            @endif
                                            {{ $orderAddress->shipping_address }},
                                            {{ $orderAddress->shipping_city . ', ' . $orderAddress->shipping_state . ', ' . $orderAddress->shipping_country }}<br>
                                        </address>
                                    </div>
                                    <div class="col-md-4 invoice_details">
                                        <p>
                                            <strong>Invoice Date: </strong>{{ $order->created_at->format('d-m-Y') }}
                                        </p>
                                        <p>
                                            <strong>Order No: </strong>{{ $order->order_id }}
                                        </p>
                                        <p>
                                            <strong>Order Date: </strong>{{ $order->created_at->format('d-m-Y') }}
                                        </p>
                                        <p>
                                            <strong>Customer Note: </strong>{{ $order->additional_info }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-md-12">
                                <div class="section-title">{{ __('user.Order Summary') }}</div>
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover table-md">
                                        <tr>
                                            <th width="5%">#</th>
                                            <th width="25%">{{ __('user.Product') }}</th>
                                            <th width="20%">{{ __('user.Variant') }}</th>
                                            <th width="10%">{{ __('user.Shop Name') }}</th>
                                            <th width="10%" class="text-center">{{ __('user.Unit Price') }}</th>
                                            <th width="10%" class="text-center">{{ __('user.Quantity') }}</th>
                                            <th width="10%" class="text-right">{{ __('user.Total') }}</th>
                                        </tr>
                                        @php
                                            $subTotal = 0;
                                        @endphp
                                        @foreach ($order->orderProducts as $index => $orderProduct)
                                            @php
                                                $variantPrice = 0;
                                                $totalVariant = $orderProduct->orderProductVariants->count();
                                                $product = App\Models\Product::where(
                                                    'id',
                                                    $orderProduct->product_id,
                                                )->first();
                                            @endphp
                                            <tr>
                                                <td>{{ ++$index }}</td>
                                                <td><a
                                                        href="{{ route('product-detail', $product->slug) }}">{{ $orderProduct->product_name }}</a>
                                                </td>
                                                <td>
                                                    @foreach ($orderProduct->orderProductVariants as $indx => $variant)
                                                        {{ $variant->variant_name . ' : ' . $variant->variant_value }}{{ $totalVariant == ++$indx ? '' : ',' }}
                                                        <br>
                                                        @php
                                                            $variantPrice += $variant->variant_price;
                                                        @endphp
                                                    @endforeach

                                                </td>
                                                <td>
                                                    @if ($orderProduct->seller)
                                                        <a
                                                            href="{{ route('seller-detail', ['shop_name' => $orderProduct->seller->slug]) }}">{{ $orderProduct->seller->shop_name }}</a>
                                                    @endif
                                                </td>
                                                <td class="text-center">
                                                    {{ currency_icon() }}{{ $orderProduct->unit_price }}</td>
                                                <td class="text-center">{{ $orderProduct->qty }}</td>
                                                @php
                                                    $total = $orderProduct->unit_price * $orderProduct->qty;
                                                @endphp
                                                <td class="text-right">{{ currency_icon() }}{{ $total }}
                                                </td>
                                            </tr>
                                            @php
                                                $totalVariant = 0;
                                            @endphp
                                        @endforeach
                                    </table>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-lg-6 order-status">
                                        <div class="">
                                            <strong>{{ __('Payment Method') }} : </strong> {{ $order->payment_method }}
                                        </div>
                                    </div>

                                    <div class="col-lg-6 text-right">
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('user.Subtotal') }} :
                                                {{ currency_icon() }}{{ $order->sub_total }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('user.Discount') }}(-) :
                                                {{ currency_icon() }}{{ $order->coupon_coast }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('user.Shipping') }} :
                                                {{ currency_icon() }}{{ $order->shipping_cost }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('user.Tax') }} :
                                                {{ currency_icon() }}{{ $order->order_vat }}</div>
                                        </div>



                                        <hr class="mt-2 mb-2">
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-value invoice-detail-value-lg">
                                                {{ __('user.Total') }} :
                                                {{ currency_icon() }}{{ $order->amount_real_currency }}</div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="text-md-right print-area">
                        <hr>
                        <button class="btn btn-success btn-icon icon-left" onclick="window.print()"><i
                                class="fas fa-print"></i> {{ __('user.Print') }}</button>
                    </div>
                </div>
            </div>

        </section>
    </div>
@endsection


@section('style')
    <style>
        @media print {
            body {
                background: #fff !important;
            }

            .navbar,
            .main-sidebar,
            .section-header,
            .print-btn,
            .edit-btn,
            .order-status,
            .print-area,
            .section-title,
            .main-navbar,
            .navbar-bg,
            .main-footer {
                display: none !important;
            }

            .invoice {
                box-shadow: none !important;
                width: 100% !important;
                margin: 0 !important;
                border: none !important;
            }

            .text-md-end {
                text-align: right !important;
            }

            .section-body {
                width: 100% !important;
            }

            table {
                margin-bottom: 0 !important;
            }

            td,
            th {
                padding: 0 !important;
                height: auto !important;
            }

            .col-md-6 {
                padding: 0 !important;
                width: 50% !important;
            }

        }

        .invoice hr {
            margin-top: 10px;
            margin-bottom: 30px;
        }

        address {
            margin-bottom: 0 !important;
        }
    </style>
@endsection
