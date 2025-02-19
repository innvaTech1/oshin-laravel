@extends('admin.master_layout')
@section('title')
    <title>{{ __('Product Brand') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Product Brand') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Product Brand') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.product-brand.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
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
                                                <th>{{ __('Name') }}</th>
                                                <th>{{ __('Slug') }}</th>
                                                <th>{{ __('Logo') }}</th>
                                                <th>{{ __('Rating') }}</th>
                                                <th>{{ __('Status') }}</th>
                                                <th>{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($brands as $index => $brand)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $brand->name }}</td>
                                                    <td>{{ $brand->slug }}</td>
                                                    <td> <img class="rounded-circle" src="{{ asset($brand->logo) }}"
                                                            alt="" width="50px"></td>
                                                    <td>{{ $brand->rating }}</td>
                                                    <td>
                                                        @if ($brand->status == 1)
                                                            <a href="javascript:;"
                                                                onclick="changeProductBrandStatus({{ $brand->id }})">
                                                                <input id="status_toggle" type="checkbox" checked
                                                                    data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                    data-off="{{ __('InActive') }}" data-onstyle="success"
                                                                    data-offstyle="danger">
                                                            </a>
                                                        @else
                                                            <a href="javascript:;"
                                                                onclick="changeProductBrandStatus({{ $brand->id }})">
                                                                <input id="status_toggle" type="checkbox"
                                                                    data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                    data-off="{{ __('InActive') }}" data-onstyle="success"
                                                                    data-offstyle="danger">
                                                            </a>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <a href="{{ route('admin.product-brand.edit', $brand->id) }}"
                                                            class="btn btn-primary btn-sm"><i class="fa fa-edit"
                                                                aria-hidden="true"></i></a>
                                                        @if ($brand->products->count() == 0)
                                                            <a href="javascript:;" data-toggle="modal"
                                                                data-target="#deleteModal" class="btn btn-danger btn-sm"
                                                                onclick="deleteData({{ $brand->id }})"><i
                                                                    class="fa fa-trash" aria-hidden="true"></i></a>
                                                        @endif
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
            $("#deleteForm").attr("action", '{{ url('admin/product-brand/') }}' + "/" + id)
        }

        function changeProductBrandStatus(id) {

            $.ajax({
                type: "put",
                data: {
                    _token: '{{ csrf_token() }}'
                },
                url: "{{ url('/admin/product-brand-status/') }}" + "/" + id,
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
