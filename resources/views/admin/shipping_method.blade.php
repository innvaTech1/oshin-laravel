@extends('admin.master_layout')
@section('title')
    <title>{{ __('Shipping') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Shipping') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Shipping') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.shipping.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
                    {{ __('Add New') }}</a>
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped" id="dataTable">
                                        <thead>
                                            <tr>
                                                <th>{{ __('SN') }}</th>
                                                <th>{{ __('Title') }}</th>
                                                <th>{{ __('Fee') }}</th>
                                                <th>{{ __('Status') }}</th>
                                                <th>{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($shippings as $index => $shipping)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $shipping->title }}</td>
                                                    <td>
                                                        @if ($shipping->is_free == 1)
                                                            {{ currency_icon() }}{{ $shipping->minimum_order }} Up
                                                            Condition
                                                        @else
                                                            {{ currency_icon() }}{{ $shipping->fee }}
                                                        @endif

                                                    </td>
                                                    <td>
                                                        @if ($shipping->status == 1)
                                                            <a href="javascript:;"
                                                                onclick="changeProductTaxStatus({{ $shipping->id }})">
                                                                <input id="status_toggle" type="checkbox" checked
                                                                    data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                    data-off="{{ __('Inactive') }}" data-onstyle="success"
                                                                    data-offstyle="danger">
                                                            </a>
                                                        @else
                                                            <a href="javascript:;"
                                                                onclick="changeProductTaxStatus({{ $shipping->id }})">
                                                                <input id="status_toggle" type="checkbox"
                                                                    data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                    data-off="{{ __('Inactive') }}" data-onstyle="success"
                                                                    data-offstyle="danger">
                                                            </a>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <a href="{{ route('admin.shipping.edit', $shipping->id) }}"
                                                            class="btn btn-primary btn-sm"><i class="fa fa-edit"
                                                                aria-hidden="true"></i></a>

                                                        <a href="javascript:;" data-toggle="modal"
                                                            data-target="#deleteModal" class="btn btn-danger btn-sm"
                                                            onclick="deleteData({{ $shipping->id }})"><i
                                                                class="fa fa-trash" aria-hidden="true"></i></a>
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

    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", '{{ url('admin/shipping/') }}' + "/" + id)
        }

        function changeProductTaxStatus(id) {

            $.ajax({
                type: "put",
                data: {
                    _token: '{{ csrf_token() }}'
                },
                url: "{{ url('/admin/shipping-status/') }}" + "/" + id,
                success: function(response) {
                    toastr.success(response)
                },
                error: function(err) {
                    console.log(err);

                }
            })
        }
    </script>
@endsection
