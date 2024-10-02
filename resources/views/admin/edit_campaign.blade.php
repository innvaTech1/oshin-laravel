@extends('admin.master_layout')
@section('title')
    <title>{{ __('Campaign') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Create ') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.campaign.index') }}">{{ __('Campaign') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Create Campaign') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.campaign.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Campaign') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.campaign.update', $campaign->id) }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Image Preview') }}</label>
                                            <div>
                                                <img id="preview-img" class="admin-img" src="{{ asset($campaign->image) }}"
                                                    alt="">
                                            </div>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Image') }} <span class="text-danger">*</span></label>
                                            <input type="file" class="form-control-file" name="image"
                                                onchange="previewThumnailImage(event)">
                                        </div>
                                        <div class="form-group col-6">
                                            <label>{{ __('Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="name" class="form-control" name="name"
                                                value="{{ $campaign->name }}">
                                        </div>
                                        <div class="form-group col-6">
                                            <label>{{ __('Slug') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="slug" class="form-control" name="slug"
                                                value="{{ $campaign->slug }}">
                                        </div>
                                        <div class="form-group col-6">
                                            <label>{{ __('Title') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="title" class="form-control" name="title"
                                                value="{{ $campaign->title }}">
                                        </div>
                                        <div class="form-group col-6">
                                            <label>{{ __('Offer') }} <span class="text-danger">*</span></label>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text">%</span>
                                                <input type="text" class="form-control" name="offer"
                                                    value="{{ $campaign->offer }}">
                                            </div>
                                        </div>

                                        <div class="form-group col-6">
                                            <label>{{ __('Start Date') }} <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control datetimepicker_mask" name="start_date"
                                                value="{{ $campaign->start_date }}" autocomplete="off">
                                        </div>

                                        <div class="form-group col-6">
                                            <label>{{ __('End Date') }} <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control datetimepicker_mask" name="end_date"
                                                value="{{ $campaign->end_date }}" autocomplete="off">
                                        </div>

                                        <div class="form-group col-6">
                                            <label>{{ __('Show Homepage?') }} <span class="text-danger">*</span></label>
                                            <select name="show_homepage" class="form-control">
                                                <option {{ $campaign->show_homepage == 0 ? 'selected' : '' }}
                                                    value="0">{{ __('No') }}</option>
                                                <option {{ $campaign->show_homepage == 1 ? 'selected' : '' }}
                                                    value="1">{{ __('Yes') }}</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-6">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option {{ $campaign->status == 1 ? 'selected' : '' }} value="1">
                                                    {{ __('Active') }}</option>
                                                <option {{ $campaign->status == 0 ? 'selected' : '' }} value="0">
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

        function previewThumnailImage(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('preview-img');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        };
    </script>
@endsection
