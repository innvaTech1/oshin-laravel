@extends('admin.master_layout')
@section('title')
    <title>{{ __('Product Sub Category') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Edit Product Sub Category') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route('admin.product-category.index') }}">{{ __('Product Category') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Edit Product Sub Category') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.product-sub-category.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Product Sub Category') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.product-sub-category.update', $subCategory->id) }}"
                                    method="POST" enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">

                                        <div class="form-group col-12">
                                            <label>{{ __('Category') }} <span class="text-danger">*</span></label>
                                            <select name="category" id="category" class="form-control">
                                                <option value="">{{ __('Select Category') }}</option>
                                                @foreach ($categories as $category)
                                                    <option
                                                        {{ $subCategory->category_id == $subCategory->id ? 'selected' : '' }}
                                                        value="{{ $category->id }}">{{ $subCategory->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Sub Category Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="name" class="form-control" name="name"
                                                value="{{ $subCategory->name }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Slug') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="slug" class="form-control" name="slug"
                                                value="{{ $subCategory->slug }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Delivery Location') }}</label>
                                            <select name="city_id" class="form-control select2" id="city_id">
                                                <option value="">{{ __('Delivery Location') }}</option>
                                                @foreach ($cities as $city)
                                                    <option {{ $subCategory->city_id == $city->id ? 'selected' : '' }}
                                                        value="{{ $city->id }}">{{ $city->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option {{ $subCategory->status == 1 ? 'selected' : '' }} value="1">
                                                    {{ __('Active') }}</option>
                                                <option {{ $subCategory->status == 0 ? 'selected' : '' }} value="0">
                                                    {{ __('Inactive') }}</option>
                                            </select>
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
            $(document).ready(function() {
                $("#name").on("focusout", function(e) {
                    $("#slug").val(convertToSlug($(this).val()));
                })
            });
        })(jQuery);

        function convertToSlug(Text) {
            return Text
                .toLowerCase()
                .replace(/[^\w ]+/g, '')
                .replace(/ +/g, '-');
        }
    </script>
@endsection
