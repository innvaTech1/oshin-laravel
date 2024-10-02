@extends('admin.master_layout')
@section('title')
    <title>{{ $title }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ $title }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
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
                                                <th width="5%">{{ __('SN') }}</th>
                                                <th width="10%">{{ __('Customer') }}</th>
                                                <th width="10%">{{ __('Order Id') }}</th>
                                                <th width="10%">{{ __('Date') }}</th>
                                                <th width="10%">{{ __('Quantity') }}</th>
                                                <th width="10%">{{ __('Amount') }}</th>
                                                <th width="10%">{{ __('Order Status') }}</th>
                                                <th width="10%">{{ __('Payment') }}</th>
                                                <th width="15%">{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($orders as $index => $order)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $order->user->name ?? $order->orderAddress->billing_name }}</td>
                                                    <td>{{ $order->order_id }}</td>
                                                    <td>{{ $order->created_at->format('d F, Y') }}</td>
                                                    <td>{{ $order->product_qty }}</td>
                                                    <td>{{ $setting->currency_icon }}{{ $order->total_amount }}
                                                    </td>
                                                    <td>
                                                        @if ($order->order_status == 1)
                                                            <span class="badge badge-success">{{ __('Pregress') }}
                                                            </span>
                                                        @elseif ($order->order_status == 2)
                                                            <span class="badge badge-success">{{ __('Delivered') }}
                                                            </span>
                                                        @elseif ($order->order_status == 3)
                                                            <span class="badge badge-success">{{ __('Completed') }}
                                                            </span>
                                                        @elseif ($order->order_status == 4)
                                                            <span class="badge badge-danger">{{ __('Declined') }}
                                                            </span>
                                                        @else
                                                            <span class="badge badge-danger">{{ __('Pending') }}</span>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($order->payment_status == 1)
                                                            <span class="badge badge-success">{{ __('success') }}
                                                            </span>
                                                        @else
                                                            <span class="badge badge-danger">{{ __('Pending') }}</span>
                                                        @endif
                                                    </td>

                                                    <td>

                                                        <a href="{{ route('admin.order-show', $order->id) }}"
                                                            class="btn btn-primary btn-sm"><i class="fa fa-eye"
                                                                aria-hidden="true"></i></a>

                                                        <a href="javascript:;" data-toggle="modal"
                                                            data-target="#deleteModal" class="btn btn-danger btn-sm"
                                                            onclick="deleteData({{ $order->id }})"><i
                                                                class="fa fa-trash" aria-hidden="true"></i></a>

                                                        <a href="javascript:;" data-toggle="modal"
                                                            data-target="#orderModalId-{{ $order->id }}"
                                                            class="btn btn-warning btn-sm"><i class="fas fa-truck"
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


    <!-- Modal -->
    @foreach ($orders as $index => $order)
        <div class="modal fade" id="orderModalId-{{ $order->id }}" tabindex="-1" role="dialog"
            aria-labelledby="modelTitleId" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">{{ __('Order Status') }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form action="{{ route('admin.update-order-status', $order->id) }}" method="POST">
                                @method('PUT')
                                @csrf
                                <div class="form-group">
                                    <label for="">{{ __('Payment') }}</label>
                                    <select name="payment_status" id="" class="form-control">
                                        <option {{ $order->payment_status == 0 ? 'selected' : '' }} value="0">
                                            {{ __('Pending') }}</option>
                                        <option {{ $order->payment_status == 1 ? 'selected' : '' }} value="1">
                                            {{ __('Success') }}</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">{{ __('Order') }}</label>
                                    <select name="order_status" id="" class="form-control">
                                        <option {{ $order->order_status == 0 ? 'selected' : '' }} value="0">
                                            {{ __('Pending') }}</option>
                                        <option {{ $order->order_status == 1 ? 'selected' : '' }} value="1">
                                            {{ __('In Progress') }}</option>
                                        <option {{ $order->order_status == 2 ? 'selected' : '' }} value="2">
                                            {{ __('Delivered') }}</option>
                                        <option {{ $order->order_status == 3 ? 'selected' : '' }} value="3">
                                            {{ __('Completed') }}</option>
                                        <option {{ $order->order_status == 4 ? 'selected' : '' }} value="4">
                                            {{ __('Declined') }}</option>
                                    </select>
                                </div>


                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">{{ __('Close') }}</button>
                        <button type="submit" class="btn btn-primary">{{ __('Update Status') }}</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    @endforeach

    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", '{{ url('admin/delete-order/') }}' + "/" + id)
        }
    </script>
@endsection
