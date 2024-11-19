@extends('admin.master_layout')
@section('title')
    <title>{{ __('Product Category') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Edit Product Category') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route('admin.product-category.index') }}">{{ __('Product Category') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Edit Product Category') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.product-category.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Product Category') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.product-category.update', $category->id) }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Image') }} <span class="text-danger">*</span></label>
                                            <div id="image_preview" class="image-preview"
                                                @if ($category?->image) style="background-image: url({{ asset($category?->image) }}); background-size: cover; background-position: center center;" @endif>
                                                <label for="image_upload" id="image_label">{{ __('Image') }}</label>
                                                <input type="file" name="image" id="image_upload">
                                            </div>
                                            @error('image')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="name" class="form-control" name="name"
                                                value="{{ $category->name }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Slug') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="slug" class="form-control" name="slug"
                                                value="{{ $category->slug }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option {{ $category->status == 1 ? 'selected' : '' }} value="1">
                                                    {{ __('Active') }}</option>
                                                <option {{ $category->status == 0 ? 'selected' : '' }} value="0">
                                                    {{ __('InActive') }}</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Top Category') }} <span class="text-danger">*</span></label>
                                            <select name="is_top" class="form-control">
                                                <option value="0" {{ $category->is_top == 0 ? 'selected' : '' }}>
                                                    {{ __('No') }}</option>
                                                <option value="1" {{ $category->is_top == 1 ? 'selected' : '' }}>
                                                    {{ __('Yes') }}</option>
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



@push('js')
    <script>
        "use strict";
        $.uploadPreview({
            input_field: "#image_upload",
            preview_box: "#image_preview",
            label_field: "#image_label",
            label_default: "{{ __('Choose Image') }}",
            label_selected: "{{ __('Change Image') }}",
            no_label: false,
            success_callback: null
        });
    </script>
@endpush
