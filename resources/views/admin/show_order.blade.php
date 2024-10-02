@extends('admin.master_layout')
@section('title')
    <title>{{ __('Invoice') }}</title>
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

    }
</style>
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Invoice') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Invoice') }}</div>
                </div>
            </div>
            <div class="section-body">
                <div class="invoice">
                    <div class="invoice-print">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="invoice-title">
                                    <h2><img src="{{ asset($setting->logo) }}" alt="" width="120px"></h2>
                                    <div class="invoice-number">Order #{{ $order->order_id }}</div>
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
                                {{-- <div class="row">
                                    <div class="col-md-6">
                                        <address>
                                            <strong>{{ __('Payment Information') }}:</strong><br>
                                            {{ __('Method') }}: {{ $order->payment_method }}<br>
                                            {{ __('Status') }} : @if ($order->payment_status == 1)
                                                <span class="badge badge-success">{{ __('Success') }}</span>
                                            @else
                                                <span class="badge badge-danger">{{ __('Pending') }}</span>
                                            @endif <br>
                                            {{ __('Transaction') }}: {!! clean(nl2br($order->transection_id)) !!}
                                        </address>
                                    </div>
                                    <div class="col-md-6 text-md-right">
                                        <address>
                                            <strong>{{ __('Order Information') }}:</strong><br>
                                            @if ($order->agree_terms_condition == 'yes')
                                                {{ __('Agree with Terms & Conditions') }}: <span
                                                    class="badge badge-success">{{ __('Yes') }} </span><br>
                                            @else
                                                {{ __('Agree with Terms & Conditions') }}: <span
                                                    class="badge badge-danger">{{ __('No') }} </span><br>
                                            @endif
                                            {{ __('Date') }}: {{ $order->created_at->format('d F, Y') }}<br>
                                            {{ __('Shipping') }}: {{ $order->shipping_method }}<br>
                                            {{ __('Status') }} :
                                            @if ($order->order_status == 1)
                                                <span class="badge badge-success">{{ __('Pregress') }} </span>
                                            @elseif ($order->order_status == 2)
                                                <span class="badge badge-success">{{ __('Delivered') }} </span>
                                            @elseif ($order->order_status == 3)
                                                <span class="badge badge-success">{{ __('Completed') }} </span>
                                            @elseif ($order->order_status == 4)
                                                <span class="badge badge-danger">{{ __('Declined') }} </span>
                                            @else
                                                <span class="badge badge-danger">{{ __('Pending') }}</span>
                                            @endif
                                        </address>
                                    </div>
                                </div> --}}
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-md-12">
                                <div class="section-title">{{ __('Order Summary') }}</div>
                                <div class="table-responsive">
                                    <table class="table table-striped table-hover table-md">
                                        <tr>
                                            <th width="5%">#</th>
                                            <th width="25%">{{ __('Product') }}</th>
                                            <th width="20%">{{ __('Variant') }}</th>
                                            @if ($setting->enable_multivendor == 1)
                                                <th width="10%">{{ __('Shop Name') }}</th>
                                            @endif
                                            <th width="10%" class="text-center">{{ __('Unit Price') }}</th>
                                            <th width="10%" class="text-center">{{ __('Quantity') }}</th>
                                            <th width="10%" class="text-right">{{ __('Total') }}</th>
                                        </tr>
                                        @php
                                            $subTotal = 0;
                                        @endphp
                                        @foreach ($order->orderProducts as $index => $orderProduct)
                                            @php
                                                $variantPrice = 0;
                                                $totalVariant = $orderProduct->orderProductVariants->count();
                                            @endphp
                                            <tr>
                                                <td>{{ ++$index }}</td>
                                                <td><a href="">{{ $orderProduct->product_name }}</a></td>
                                                <td>
                                                    @foreach ($orderProduct->orderProductVariants as $indx => $variant)
                                                        {{ $variant->variant_name . ' : ' . $variant->variant_value }}{{ $totalVariant == ++$indx ? '' : ',' }}
                                                        <br>
                                                        @php
                                                            $variantPrice += $variant->variant_price;
                                                        @endphp
                                                    @endforeach

                                                </td>
                                                @if ($setting->enable_multivendor == 1)
                                                    <td>
                                                        @if ($orderProduct->seller)
                                                            <a
                                                                href="{{ route('admin.seller-show', $orderProduct->seller->id) }}">{{ $orderProduct->seller->shop_name }}</a>
                                                        @endif
                                                    </td>
                                                @endif
                                                <td class="text-center">
                                                    {{ $setting->currency_icon }}{{ $orderProduct->unit_price }}</td>
                                                <td class="text-center">{{ $orderProduct->qty }}</td>
                                                @php
                                                    $total = $orderProduct->unit_price * $orderProduct->qty;
                                                @endphp
                                                <td class="text-right">{{ $setting->currency_icon }}{{ $total }}
                                                </td>
                                            </tr>
                                            @php
                                                $totalVariant = 0;
                                            @endphp
                                        @endforeach
                                    </table>
                                </div>
                                @if ($order->additional_info)
                                    <div class="row additional_info">
                                        <div class="col">
                                            <hr>
                                            <h5>{{ __('Additional Information') }}: </h5>
                                            <p>{!! clean(nl2br($order->additional_info)) !!}</p>
                                            <hr>
                                        </div>
                                    </div>
                                @endif

                                <div class="row mt-3">
                                    <div class="col-lg-6 order-status">
                                        <div class="">
                                            <strong>{{ __('Payment Method') }} : </strong> {{ $order->payment_method }}
                                        </div>
                                    </div>

                                    <div class="col-lg-6 text-right">
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('Subtotal') }} :
                                                {{ $setting->currency_icon }}{{ $order->sub_total }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('Discount') }}(-) :
                                                {{ $setting->currency_icon }}{{ $order->coupon_coast }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('Shipping') }} :
                                                {{ $setting->currency_icon }}{{ $order->shipping_cost }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('Tax') }} :
                                                {{ $setting->currency_icon }}{{ $order->order_vat }}</div>
                                        </div>

                                        <hr class="mt-2 mb-2">
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-value invoice-detail-value-lg">
                                                {{ __('Total') }} :
                                                {{ $setting->currency_icon }}{{ $order->total_amount }}</div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="text-md-right print-area">
                        <hr>
                        <button class="btn btn-success btn-icon icon-left" onclick="window.print()"><i
                                class="fas fa-print"></i> {{ __('Print') }}</button>
                        <button class="btn btn-danger btn-icon icon-left" data-toggle="modal" data-target="#deleteModal"
                            onclick="deleteData({{ $order->id }})"><i class="fas fa-times"></i>
                            {{ __('Delete') }}</button>
                    </div>
                </div>
            </div>

        </section>
    </div>
    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", '{{ url('admin/delete-order/') }}' + "/" + id)
        }
    </script>
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
