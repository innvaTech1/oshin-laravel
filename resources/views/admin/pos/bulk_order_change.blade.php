@extends('admin.master_layout')
@section('title')
    <title>{{ __('Bulk Order Change') }}</title>
@endsection

@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Bulk Order Change') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Status Change') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.pos.bulk.order.serch') }}" method="get">

                                    <div class="row">
                                        <div class="form-group col-6">
                                            <label>{{ __('Form') }} <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control datetimepicker_mask" name="form"
                                                value="{{ old('form') }}" placeholder="2025-09-14 14:57:00"
                                                autocomplete="off">
                                        </div>
                                        <div class="form-group col-6">
                                            <label>{{ __('To') }} <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control datetimepicker_mask" name="to"
                                                value="{{ old('to') }}" placeholder="2025-09-14 14:57:00"
                                                autocomplete="off">
                                        </div>
                                        <div class="form-group col-6">
                                            <label for="">{{ __('Payment') }}</label>
                                            <select name="payment_status" id="" class="form-control">
                                                <option value="" disabled selected>
                                                    {{ __('Select a Payment Status') }}</option>
                                                <option value="0">{{ __('Pending') }}</option>
                                                <option value="1">{{ __('Success') }}</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-6">
                                            <label for="">{{ __('Order') }}</label>
                                            <select name="order_status" id="" class="form-control">
                                                <option value="" disabled selected>{{ __('Select a Order Status') }}
                                                </option>
                                                <option value="0">{{ __('Pending') }}</option>
                                                <option value="1">{{ __('In Progress') }}</option>
                                                <option value="2">{{ __('Delivered') }}</option>
                                                <option value="3">{{ __('Completed') }}</option>
                                                <option value="4">{{ __('Declined') }}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-success">{{ __('Search Order') }}</button>
                                </form>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive table-invoice">
                                    <form action="{{ route('admin.pos.bulk.order.status.change') }}" method="POST">
                                        @csrf
                                        @method('PUT')
                                        <div class="row">
                                            <div class="form-group col-10">
                                                <select name="newStatus" id="" class="form-control">
                                                    <option value="" disabled selected>
                                                        {{ __('Select a Order Status') }}</option>
                                                    <option value="0">{{ __('Pending') }}</option>
                                                    <option value="1">{{ __('In Progress') }}</option>
                                                    <option value="2">{{ __('Delivered') }}</option>
                                                    <option value="3">{{ __('Completed') }}</option>
                                                    <option value="4">{{ __('Declined') }}</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-2">
                                                <button type="submit"
                                                    class="btn btn-success">{{ __('Update Order Status') }}</button>
                                            </div>
                                        </div>

                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th width="5%"><input type="checkbox" id="select-all-checkbox"></th>
                                                    <th width="5%">{{ __('SN') }}</th>
                                                    <th width="10%">{{ __('Customer') }}</th>
                                                    <th width="10%">{{ __('Order Id') }}</th>
                                                    <th width="10%">{{ __('Date') }}</th>
                                                    <th width="10%">{{ __('Quantity') }}</th>
                                                    <th width="10%">{{ __('Amount') }}</th>
                                                    <th width="10%">{{ __('Order Status') }}</th>
                                                    <th width="10%">{{ __('Payment') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                @foreach ($filteredOrders as $index => $order)
                                                    <tr>
                                                        <td><input type="checkbox" class="select-checkbox" name="orderIds[]"
                                                                value="{{ $order->id }}"></td>
                                                        <td>{{ ++$index }}</td>
                                                        <td>{{ $order->user->name }}</td>
                                                        <td>{{ $order->order_id }}</td>
                                                        <td>{{ $order->created_at->format('d F, Y') }}</td>
                                                        <td>{{ $order->product_qty }}</td>
                                                        <td>{{ currency_icon() }}{{ round($order->total_amount) }}</td>
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
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>


                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>

    <script>
        $(document).ready(function() {
            // Handle "Select All" checkbox
            $('#select-all-checkbox').change(function() {
                var isChecked = $(this).prop('checked');
                $('input[type="checkbox"]').prop('checked', isChecked);
            });
        });
    </script>



    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", '{{ url('admin/delete-order/') }}' + "/" + id)
        }
    </script>
@endsection
