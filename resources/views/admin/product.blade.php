@extends('admin.master_layout')

@section('title')
    <title>{{ __('Products') }}</title>
@endsection

@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Products') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Products') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.product.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
                    {{ __('Add New') }}</a>
                <button id="deleteSelectedButton" class="btn btn-danger d-none" onclick="confirmDeleteSelected()">
                    <i class="fas fa-trash"></i> {{ __('Delete Selected') }}
                </button>
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped" id="dataTable">
                                        <thead>
                                            <tr>
                                                <th width="5%">
                                                    <input type="checkbox" id="selectAll">
                                                </th>
                                                <th width="5%">{{ __('SN') }}</th>
                                                <th width="30%">{{ __('Name') }}</th>
                                                <th width="10%">{{ __('Price') }}</th>
                                                <th width="15%">{{ __('Photo') }}</th>
                                                <th width="15%">{{ __('Type') }}</th>
                                                <th width="10%">{{ __('Status') }}</th>
                                                <th width="15%">{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($products as $index => $product)
                                                <tr>
                                                    <td>
                                                        <input type="checkbox" class="selectProduct"
                                                            value="{{ $product->id }}">
                                                    </td>
                                                    <td>{{ ++$index }}</td>
                                                    <td><a
                                                            href="{{ route('product-detail', $product->slug) }}">{{ $product->short_name }}</a>
                                                    </td>
                                                    <td>{{ currency_icon() }}{{ $product->price }}</td>
                                                    <td>
                                                        <img class="rounded-circle"
                                                            src="{{ asset($product->thumb_image) }}" alt=""
                                                            width="100px" height="100px">
                                                    </td>
                                                    <td>{{ $product->type }}</td>
                                                    <td>
                                                        @if ($product->status == 1)
                                                            <a href="javascript:;"
                                                                onclick="changeProductStatus({{ $product->id }})">
                                                                <input id="status_toggle" type="checkbox" checked
                                                                    data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                    data-off="{{ __('InActive') }}" data-onstyle="success"
                                                                    data-offstyle="danger">
                                                            </a>
                                                        @else
                                                            <a href="javascript:;"
                                                                onclick="changeProductStatus({{ $product->id }})">
                                                                <input id="status_toggle" type="checkbox"
                                                                    data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                    data-off="{{ __('InActive') }}" data-onstyle="success"
                                                                    data-offstyle="danger">
                                                            </a>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <a href="{{ route('admin.product.edit', $product->id) }}"
                                                            class="btn btn-primary btn-sm"><i class="fa fa-edit"
                                                                aria-hidden="true"></i></a>
                                                        @php
                                                            $existOrder = $orderProducts
                                                                ->where('product_id', $product->id)
                                                                ->count();
                                                        @endphp
                                                        @if ($existOrder == 0)
                                                            <a href="javascript:;" data-toggle="modal"
                                                                data-target="#deleteModal" class="btn btn-danger btn-sm"
                                                                onclick="deleteData({{ $product->id }})"><i
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
            </div>
        </section>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="canNotDeleteModal" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    {{ __('You can not delete this product. Because there are one or more order has been created in this product.') }}
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">{{ __('Close') }}</button>
                </div>
            </div>
        </div>
    </div>

    @push('js')
        <script>
            function deleteData(id) {
                $("#deleteForm").attr("action", '{{ url('admin/product/') }}' + "/" + id)
            }

            function changeProductStatus(id) {
                $.ajax({
                    type: "put",
                    data: {
                        _token: '{{ csrf_token() }}'
                    },
                    url: "{{ url('/admin/product-status/') }}" + "/" + id,
                    success: function(response) {
                        toastr.success(response)
                    },
                    error: function(err) {
                        console.log(err);

                    }
                })
            }
        </script>
        <script>
            const deleteSelectedButton = document.getElementById('deleteSelectedButton');
            const selectAllCheckbox = document.getElementById('selectAll');
            const productCheckboxes = document.querySelectorAll('.selectProduct');

            // Show/hide the delete button based on checkbox selection
            function toggleDeleteButton() {
                const anyChecked = [...productCheckboxes].some(cb => cb.checked);
                deleteSelectedButton.classList.toggle('d-none', !anyChecked);
            }

            // Handle "Select All" checkbox
            selectAllCheckbox.addEventListener('change', function() {
                productCheckboxes.forEach(checkbox => checkbox.checked = this.checked);
                toggleDeleteButton();
            });

            // Handle individual product checkboxes
            productCheckboxes.forEach(checkbox => {
                checkbox.addEventListener('change', function() {
                    const allSelected = [...productCheckboxes].every(cb => cb.checked);
                    selectAllCheckbox.checked = allSelected;
                    toggleDeleteButton();
                });
            });

            // Confirm and send delete request
            function confirmDeleteSelected() {
                const selectedIds = [...productCheckboxes]
                    .filter(cb => cb.checked)
                    .map(cb => cb.value);

                if (selectedIds.length === 0) return;

                Swal.fire({
                    title: '{{ __('Are you sure?') }}',
                    text: '{{ __('You will not be able to revert this!') }}',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: '{{ __('Yes, Proceed!') }}'
                }).then((result) => {
                    if (result.isConfirmed) {
                        // Send the AJAX request
                        $.ajax({
                            url: "{{ route('admin.product.bulk-delete') }}",
                            method: 'POST',
                            data: {
                                _token: '{{ csrf_token() }}',
                                ids: selectedIds
                            },
                            success: function(response) {
                                Swal.fire(
                                    '{{ __('Deleted!') }}',
                                    '{{ __('Your selected products have been deleted.') }}',
                                    'success'
                                ).then(() => {
                                    setTimeout(function() {
                                        location
                                            .reload();
                                    }, 2000);
                                });
                            }
                            error: function(err) {
                                console.error(err);
                                Swal.fire(
                                    '{{ __('Error!') }}',
                                    '{{ __('Something went wrong. Please try again later.') }}',
                                    'error'
                                );
                            }
                        });
                    }
                });
            }
        </script>
    @endpush
@endsection
