@extends('admin.master_layout')
@section('title')
    <title>{{ __('admin.Product Category') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('admin.Create Product Category') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route('admin.product-category.index') }}">{{ __('admin.Product Category') }}</a></div>
                    <div class="breadcrumb-item">{{ __('admin.Create Product Category') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.product-category.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('admin.Product Category') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.product-category.store') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('admin.Image') }} <span class="text-danger">*</span></label>
                                            <div id="image_preview" class="image-preview">
                                                <label for="image_upload" id="image_label">{{ __('admin.Image') }}</label>
                                                <input type="file" name="image" id="image_upload">
                                            </div>
                                            @error('image')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('admin.Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="name" class="form-control" name="name">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('admin.Slug') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="slug" class="form-control" name="slug">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('admin.Delivery Charge') }} <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" id="delivery_charge" class="form-control" name="slug">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('admin.Delivery Location') }}</label>
                                            <select name="city_id" class="form-control select2" id="city_id">
                                                <option value="">{{ __('admin.Delivery Location') }}</option>
                                                @foreach ($cities as $city)
                                                    <option {{ old('city_id') == $city->id ? 'selected' : '' }}
                                                        value="{{ $city->id }}">{{ $city->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('admin.Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option value="1">{{ __('admin.Active') }}</option>
                                                <option value="0">{{ __('admin.InActive') }}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button class="btn btn-primary">{{ __('admin.Save') }}</button>
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


@push('js')
    <script>
        "use strict";
        $.uploadPreview({
            input_field: "#image_upload",
            preview_box: "#image_preview",
            label_field: "#image_label",
            label_default: "{{ __('admin.Choose Image') }}",
            label_selected: "{{ __('admin.Change Image') }}",
            no_label: false,
            success_callback: null
        });
    </script>
@endpush
