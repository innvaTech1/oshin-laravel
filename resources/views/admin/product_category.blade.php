@extends('admin.master_layout')
@section('title')
    <title>{{ __('Product Category') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Product Category') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Product Category') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.product-category.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
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
                                                {{-- <th>{{ __('Delivery Charge') }}</th> --}}
                                                <th>{{ __('Status') }}</th>
                                                <th>{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($categories as $index => $category)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $category->name }}</td>
                                                    <td>{{ $category->slug }}</td>
                                                    {{-- <td>{{ currency($category->delivery_charge) }}</td> --}}
                                                    <td>
                                                        @if ($category->status == 1)
                                                            <a href="javascript:;"
                                                                onclick="changeProductCategoryStatus({{ $category->id }})">
                                                                <input id="status_toggle" type="checkbox" checked
                                                                    data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                    data-off="{{ __('Inactive') }}" data-onstyle="success"
                                                                    data-offstyle="danger">
                                                            </a>
                                                        @else
                                                            <a href="javascript:;"
                                                                onclick="changeProductCategoryStatus({{ $category->id }})">
                                                                <input id="status_toggle" type="checkbox"
                                                                    data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                    data-off="{{ __('Inactive') }}" data-onstyle="success"
                                                                    data-offstyle="danger">
                                                            </a>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <a href="{{ route('admin.product-category.edit', $category->id) }}"
                                                            class="btn btn-primary btn-sm"><i class="fa fa-edit"
                                                                aria-hidden="true"></i></a>
                                                        @php
                                                            $isPopular = false;
                                                            if ($pupoularCategory->category_id_one == $category->id) {
                                                                $isPopular = true;
                                                            } elseif (
                                                                $pupoularCategory->category_id_two == $category->id
                                                            ) {
                                                                $isPopular = true;
                                                            } elseif (
                                                                $pupoularCategory->category_id_three == $category->id
                                                            ) {
                                                                $isPopular = true;
                                                            } elseif (
                                                                $pupoularCategory->category_id_four == $category->id
                                                            ) {
                                                                $isPopular = true;
                                                            }

                                                            $isThreeCat = false;
                                                            if ($threeColCategory->category_id_one == $category->id) {
                                                                $isThreeCat = true;
                                                            } elseif (
                                                                $threeColCategory->category_id_two == $category->id
                                                            ) {
                                                                $isThreeCat = true;
                                                            } elseif (
                                                                $threeColCategory->category_id_three == $category->id
                                                            ) {
                                                                $isThreeCat = true;
                                                            }
                                                        @endphp
                                                        @if ($category->subCategories->count() == 0 && $category->products->count() == 0 && !$isThreeCat && !$isPopular)
                                                            <a href="javascript:;" data-toggle="modal"
                                                                data-target="#deleteModal" class="btn btn-danger btn-sm"
                                                                onclick="deleteData({{ $category->id }})"><i
                                                                    class="fa fa-trash" aria-hidden="true"></i></a>
                                                        @else
                                                            <a href="javascript:;" data-toggle="modal"
                                                                data-target="#canNotDeleteModal"
                                                                class="btn btn-danger btn-sm" disabled><i
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

    <!-- Modal -->
    <div class="modal fade" id="canNotDeleteModal" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    {{ __('You can not delete this category. Because there are one or more sub categories or child categories or popular categories or home page three column categories or products has been created in this category.') }}
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">{{ __('Close') }}</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", '{{ url('admin/product-category/') }}' + "/" + id)
        }

        function changeProductCategoryStatus(id) {

            $.ajax({
                type: "put",
                data: {
                    _token: '{{ csrf_token() }}'
                },
                url: "{{ url('/admin/product-category-status/') }}" + "/" + id,
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
