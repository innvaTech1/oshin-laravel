@extends('admin.master_layout')
@section('title')
    <title>{{ __('Custom Page') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Create Custom Page') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item active"><a
                            href="{{ route('admin.custom-page.index') }}">{{ __('Custom Page') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Create Custom Page') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.custom-page.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Custom Page') }}</a>
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.custom-page.store') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">

                                        <div class="form-group col-12">
                                            <label>{{ __('Banner Image') }} <span class="text-danger">*</span></label>
                                            <input type="file" class="form-control-file" name="banner_image">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Page Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="page_name" class="form-control" name="page_name"
                                                value="{{ old('page_name') }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Slug') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="slug" class="form-control" name="slug"
                                                value="{{ old('slug') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Description') }} <span class="text-danger">*</span></label>
                                            <textarea name="description" cols="30" rows="10" class="summernote">{{ old('description') }}</textarea>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option value="1">{{ __('Active') }}</option>
                                                <option value="0">{{ __('Inactive') }}</option>
                                            </select>
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
            $(document).ready(function() {
                $("#page_name").on("focusout", function(e) {
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
