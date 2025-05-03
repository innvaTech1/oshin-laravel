@extends('seller.master_layout')
@section('title')
    <title>INVOICE_{{ $order->order_id }}_OSHIN</title>
@endsection

<style>
    @media print {

        .section-header,
        .order-status,
        #sidebar-wrapper,
        .print-area,
        .main-footer,
        .additional_info {
            display: none !important;
        }

        .row {
            display: flex !important;
            flex-wrap: nowrap;
        }

        .col-md-9 {
            flex: 0 0 75%;
            max-width: 75%;
        }

        .col-lg-3 {
            flex: 0 0 25%;
            max-width: 25%;
        }
    }
</style>

@section('seller-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>INVOICE_{{ $order->order_id }}_OSHIN</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('seller.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Invoice') }}</div>
                </div>
            </div>
            <div class="section-body">
                <div class="invoice">
                    <div class="invoice-print">
                        <div class="row mb-3">
                            <div class="col-md-4 mt-3">
                                <div class="invoice-title">
                                    <h2><img src="{{ asset($setting->logo) }}" alt="" width="130px"></h2>
                                </div>
                            </div>

                            <div class="col-md-4">
                            </div>

                            <div class="col-md-4">
                                <div class="invoice_details text-dark fw-bold">
                                    <p>
                                        Order Number : {{ $order->order_id }}
                                    </p>
                                    <p>
                                        Order Date : {{ $order->created_at->format('d-M-Y') }}
                                    </p>
                                    <p>
                                        Invoice Number : {{ $uniqueInvoiceNumber }}
                                    </p>
                                    <p>
                                        Invoice Date : {{ now()->format('d-m-Y') }}
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            @php
                                $orderAddress = $order->orderAddress;
                            @endphp

                            <div class="col-md-4">
                                <address>
                                    {!! $setting->invoice_address !!}
                                </address>
                            </div>

                            <div class="col-md-4">
                            </div>

                            <div class="col-md-4 text-dark fw-bold">
                                <p class="mb-0 fw-bolder"
                                    style="font-weight: bold;text-decoration:underline; text-transform: uppercase;">SHIPPING
                                    ADDRESS</p>
                                <p class="mb-0">Name : {{ $orderAddress->shipping_name }}</p>
                                @if ($orderAddress->shipping_email)
                                    <p class="mb-0">Email : {{ $orderAddress->shipping_email }}</p>
                                @endif
                                @if ($orderAddress->shipping_phone)
                                    <p class="mb-0">Phone : {{ $orderAddress->shipping_phone }}</p>
                                @endif
                                <p class="mb-0">Address : {{ $orderAddress->shipping_address }}</p>
                                <p class="mb-0">City : {{ $orderAddress->shipping_city }}</p>
                                <p class="mb-0">State : {{ $orderAddress->shipping_state }}</p>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-md">
                                        <tr>
                                            <th width="8%" class="text-center"
                                                style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                {{ __('SL NO') }}</th>
                                            <th width="17%" class="text-center"
                                                style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                {{ __('IMAGE') }}</th>
                                            <th width="23%"
                                                style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                {{ __('ITEM') }}</th>
                                            <th width="17%"
                                                style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                {{ __('DESCRIPTION') }}
                                            </th>
                                            <th width="8%" class="text-center"
                                                style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                {{ __('QUANTITY') }}</th>
                                            <th width="12%" class="text-center"
                                                style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                {{ __('UNIT PRICE') }}
                                            </th>
                                            <th width="15%" class="text-right"
                                                style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                {{ __('TOTAL PRICE') }}</th>
                                        </tr>
                                        @php
                                            $subTotal = 0;
                                        @endphp
                                        @foreach ($order->orderProducts as $index => $orderProduct)
                                            @php
                                                $variantPrice = 0;
                                                $totalVariant = $orderProduct->orderProductVariants->count();
                                            @endphp
                                            <tr class="text-dark">
                                                <td class="text-center"
                                                    style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                    {{ $loop->iteration }}</td>
                                                <td class="text-center"
                                                    style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                    <img class="w-25"
                                                        src="{{ $orderProduct->product && $orderProduct->product->thumb_image ? asset($orderProduct->product->thumb_image) : asset('uploads/custom-images/placeholder-image.jpg') }}" />
                                                </td>
                                                <td style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                    {{ $orderProduct->product_name }}</td>
                                                <td style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                    @foreach ($orderProduct->orderProductVariants as $indx => $variant)
                                                        {{ $variant->variant_name . ' : ' . $variant->variant_value }}{{ $totalVariant == ++$indx ? '' : ',' }}
                                                        <br>
                                                        @php
                                                            $variantPrice += $variant->variant_price;
                                                        @endphp
                                                    @endforeach
                                                </td>
                                                <td class="text-center"
                                                    style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                    {{ $orderProduct->qty }}</td>
                                                <td class="text-center"
                                                    style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                    {{ '৳ ' }}{{ $orderProduct->unit_price }}
                                                </td>
                                                @php
                                                    $total = $orderProduct->unit_price * $orderProduct->qty;
                                                @endphp
                                                <td class="text-right"
                                                    style="border-top: 1px solid black; border-bottom: 1px solid black;">
                                                    {{ '৳ ' }}{{ $total }}</td>
                                            </tr>
                                            @php
                                                $totalVariant = 0;
                                            @endphp
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-9">
                                <div>
                                    <strong>{{ __('Payment Method') }} : </strong>
                                    {{ $order->payment_method }}{{ $order->payment_status ? ' (Paid)' : ' (Unpaid)' }}
                                </div>
                                <div class="mt-3">
                                    <strong>Customer Note:
                                    </strong>{{ $order->additional_info }}
                                </div>
                            </div>

                            <div class="col-lg-3 text-right text-dark fw-bold">
                                <table>
                                    <tbody>
                                        <tr>
                                            <th style="padding-right: 30px;">{{ __('Subtotal : ') }}</th>
                                            <td>{{ ' ৳ ' }}{{ $order->sub_total }}</td>
                                        </tr>
                                        <tr>
                                            <th style="padding-right: 30px;">{{ __('Shipping Cost : ') }}</th>
                                            <td>{{ ' ৳ ' }}{{ $order->shipping_cost }}</td>
                                        </tr>
                                        <tr>
                                            <th style="padding-right: 30px;">{{ __('Tax : ') }}</th>
                                            <td>{{ ' ৳ ' }}{{ $order->order_vat }}</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"
                                                style="border-top: 1px solid black; height: 1px; padding: 0;"></td>
                                        </tr>
                                        <tr>
                                            <th style="padding-right: 30px;">{{ __('Total : ') }}</th>
                                            <td>{{ ' ৳ ' }}{{ $order->sub_total + $order->shipping_cost + $order->order_vat }}
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="padding-right: 30px;">{{ __('Discount : ') }}</th>
                                            <td>{{ ' ৳ ' }}{{ $order->coupon_coast }}</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"
                                                style="border-top: 1px solid black; height: 1px; padding: 0;"></td>
                                        </tr>
                                        <tr>
                                            <th style="padding-right: 30px;">{{ __('Total Amount : ') }}</th>
                                            <td>{{ ' ৳ ' }}{{ $order->sub_total + $order->shipping_cost + $order->order_vat - $order->coupon_coast }}
                                            </td>
                                        </tr>
                                        @if ($order->payment_method == 'Cash on Delivery')
                                            <tr>
                                                <th style="padding-right: 30px;">{{ __('Paid Amount : ') }}</th>
                                                <td>{{ ' ৳ ' }}{{ 0 }}</td>
                                            </tr>
                                        @else
                                            <tr>
                                                <th style="padding-right: 30px;">{{ __('Paid Amount : ') }}</th>
                                                @if ($order->payment_status == 1 && $order->payment_method != 'Cash on Delivery')
                                                    <td>{{ ' ৳ ' }}{{ $order->total_amount }}</td>
                                                @else
                                                    <td>{{ ' ৳ ' }}{{ 0 }}</td>
                                                @endif
                                            </tr>
                                        @endif
                                        <tr>
                                            <td colspan="2"
                                                style="border-top: 1px solid black; height: 1px; padding: 0;"></td>
                                        </tr>
                                        <tr>
                                            <th style="padding-right: 30px;">{{ __('Due Amount : ') }}</th>
                                            <td>
                                                @if ($order->payment_status == 1 && $order->payment_method != 'Cash on Delivery')
                                                    {{ ' ৳ ' }}{{ 0 }}
                                                @else
                                                    {{ ' ৳ ' }}{{ $order->sub_total + $order->shipping_cost + $order->order_vat - $order->coupon_coast }}
                                                @endif
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="text-md-right print-area">
                    <hr>
                    <button class="btn btn-success btn-icon icon-left" onclick="window.print()"><i class="fas fa-print"></i>
                        {{ __('Print') }}</button>
                </div>
            </div>
        </section>
    </div>
@endsection

@section('style')
    <style>
        @media print {
            .invoice {
                width: 100% !important;
                margin: 0 !important;
                padding: 0 !important;
                border: none !important;
            }

            .row {
                display: flex !important;
                justify-content: space-between;
            }

            .col-md-4 {
                width: 32% !important;
                float: none !important;
                text-align: left !important;
            }

            .col-md-4.text-right {
                text-align: right !important;
            }

            .section-body {
                width: 100% !important;
            }

            .navbar,
            .main-sidebar,
            .section-header,
            .print-btn,
            .section-footer,
            .print-area {
                display: none !important;
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
