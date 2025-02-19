@extends('seller.master_layout')
@section('title')
    <title>{{ $title }}</title>
@endsection
@section('seller-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ $title }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route('seller.dashboard') }}">{{ __('user.Dashboard') }}</a></div>
                    <div class="breadcrumb-item">{{ $title }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped" id="dataTable">
                                        <thead>
                                            <tr>
                                                <th width="5%">{{ __('user.SN') }}</th>
                                                <th width="10%">{{ __('user.Customer') }}</th>
                                                <th width="10%">{{ __('user.Order Id') }}</th>
                                                <th width="15%">{{ __('user.Date') }}</th>
                                                <th width="10%">{{ __('user.Quantity') }}</th>
                                                <th width="10%">{{ __('user.Amount') }}</th>
                                                <th width="10%">{{ __('user.Order Status') }}</th>
                                                <th width="10%">{{ __('user.Payment') }}</th>
                                                <th width="5%">{{ __('user.Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($orders as $index => $order)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $order->user->name }}</td>
                                                    <td>{{ $order->order_id }}</td>
                                                    <td>{{ $order->created_at->format('d F, Y') }}</td>
                                                    <td>{{ $order->product_qty }}</td>
                                                    <td>{{ currency_icon() }}{{ $order->amount_real_currency }}</td>
                                                    <td>
                                                        @if ($order->order_status == 1)
                                                            <span class="badge badge-success">{{ __('user.Pregress') }}
                                                            </span>
                                                        @elseif ($order->order_status == 2)
                                                            <span class="badge badge-success">{{ __('user.Delivered') }}
                                                            </span>
                                                        @elseif ($order->order_status == 3)
                                                            <span class="badge badge-success">{{ __('user.Completed') }}
                                                            </span>
                                                        @elseif ($order->order_status == 4)
                                                            <span class="badge badge-danger">{{ __('user.Declined') }}
                                                            </span>
                                                        @else
                                                            <span
                                                                class="badge badge-danger">{{ __('user.Pending') }}</span>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($order->payment_status == 1)
                                                            <span class="badge badge-success">{{ __('user.success') }}
                                                            </span>
                                                        @else
                                                            <span
                                                                class="badge badge-danger">{{ __('user.Pending') }}</span>
                                                        @endif
                                                    </td>

                                                    <td>

                                                        <a href="{{ route('seller.order-show', $order->id) }}"
                                                            class="btn btn-primary btn-sm"><i class="fa fa-eye"
                                                                aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>
@endsection
