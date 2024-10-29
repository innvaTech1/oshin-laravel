@extends('admin.master_layout')
@section('title')
    <title>{{ __('Dashboard') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Dashbaord') }}</h1>
            </div>

            <div class="section-body">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Today Order') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $todayOrders->count() }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Today Pending Order') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $todayOrders->where('order_status', 0)->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Order') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $totalOrders->count() }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Pending Order') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $totalOrders->where('order_status', 0)->count() }}
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-warning">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Declined Order') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $totalOrders->where('order_status', 4)->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-warning">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Complete Order') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $totalOrders->where('order_status', 3)->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-warning">
                                <i class="far fa-newspaper"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Today Earning') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ currency_icon() }}{{ round($todayOrders->sum('amount_real_currency'), 2) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-warning">
                                <i class="far fa-newspaper"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Today Pending Earning') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ currency_icon() }}{{ round($todayOrders->where('payment_status', 0)->sum('amount_real_currency'), 2) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="far fa-newspaper"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('This month Earning') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ currency_icon() }}{{ round($monthlyOrders->sum('amount_real_currency'), 2) }}
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="far fa-newspaper"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('This Year Earning') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ currency_icon() }}{{ round($yearlyOrders->sum('amount_real_currency'), 2) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="far fa-newspaper"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Earning') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ currency_icon() }}{{ round($totalOrders->sum('amount_real_currency'), 2) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="fas fa-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Today Product Sale') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $todayOrders->where('order_status', 3)->sum('product_qty') }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-danger">
                                <i class="fas fa-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('This Month Product Sale') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $monthlyOrders->where('order_status', 3)->sum('product_qty') }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-danger">
                                <i class="fas fa-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('This Year Product Sale') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $yearlyOrders->where('order_status', 3)->sum('product_qty') }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-danger">
                                <i class="fas fa-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Product Sale') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $totalOrders->where('order_status', 3)->sum('product_qty') }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-danger">
                                <i class="far fa-check-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Product') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $products->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="far fa-check-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Product Report') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $reports->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="far fa-check-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Product Review') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $reviews->count() }}
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="far fa-user"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Seller') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $sellers->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-success">
                                <i class="far fa-user"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total User') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $users->count() }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="far fa-user"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Subscriber') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $subscribers->count() }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="far fa-check-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Blog') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $blogs->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="far fa-check-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Product Category') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $categories->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                        <div class="card card-statistic-1">
                            <div class="card-icon bg-primary">
                                <i class="far fa-check-circle"></i>
                            </div>
                            <div class="card-wrap">
                                <div class="card-header">
                                    <h4>{{ __('Total Brand') }}</h4>
                                </div>
                                <div class="card-body">
                                    {{ $brands->count() }}
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-header">
                                <h3>{{ __('Today New Order') }}</h3>
                            </div>
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
                                            @foreach ($todayOrders->where('order_status', 0) as $index => $order)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $order->user->name }}</td>
                                                    <td>{{ $order->order_id }}</td>
                                                    <td>{{ $order->created_at->format('d F, Y') }}</td>
                                                    <td>{{ $order->product_qty }}</td>
                                                    <td>{{ currency_icon() }}{{ $order->amount_real_currency }}
                                                    </td>
                                                    <td>
                                                        @if ($order->order_status == 1)
                                                            <span class="badge badge-success">{{ __('Pregress') }} </span>
                                                        @elseif ($order->order_status == 2)
                                                            <span class="badge badge-success">{{ __('Delivered') }}
                                                            </span>
                                                        @elseif ($order->order_status == 3)
                                                            <span class="badge badge-success">{{ __('Completed') }}</span>
                                                        @elseif ($order->order_status == 4)
                                                            <span class="badge badge-danger">{{ __('Declined') }}</span>
                                                        @else
                                                            <span class="badge badge-danger">{{ __('Pending') }}</span>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($order->payment_status == 1)
                                                            <span class="badge badge-success">{{ __('success') }} </span>
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
    @foreach ($todayOrders as $index => $order)
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
