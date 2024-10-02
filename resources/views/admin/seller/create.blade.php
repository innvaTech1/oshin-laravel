@extends('admin.master_layout')
@section('title')
    <title>{{ __('Seller') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Create Seller') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Create Seller') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.seller-list') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Seller') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.seller-store') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">

                                        <div class="section-title">{{ __('User Info') }}</div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Image Preview') }}</label>
                                            <div>
                                                <img id="preview-img" class="admin-img"
                                                    src="{{ asset('uploads/website-images/preview.png') }}" alt="">
                                            </div>

                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Image') }}</label>
                                            <input type="file" class="form-control-file" name="image"
                                                onchange="previewThumnailImage(event)">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="name" class="form-control" name="name"
                                                value="{{ old('name') }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Phone') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="phone" class="form-control" name="phone"
                                                value="{{ old('phone') }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Email') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="email" class="form-control" name="email"
                                                value="{{ old('email') }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Password') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="password" class="form-control" name="password"
                                                value="{{ old('password') }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('State') }}<span class="text-danger">*</span></label>
                                            <select name="state_id" class="form-control select2" id="state">
                                                <option value="">{{ __('Select State') }}</option>
                                                @foreach ($states as $state)
                                                    <option value="{{ $state->id }}">{{ $state->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('City') }}<span class="text-danger">*</span></label>
                                            <select name="city_id" class="form-control select2" id="city">
                                                <option value="">{{ __('Select City') }}</option>
                                            </select>
                                        </div>


                                        <div class="form-group col-12">
                                            <label>{{ __('Address') }}<span class="text-danger">*</span></label>
                                            <input type="text" id="address" class="form-control" name="address"
                                                value="{{ old('address') }}">
                                        </div>


                                        <div class="section-title">{{ __('Seller Info') }}</div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Banner Image') }}</label>
                                            <input type="file" class="form-control-file" name="banner_image">
                                        </div>


                                        <div class="form-group col-12">
                                            <label>{{ __('Shop Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="shop_name" class="form-control" name="shop_name"
                                                value="{{ old('shop_name') }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Slug') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="slug" class="form-control" name="slug"
                                                value="{{ old('slug') }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Description') }} </label>
                                            <textarea id="description" class="form-control" name="description">{{ old('description') }}</textarea>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Greeting Message') }}</label>
                                            <textarea id="greeting_msg" class="form-control" name="greeting_msg">{{ old('greeting_msg') }}</textarea>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Highlight') }}</label>
                                            <div>
                                                <input type="checkbox" name="top_rated" id="top_rated"> <label
                                                    for="top_rated" class="mr-3">{{ __('Top Rated') }}</label>

                                                <input type="checkbox" name="is_featured" id="is_featured"> <label
                                                    for="is_featured" class="mr-3">{{ __('Featured Seller') }}</label>
                                                <input type="checkbox" name="is_featured" id="is_featured"> <label
                                                    for="is_verified" class="mr-3">{{ __('Verified Seller') }}</label>
                                            </div>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option value="1">{{ __('Active') }}</option>
                                                <option value="0">{{ __('Inactive') }}</option>
                                            </select>
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
                $("#shop_name").on("input", function(e) {
                    $("#slug").val(convertToSlug($(this).val()));
                })

                $("[name='state_id']").on("change", function() {
                    var state_id = $(this).val();
                    $.ajax({
                        url: `{{ route('admin.city-by-state', '') }}/` + state_id,
                        type: 'GET',
                        success: function(data) {
                            $("[name='city_id']").html(data.cities);
                        }
                    })
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
