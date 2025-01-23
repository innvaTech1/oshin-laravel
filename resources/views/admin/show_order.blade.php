@extends('admin.master_layout')

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

    }
</style>

@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>INVOICE_{{ $order->order_id }}_OSHIN</h1>
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
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="invoice-title">
                                        <h2><img src="{{ asset($setting->logo) }}" alt="" width="120px"></h2>
                                    </div>
                                    <div>
                                        <div class="invoice-number">Order #{{ $order->order_id }}</div>
                                        <div class="invoice_details">
                                            <p>
                                                <strong>Invoice Date: </strong>{{ $order->created_at->format('d-m-Y') }}
                                            </p>
                                            <p>
                                                <strong>Order No: </strong>{{ $order->order_id }}
                                            </p>
                                            <p>
                                                <strong>Order Date: </strong>{{ $order->created_at->format('d-m-Y') }}
                                            </p>

                                        </div>
                                    </div>
                                </div>
                                <hr>
                                @php
                                    $orderAddress = $order->orderAddress;
                                @endphp
                                <div class="row">
                                    <div class="col-md-4">
                                        <address>
                                            {!! $setting->invoice_address !!}
                                        </address>
                                    </div>

                                    <div class="col-md-4">
                                        <address>
                                            <strong>{{ __('Billing Address') }}:</strong>
                                            <p class="mb-0">
                                                Name: {{ $orderAddress->billing_name }}
                                            </p>
                                            @if ($orderAddress->billing_email)
                                                <p class="mb-0">
                                                    Email: {{ $orderAddress->billing_email }}
                                                </p>
                                            @endif
                                            @if ($orderAddress->billing_phone)
                                                <p class="mb-0">
                                                    Phone: {{ $orderAddress->billing_phone }}
                                                </p>
                                            @endif
                                            <p class="mb-0">
                                                Address: {{ $orderAddress->billing_address }}
                                            </p>
                                            <p class="mb-0">
                                                City: {{ $orderAddress->billing_city }}
                                            </p>
                                            <p class="mb-0">
                                                State: {{ $orderAddress->billing_state }}
                                            </p>
                                        </address>
                                    </div>
                                    <div class="col-md-4">
                                        <address>
                                            <strong>{{ __('Shipping Address') }} :</strong>

                                            <p class="mb-0">
                                                Name: {{ $orderAddress->shipping_name }}
                                            </p>
                                            @if ($orderAddress->shipping_email)
                                                <p class="mb-0">
                                                    Email: {{ $orderAddress->shipping_email }}
                                                </p>
                                            @endif
                                            @if ($orderAddress->shipping_phone)
                                                <p class="mb-0">
                                                    Phone: {{ $orderAddress->shipping_phone }}
                                                </p>
                                            @endif
                                            <p class="mb-0">
                                                Address: {{ $orderAddress->shipping_address }}
                                            </p>
                                            <p class="mb-0">
                                                City: {{ $orderAddress->shipping_city }}
                                            </p>
                                            <p class="mb-0">
                                                State: {{ $orderAddress->shipping_state }}
                                            </p>
                                        </address>
                                    </div>
                                </div>
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
                                        <div class="mt-4">
                                            <strong>Customer Note: </strong>{{ $order->additional_info }}
                                        </div>
                                    </div>

                                    <div class="col-lg-6 text-right">
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('Subtotal') }} :
                                                {{ currency_icon() }}{{ $order->sub_total }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('Discount') }}(-) :
                                                {{ currency_icon() }}{{ $order->coupon_coast }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('Shipping') }} :
                                                {{ currency_icon() }}{{ $order->shipping_cost }}</div>
                                        </div>
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-name">{{ __('Tax') }} :
                                                {{ currency_icon() }}{{ $order->order_vat }}</div>
                                        </div>

                                        <hr class="mt-2 mb-2">
                                        <div class="invoice-detail-item">
                                            <div class="invoice-detail-value invoice-detail-value-lg">
                                                {{ __('Total') }} :
                                                {{ currency_icon() }}{{ $order->total_amount }}</div>
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
