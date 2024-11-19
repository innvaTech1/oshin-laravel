@extends('admin.master_layout')
@section('title')
    <title>{{ __('Products') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Edit Product') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Edit Product') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.product.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Products') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.product.update', $product->id) }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Thumbnail Image Preview') }}</label>
                                            <div>
                                                <img id="preview-img" class="admin-img"
                                                    src="{{ asset($product->thumb_image) }}" alt="">
                                            </div>

                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Thumbnail Image') }} <span class="text-danger">*</span></label>
                                            <input type="file" class="form-control-file" name="thumb_image"
                                                onchange="previewThumnailImage(event)">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="name" class="form-control" name="name"
                                                value="{{ $product->name }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Slug') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="slug" class="form-control" name="slug"
                                                value="{{ $product->slug }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Category') }} <span class="text-danger">*</span></label>
                                            <select name="category" class="form-control select2" id="category">
                                                <option value="">{{ __('Select Category') }}</option>
                                                @foreach ($categories as $category)
                                                    <option {{ $product->category_id == $category->id ? 'selected' : '' }}
                                                        value="{{ $category->id }}">{{ $category->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Sub Category') }}</label>
                                            <select name="sub_category" class="form-control select2" id="sub_category">
                                                <option value="">{{ __('Select Sub Category') }}</option>
                                                @if ($product->sub_category_id != 0)
                                                    @foreach ($subCategories as $subCategory)
                                                        <option
                                                            {{ $product->sub_category_id == $subCategory->id ? 'selected' : '' }}
                                                            value="{{ $subCategory->id }}">{{ $subCategory->name }}
                                                        </option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Child Category') }}</label>
                                            <select name="child_category" class="form-control select2" id="child_category">
                                                <option value="">{{ __('Select Child Category') }}</option>
                                                @if ($product->child_category_id != 0)
                                                    @foreach ($childCategories as $childCategory)
                                                        <option
                                                            {{ $product->child_category_id == $childCategory->id ? 'selected' : '' }}
                                                            value="{{ $childCategory->id }}">{{ $childCategory->name }}
                                                        </option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Location') }} </label>
                                            <select name="delivery_id[]" class="form-control select2" id="delivery_id"
                                                multiple>
                                                <option value="">{{ __('Location') }}</option>
                                                @foreach ($cities as $city)
                                                    <option value="{{ $city->id }}"
                                                        {{ in_array($city->id, $product->delivery_id) ? 'selected' : '' }}>
                                                        {{ $city->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Brand') }}</label>
                                            <select name="brand" class="form-control select2" id="brand">
                                                <option value="">{{ __('Select Brand') }}</option>
                                                @foreach ($brands as $brand)
                                                    <option {{ $product->brand_id == $brand->id ? 'selected' : '' }}
                                                        value="{{ $brand->id }}">{{ $brand->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('SKU') }} <span class="text-danger"></span></label>
                                            <div class="input-group">
                                                <input type="text" name="sku" class="form-control currency"
                                                    id="sku" required value="{{ $product->sku }}">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text sku_generate">
                                                        <i class="fas fa-barcode"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Price') }} <span class="text-danger">* </span></label>
                                            <input type="text" class="form-control" name="price"
                                                value="{{ $product->price }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Offer Price') }} <span class="text-danger"> </span></label>
                                            <input type="text" class="form-control" name="offer_price"
                                                value="{{ $product->offer_price }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Stock Quantity') }}</label>
                                            <input type="number" class="form-control" name="quantity"
                                                value="{{ $product->qty }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Weight') }}</label>
                                            <input type="text" class="form-control" name="weight"
                                                value="{{ $product->weight }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Product Measurement') }} </label>
                                            <input type="text" class="form-control" name="measurement"
                                                value="{{ $product->measurement }}">
                                        </div>


                                        <div class="form-group col-12">
                                            <label>{{ __('Short Description') }} <span
                                                    class="text-danger">*</span></label>
                                            <textarea name="short_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ $product->short_description }}</textarea>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Long Description') }} <span class="text-danger">*</span></label>
                                            <textarea name="long_description" id="" cols="30" rows="10" class="summernote">{{ $product->long_description }}</textarea>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Highlight') }}</label>
                                            <div>

                                                <input {{ $product->is_top == 1 ? 'checked' : '' }}
                                                    type="checkbox"name="top_product" id="top_product"> <label
                                                    for="top_product" class="mr-3">{{ __('Just for You') }}</label>

                                                <input {{ $product->new_product == 1 ? 'checked' : '' }} type="checkbox"
                                                    name="new_arrival" id="new_arrival"> <label for="new_arrival"
                                                    class="mr-3">{{ __('Sale Products') }}</label>

                                                <input {{ $product->is_best == 1 ? 'checked' : '' }} type="checkbox"
                                                    name="best_product" id="best_product"> <label for="best_product"
                                                    class="mr-3">{{ __('Best Selling Product') }}</label>

                                                <input {{ $product->is_featured == 1 ? 'checked' : '' }} type="checkbox"
                                                    name="is_featured" id="is_featured"> <label for="is_featured"
                                                    class="mr-3">{{ __('Featured Product') }}</label>
                                                <input type="checkbox" name="is_flash_deal" id="is_flash_deal"
                                                    {{ $product->is_flash_deal == 1 ? 'checked' : '' }}> <label
                                                    for="is_flash_deal" class="mr-3">{{ __('Flash Deal') }}</label>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>{{ __('Take Pre Order?') }} </span></label>
                                                <select name="is_pre_order" class="form-control" id="is_pre_order">
                                                    <option value="0"
                                                        @if (old('is_pre_order') == 0 || $product->is_pre_order == 0) selected @endif>
                                                        {{ __('No') }}</option>
                                                    <option value="1"
                                                        @if (old('is_pre_order') == 1 || $product->is_pre_order == 1) selected @endif>
                                                        {{ __('Yes') }}</option>
                                                </select>
                                                @error('is_pre_order')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-12 {{ $product->is_pre_order ? '' : 'd-none' }} release_date">
                                            <div class="form-group">
                                                <label>{{ __('Release Date') }} </label>
                                                <input type="text" name="release_date" class="form-control datepicker"
                                                    @if (!$product->is_pre_order) disabled @endif
                                                    value="{{ $product->release_date }}" />
                                                @error('release_date')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-12 {{ $product->is_pre_order ? '' : 'd-none' }} max_product">
                                            <div class="form-group">
                                                <label>{{ __('Max Quantity') }}</label>
                                                <input type="number" name="max_product" class="form-control"
                                                    @if (!$product->is_pre_order) disabled @endif
                                                    value="{{ $product->max_product }}" />
                                                @error('max_product')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>{{ __('Has Partial Payment?') }} </label>
                                                <select name="is_partial" class="form-control" id="is_partial">
                                                    <option value="0"
                                                        @if (old('is_partial') == 0 || $product->is_partial == 0) selected @endif>
                                                        {{ __('No') }}</option>
                                                    <option value="1"
                                                        @if (old('is_partial') == 1 || $product->is_partial == 1) selected @endif>
                                                        {{ __('Yes') }}</option>
                                                </select>
                                                @error('is_partial')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div
                                            class="col-md-12 {{ !$product->partial_amount ? 'd-none' : '' }} partial_amount">
                                            <div class="form-group">
                                                <label>{{ __('Partial Amount') }} <span
                                                        class="text-danger">*</span></label>

                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="">
                                                            <select name="partial_type" id=""
                                                                class="form-control">
                                                                <option value="percentage"
                                                                    @if ($product->partial_type == 'percentage') selected @endif>%
                                                                </option>
                                                                <option value="flat"
                                                                    @if ($product->partial_type == 'flat') selected @endif>Flat
                                                                </option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control currency"
                                                        name="partial_amount"
                                                        @if (!$product->partial_amount) disabled @endif
                                                        value="{{ $product->partial_amount }}">
                                                </div>
                                                @error('partial_amount')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>


                                        @if ($product->vendor_id != 0)
                                            <div class="form-group col-12">
                                                <label>{{ __('Administrator Status') }} <span data-toggle="tooltip"
                                                        data-placement="top" class="fa fa-info-circle text--primary"
                                                        title="Only for seller product"></span> <span
                                                        class="text-danger">*</span></label>
                                                <select name="approve_by_admin" class="form-control">
                                                    <option {{ $product->approve_by_admin == 1 ? 'selected' : '' }}
                                                        value="1">{{ __('Approved') }}</option>
                                                    <option {{ $product->approve_by_admin == 0 ? 'selected' : '' }}
                                                        value="0">{{ __('Pending') }}</option>
                                                </select>
                                            </div>
                                        @endif

                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option {{ $product->status == 1 ? 'selected' : '' }} value="1">
                                                    {{ __('Active') }}</option>
                                                <option {{ $product->status == 0 ? 'selected' : '' }} value="0">
                                                    {{ __('Inactive') }}</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Tags') }}</label>
                                            <input type="text" class="form-control tags" name="tags"
                                                value="{{ $product->tags }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Tax') }}</label>
                                            <select name="tax_id" class="form-control">
                                                @foreach ($productTaxs as $tax)
                                                    <option value="{{ $tax->id }}"
                                                        {{ $tax->id == $product->tax_id ? 'selected' : '' }}>
                                                        {{ $tax->title }}
                                                        ({{ $tax->price }}%)
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Return Available') }}</label>
                                            <select name="is_return" class="form-control">
                                                <option value="0" {{ $product->is_return == 0 ? 'selected' : '' }}>
                                                    {{ __('No') }}</option>
                                                <option value="1" {{ $product->is_return == 1 ? 'selected' : '' }}>
                                                    {{ __('Yes') }}</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Return Policy') }}</label>
                                            <select name="return_policy_id" class="form-control">
                                                <option value="">{{ __('Select Policy') }}</option>
                                                @foreach ($retrunPolicies as $policy)
                                                    <option value="{{ $policy->id }}"
                                                        {{ $product->return_policy_id == $policy->id ? 'selected' : '' }}>
                                                        {{ $policy->title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Warranty Policy') }}</label>
                                            <select name="warranty_policy_id" class="form-control">
                                                <option value="">{{ __('Select Policy') }}</option>
                                                @foreach ($retrunPolicies as $policy)
                                                    <option value="{{ $policy->id }}"
                                                        {{ $product->warranty_policy_id == $policy->id ? 'selected' : '' }}>
                                                        {{ $policy->title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Warranty Time') }} (Months)</label>
                                            <input type="number" class="form-control" name="warranty_times"
                                                value="{{ $product->warranty_times }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('SEO Title') }}</label>
                                            <input type="text" class="form-control" name="seo_title"
                                                value="{{ $product->seo_title }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('SEO Description') }}</label>
                                            <textarea name="seo_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ $product->seo_description }}</textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button class="btn btn-primary">{{ __('Update') }}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>


    <script>
        (function($) {
            "use strict";
            var specification = '{{ $product->is_specification == 1 ? true : false }}';
            $(document).ready(function() {
                $("#name").on("focusout", function(e) {
                    $("#slug").val(convertToSlug($(this).val()));
                })

                $("#category").on("change", function() {
                    var categoryId = $("#category").val();
                    if (categoryId) {
                        $.ajax({
                            type: "get",
                            url: "{{ url('/admin/subcategory-by-category/') }}" + "/" +
                                categoryId,
                            success: function(response) {
                                $("#sub_category").html(response.subCategories);
                                var response =
                                    "<option value=''>{{ __('Select Child Category') }}</option>";
                                $("#child_category").html(response);

                            },
                            error: function(err) {
                                console.log(err);

                            }
                        })
                    } else {
                        var response =
                            "<option value=''>{{ __('Select Sub Category') }}</option>";
                        $("#sub_category").html(response);
                        var response =
                            "<option value=''>{{ __('Select Child Category') }}</option>";
                        $("#child_category").html(response);
                    }


                })

                $("#sub_category").on("change", function() {
                    var SubCategoryId = $("#sub_category").val();
                    if (SubCategoryId) {
                        $.ajax({
                            type: "get",
                            url: "{{ url('/admin/childcategory-by-subcategory/') }}" + "/" +
                                SubCategoryId,
                            success: function(response) {
                                $("#child_category").html(response.childCategories);
                            },
                            error: function(err) {
                                console.log(err);

                            }
                        })
                    } else {
                        var response =
                            "<option value=''>{{ __('Select Child Category') }}</option>";
                        $("#child_category").html(response);
                    }

                })

                $("#is_return").on('change', function() {
                    var returnId = $("#is_return").val();
                    if (returnId == 1) {
                        $("#policy_box").removeClass('d-none');
                    } else {
                        $("#policy_box").addClass('d-none');
                    }

                })

                $("#addNewSpecificationRow").on('click', function() {
                    var html = $("#hidden-specification-box").html();
                    $("#specification-box").append(html);
                })

                $(document).on('click', '.deleteSpeceficationBtn', function() {
                    $(this).closest('.delete-specification-row').remove();
                });


                $("#manageSpecificationBox").on("click", function() {
                    if (specification) {
                        specification = false;
                        $("#specification-box").addClass('d-none');
                    } else {
                        specification = true;
                        $("#specification-box").removeClass('d-none');
                    }


                })

                $(".removeExistSpecificationRow").on("click", function() {

                    var specificationId = $(this).attr("data-specificationiId");
                    $.ajax({
                        type: "put",
                        data: {
                            _token: '{{ csrf_token() }}'
                        },
                        url: "{{ url('/admin/removed-product-exist-specification/') }}" +
                            "/" + specificationId,
                        success: function(response) {
                            toastr.success(response)
                            $("#existSpecificationBox-" + specificationId).remove();
                        },
                        error: function(err) {
                            console.log(err);

                        }
                    })
                })
                $('.sku_generate').on('click', function() {
                    var sku = Math.floor(10000000 + Math.random() * 90000000);
                    $('[name="sku"]').val(sku);
                })
                $('[name="is_partial"]').on('change', function() {
                    var is_partial = $(this).val();
                    changeAttr(is_partial, 'partial_amount')
                })
                $('[name="is_pre_order"]').on('change', function() {
                    var is_partial = $(this).val();
                    changeAttr(is_partial, 'release_date')
                    changeAttr(is_partial, 'max_product')
                })
            });
        })(jQuery);

        function convertToSlug(Text) {
            return Text
                .toLowerCase()
                .replace(/[^\w ]+/g, '')
                .replace(/ +/g, '-');
        }

        function previewThumnailImage(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('preview-img');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        };

        function changeAttr(val, selectorName) {
            if (val == 1) {
                $(`[name="${selectorName}"]`).attr('required', true);
                $(`.${selectorName}`).removeClass('d-none')
                $(`[name="${selectorName}"]`).removeAttr('disabled');
            } else {
                $(`[name="${selectorName}"]`).removeAttr('required');
                $(`[name="${selectorName}"]`).attr('disabled');
                $(`.${selectorName}`).addClass('d-none')
            }
        }
    </script>


@endsection
