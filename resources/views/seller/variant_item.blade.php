@extends('seller.master_layout')
@section('title')
    <title>{{ __('user.Product Variant Item') }}</title>
@endsection
@section('seller-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('user.Product Variant Item') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route('seller.product.index') }}">{{ __('user.Products') }}</a></div>
                    <div class="breadcrumb-item active"><a
                            href="{{ route('seller.product-variant', $product->id) }}">{{ __('user.Product Variant') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('user.Product Variant Item') }}</div>
                </div>
            </div>
            <div class="section-body">
                <a href="{{ route('seller.product-variant', $product->id) }}" class="btn btn-primary"><i
                        class="fas fa-backward"></i> {{ __('user.Go Back') }}</a>

                <a href="javascript:;" data-toggle="modal" data-target="#createVariantItem" class="btn btn-primary"><i
                        class="fas fa-plus"></i> {{ __('user.Add New') }}</a>

                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-header">
                                <h1>{{ __('user.Product') }} : {{ $product->short_name }}</h1>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped" id="dataTable">
                                        <thead>
                                            <tr>
                                                <th width="10%">{{ __('user.SN') }}</th>
                                                <th width="10%">{{ __('user.Varriant') }}</th>
                                                <th width="10%">{{ __('user.Item') }}</th>
                                                <th width="10%">{{ __('user.Price') }}</th>
                                                <th width="10%">{{ __('user.Default') }}</th>
                                                <th width="10%">{{ __('user.Status') }}</th>
                                                <th width="10%">{{ __('user.Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($variantItems as $index => $variantItem)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $variantItem->variant->name }}</td>
                                                    <td>{{ $variantItem->name }}</td>
                                                    <td>{{ currency_icon() }}{{ $variantItem->price }}</td>
                                                    <td>
                                                        @if ($variantItem->is_default == 1)
                                                            <span class="badge badge-success">{{ __('user.Yes') }}</span>
                                                        @else
                                                            <span class="badge badge-danger">{{ __('user.No') }}</span>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($variantItem->status == 1)
                                                            <a href="javascript:;"
                                                                onclick="changeVariantStatus({{ $variantItem->id }})">
                                                                <input id="status_toggle" type="checkbox" checked
                                                                    data-toggle="toggle" data-on="{{ __('user.Active') }}"
                                                                    data-off="{{ __('user.Inactive') }}"
                                                                    data-onstyle="success" data-offstyle="danger">
                                                            </a>
                                                        @else
                                                            <a href="javascript:;"
                                                                onclick="changeVariantStatus({{ $variantItem->id }})">
                                                                <input id="status_toggle" type="checkbox"
                                                                    data-toggle="toggle" data-on="{{ __('user.Active') }}"
                                                                    data-off="{{ __('user.InActive') }}"
                                                                    data-onstyle="success" data-offstyle="danger">
                                                            </a>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" data-toggle="modal"
                                                            data-target="#editVariantItem-{{ $variantItem->id }}"
                                                            class="btn btn-primary btn-sm"><i class="fa fa-edit"
                                                                aria-hidden="true"></i></a>
                                                        <a href="javascript:;" data-toggle="modal"
                                                            data-target="#deleteModal" class="btn btn-danger btn-sm"
                                                            onclick="deleteData({{ $variantItem->id }})"><i
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
    <!-- Modal -->
    <div class="modal fade" id="createVariantItem" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{{ __('user.Product Variant Item') }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form action="{{ route('seller.store-product-variant-item') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="form-group col-12">
                                    <label>{{ __('user.Variant Name') }}</label>
                                    <input type="text" id="name" class="form-control" value="{{ $variant->name }}"
                                        readonly>
                                    <input type="hidden" id="product_id" class="form-control" name="product_id"
                                        value="{{ $product->id }}">
                                    <input type="hidden" id="product_id" class="form-control" name="variant_id"
                                        value="{{ $variant->id }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{ __('user.Item Name') }} <span class="text-danger">*</span></label>
                                    <input type="text" id="name" class="form-control" name="name">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{ __('user.Price') }} <span>{{ __('user.(Set 0 to make it free)') }}</span>
                                        <span class="text-danger">*</span></label>
                                    <input type="text" id="price" class="form-control" name="price">
                                </div>

                                @if ($variantItems->count() != 0)
                                    <div class="form-group col-12">
                                        <label>{{ __('user.Is Default ?') }} <span class="text-danger">*</span></label>
                                        <select name="is_default" class="form-control">
                                            <option value="0">{{ __('user.No') }}</option>
                                            <option value="1">{{ __('user.Yes') }}</option>
                                        </select>
                                    </div>
                                @endif
                                <div class="form-group col-12">
                                    <label>{{ __('user.Status') }} <span class="text-danger">*</span></label>
                                    <select name="status" class="form-control">
                                        <option value="1">{{ __('user.Active') }}</option>
                                        <option value="0">{{ __('user.Inactive') }}</option>
                                    </select>
                                </div>


                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">{{ __('user.Save') }}</button>
                                    <button type="button" class="btn btn-danger"
                                        data-dismiss="modal">{{ __('user.Close') }}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- edit modal --}}
    @foreach ($variantItems as $index => $variantItem)
        <div class="modal fade" id="editVariantItem-{{ $variantItem->id }}" tabindex="-1" role="dialog"
            aria-labelledby="modelTitleId" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">{{ __('user.Product Variant Item') }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form action="{{ route('seller.update-product-variant-item', $variantItem->id) }}"
                                method="POST">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="form-group col-12">
                                        <label>{{ __('user.Variant Name') }}</label>
                                        <input type="text" id="name" class="form-control"
                                            value="{{ $variant->name }}" readonly>
                                        <input type="hidden" id="product_id" class="form-control" name="product_id"
                                            value="{{ $product->id }}">
                                        <input type="hidden" id="product_id" class="form-control" name="variant_id"
                                            value="{{ $variant->id }}">
                                    </div>

                                    <div class="form-group col-12">
                                        <label>{{ __('user.Item Name') }} <span class="text-danger">*</span></label>
                                        <input type="text" id="name" class="form-control" name="name"
                                            value="{{ $variantItem->name }}">
                                    </div>

                                    <div class="form-group col-12">
                                        <label>{{ __('user.Price') }}
                                            <span>({{ __('user.Set 0 to make it free') }})</span> <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="price" class="form-control" name="price"
                                            value="{{ $variantItem->price }}">
                                    </div>

                                    @if ($variantItems->count() != 1)
                                        <div class="form-group col-12">
                                            <label>{{ __('user.Is Default ?') }} <span
                                                    class="text-danger">*</span></label>
                                            <select name="is_default" class="form-control">
                                                <option {{ $variantItem->is_default == 0 ? 'selected' : '' }}
                                                    value="0">{{ __('user.No') }}</option>
                                                <option {{ $variantItem->is_default == 1 ? 'selected' : '' }}
                                                    value="1">{{ __('user.Yes') }}</option>
                                            </select>
                                        </div>
                                    @endif
                                    <div class="form-group col-12">
                                        <label>{{ __('user.Status') }} <span class="text-danger">*</span></label>
                                        <select name="status" class="form-control">
                                            <option {{ $variantItem->status == 1 ? 'selected' : '' }} value="1">
                                                {{ __('user.Active') }}</option>
                                            <option {{ $variantItem->status == 0 ? 'selected' : '' }} value="0">
                                                {{ __('user.Inactive') }}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <button class="btn btn-primary">{{ __('user.Update') }}</button>
                                        <button type="button" class="btn btn-danger"
                                            data-dismiss="modal">{{ __('user.Close') }}</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach

    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", '{{ url('seller/delete-product-variant-item/') }}' + "/" + id)
        }

        function changeVariantStatus(id) {
            $.ajax({
                type: "put",
                data: {
                    _token: '{{ csrf_token() }}'
                },
                url: "{{ url('/seller/product-variant-item-status/') }}" + "/" + id,
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
