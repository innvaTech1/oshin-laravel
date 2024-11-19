@extends('admin.master_layout')
@section('title')
    <title>{{ __('Products') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Create Product') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Create Product') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.product.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Products') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.product.store') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Thumbnail Image Preview') }}</label>
                                            <div>
                                                <img id="preview-img" class="admin-img"
                                                    src="{{ asset('uploads/website-images/preview.png') }}" alt="">
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
                                                value="{{ old('name') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Slug') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="slug" class="form-control" name="slug"
                                                value="{{ old('slug') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Category') }} <span class="text-danger">*</span></label>
                                            <select name="category" class="form-control select2" id="category">
                                                <option value="">{{ __('Select Category') }}</option>
                                                @foreach ($categories as $category)
                                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>


                                        <div class="form-group col-12">
                                            <label>{{ __('Sub Category') }}</label>
                                            <select name="sub_category" class="form-control select2" id="sub_category">
                                                <option value="">{{ __('Select Sub Category') }}</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Child Category') }}</label>
                                            <select name="child_category" class="form-control select2" id="child_category">
                                                <option value="">{{ __('Select Child Category') }}</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Location') }} </label>
                                            <select name="delivery_id[]" class="form-control select2" id="delivery_id"
                                                multiple>
                                                <option value="">{{ __('Location') }}</option>
                                                @foreach ($cities as $city)
                                                    <option value="{{ $city->id }}">{{ $city->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Brand') }} </label>
                                            <select name="brand" class="form-control select2" id="brand">
                                                <option value="">{{ __('Select Brand') }}</option>
                                                @foreach ($brands as $brand)
                                                    <option {{ old('brand') == $brand->id ? 'selected' : '' }}
                                                        value="{{ $brand->id }}">{{ $brand->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('SKU') }} <span class="text-danger"></span></label>
                                            <div class="input-group">
                                                <input type="text" name="sku" class="form-control currency"
                                                    id="sku" required value="{{ old('sku') }}">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text sku_generate">
                                                        <i class="fas fa-barcode"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Price') }} <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="price"
                                                value="{{ old('price') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Offer Price') }} <span class="text-danger"></span></label>
                                            <input type="text" class="form-control" name="offer_price"
                                                value="{{ old('offer_price') }}">
                                        </div>


                                        <div class="form-group col-12">
                                            <label>{{ __('Stock Quantity') }} </label>
                                            <input type="number" class="form-control" name="quantity"
                                                value="{{ old('quantity') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Weight') }} </label>
                                            <input type="text" class="form-control" name="weight"
                                                value="{{ old('weight') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Product Measurement') }} </label>
                                            <input type="text" class="form-control" name="measurement"
                                                value="{{ old('measurement') }}">
                                        </div>


                                        <div class="form-group col-12">
                                            <label>{{ __('Short Description') }} <span
                                                    class="text-danger">*</span></label>
                                            <textarea name="short_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ old('short_description') }}</textarea>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Long Description') }} <span class="text-danger">*</span></label>
                                            <textarea name="long_description" id="" cols="30" rows="10" class="summernote">{{ old('long_description') }}</textarea>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Highlight') }}</label>
                                            <div>
                                                <input type="checkbox"name="top_product" id="top_product"> <label
                                                    for="top_product" class="mr-3">{{ __('Just for You') }}</label>

                                                <input type="checkbox" name="new_arrival" id="new_arrival"> <label
                                                    for="new_arrival" class="mr-3">{{ __('Sale Products') }}</label>

                                                <input type="checkbox" name="best_product" id="best_product"> <label
                                                    for="best_product"
                                                    class="mr-3">{{ __('Best Selling Product') }}</label>

                                                <input type="checkbox" name="is_featured" id="is_featured"> <label
                                                    for="is_featured" class="mr-3">{{ __('Featured Product') }}</label>

                                                <input type="checkbox" name="is_flash_deal" id="is_flash_deal"> <label
                                                    for="is_flash_deal" class="mr-3">{{ __('Flash Deal') }}</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>{{ __('Take Pre Order?') }} </span></label>
                                                <select name="is_pre_order" class="form-control" id="is_pre_order">
                                                    <option value="0"
                                                        @if (old('is_pre_order') == 0) selected @endif>
                                                        {{ __('No') }}</option>
                                                    <option value="1"
                                                        @if (old('is_pre_order') == 1) selected @endif>
                                                        {{ __('Yes') }}</option>
                                                </select>
                                                @error('is_pre_order')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-12 d-none release_date">
                                            <div class="form-group">
                                                <label>{{ __('Release Date') }} </label>
                                                <input type="text" name="release_date" class="form-control datepicker"
                                                    disabled />
                                                @error('release_date')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-12 d-none max_product">
                                            <div class="form-group">
                                                <label>{{ __('Max Quantity') }}</label>
                                                <input type="number" name="max_product" class="form-control" disabled
                                                    min="1" />
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
                                                        @if (old('is_partial') == 0) selected @endif>
                                                        {{ __('No') }}</option>
                                                    <option value="1"
                                                        @if (old('is_partial') == 1) selected @endif>
                                                        {{ __('Yes') }}</option>
                                                </select>
                                                @error('is_partial')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-12 d-none partial_amount">
                                            <div class="form-group">
                                                <label>{{ __('Partial Amount') }} <span
                                                        class="text-danger">*</span></label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="">
                                                            <select name="partial_type" id=""
                                                                class="form-control">
                                                                <option value="percentage">%</option>
                                                                <option value="flat">Flat</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control currency"
                                                        name="partial_amount" disabled>
                                                </div>
                                                @error('partial_amount')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                        @if (session('product_type') == 'Digital')
                                            @include('admin/products/digital-products-field')
                                        @endif
                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option value="1">{{ __('Active') }}</option>
                                                <option value="0">{{ __('Inactive') }}</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Tags') }}</label>
                                            <input type="text" class="form-control tags" name="tags"
                                                value="{{ old('tags') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Tax') }}</label>
                                            <select name="tax_id" class="form-control">
                                                @foreach ($productTaxs as $tax)
                                                    <option value="{{ $tax->id }}">{{ $tax->title }}
                                                        ({{ $tax->price }}%)
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Return Available') }}</label>
                                            <select name="is_return" class="form-control">
                                                <option value="0">{{ __('No') }}</option>
                                                <option value="1">{{ __('Yes') }}</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Return Policy') }}</label>
                                            <select name="return_policy_id" class="form-control">
                                                <option value="">{{ __('Select Policy') }}</option>
                                                @foreach ($retrunPolicies as $policy)
                                                    <option value="{{ $policy->id }}">{{ $policy->title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Warranty Policy') }}</label>
                                            <select name="warranty_policy_id" class="form-control">
                                                <option value="">{{ __('Select Policy') }}</option>
                                                @foreach ($retrunPolicies as $policy)
                                                    <option value="{{ $policy->id }}">{{ $policy->title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Warranty Time') }} (Months)</label>
                                            <input type="number" class="form-control" name="warranty_times"
                                                value="{{ old('warranty_times') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('SEO Title') }}</label>
                                            <input type="text" class="form-control" name="seo_title"
                                                value="{{ old('seo_title') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('SEO Description') }}</label>
                                            <textarea name="seo_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ old('seo_description') }}</textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button class="btn btn-primary">{{ __('Save') }}</button>
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
            var specification = true;
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
