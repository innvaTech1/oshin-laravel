@extends('user.layout')
@section('title')
    <title>{{ __('user.Become a Seller') }}</title>
@endsection

@section('user-content')
    <style>
        .wsus__dash_pro_single {
            display: block;
        }

        .wsus__check_single_form .select2-container {
            margin-bottom: 0px;
        }
    </style>
    <div class="row">
        <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
            <div class="dashboard_content mt-2 mt-md-0">
                <div class="wsus__dashboard_profile">
                    <div class="wsus__dash_pro_area">
                        <h3>{{ __('user.Become a Seller') }}</h3>
                        <form action="{{ route('user.seller-request') }}" method="POST" enctype="multipart/form-data"
                            class="wsus__dash_pro_form">
                            @csrf
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="row">
                                        <div class="col-12">
                                            <label for="">{{ __('user.Banner Image') }} <span
                                                    class="text-danger">*</span></label>
                                            <div class="wsus__dash_pro_single">
                                                <input type="file" name="banner_image">
                                                @error('banner_image')
                                                    <div>

                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>
                                        <div class="col-xl-6 col-md-6">
                                            <div class="wsus__dash_pro_single">
                                                <input type="text" placeholder="{{ __('user.Shop Name') }}*"
                                                    name="shop_name" value="{{ old('shop_name') }}">
                                                @error('shop_name')
                                                    <div>
                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>
                                        <div class="col-xl-6 col-md-6">
                                            <div class="wsus__dash_pro_single">
                                                <input type="text" placeholder="{{ __('user.Seller Name') }}*"
                                                    name="seller_name"
                                                    value="{{ old('seller_name', auth()->user()->seller_name) }}">
                                                @error('seller_name')
                                                    <div>

                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>
                                        <div class="col-xl-6 col-md-6">
                                            <div class="wsus__dash_pro_single">
                                                <input type="email" placeholder="{{ __('user.Email') }}*" name="email"
                                                    value="{{ old('email', auth()->user()->email) }}">
                                                @error('email')
                                                    <div>

                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>
                                        <div class="col-xl-6 col-md-6">
                                            <div class="wsus__dash_pro_single">
                                                <input type="text" placeholder="{{ __('user.Phone') }}*" name="phone"
                                                    value="{{ old('phone', auth()->user()->phone) }}">
                                                @error('phone')
                                                    <div>
                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>
                                        <div class="col-xl-6 col-md-6">
                                            <div class="wsus__dash_pro_single">
                                                <input type="text" placeholder="{{ __('user.Address') }}*"
                                                    name="address" value="{{ old('address', auth()->user()->address) }}">
                                                @error('address')
                                                    <div>
                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>
                                        <div class="col-xl-6 col-md-6">
                                            <div class="wsus__check_single_form">
                                                <select name="state_id" class="state form-control select_2">
                                                    <option selected disabled>{{ __('user.Select State') }}
                                                    </option>
                                                    @foreach ($states as $state)
                                                        <option value="{{ $state->id }}">{{ $state->name }}</option>
                                                    @endforeach
                                                </select>
                                                @error('state_id')
                                                    <div>
                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>
                                        <div class="col-md-6 col-lg-12 col-xl-6">
                                            <div class="wsus__check_single_form">
                                                <select name="city_id" class="city form-control select_2">
                                                    <option selected disabled>{{ __('user.Select City') }}
                                                    </option>
                                                </select>
                                                @error('city_id')
                                                    <div>
                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>

                                        <div class="col-xl-6 col-md-6">
                                            <div class="wsus__check_single_form">
                                                <select name="category_id" class="category form-control select_2">
                                                    <option selected disabled>{{ __('user.Select category') }}
                                                    </option>
                                                    @foreach ($categories as $category)
                                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                                    @endforeach
                                                    <option value="0">{{ __('user.Other Option') }}</option>
                                                </select>
                                                @error('category_id')
                                                    <div>
                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>

                                        <div class="col-xl-12 d-none other_category">
                                            <div class="wsus__dash_pro_single  mt-4">
                                                <textarea cols="3" rows="5" name="product_info" placeholder="{{ __('user.Product Info') }}">{{ old('product_info') }}</textarea>
                                                @error('product_info')
                                                    <div>
                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-xl-12">
                                            <div class="wsus__dash_pro_single mt-4">
                                                <textarea cols="3" rows="5" name="about" placeholder="{{ __('user.About You') }}">{{ old('about') }}</textarea>
                                                @error('about')
                                                    <div>
                                                        <span class="text-danger">{{ $message }}</span>
                                                    </div>
                                                @enderror
                                            </div>

                                        </div>

                                        <div class="col-xl-12">
                                            <div class="terms_area">
                                                <div class="form-check">
                                                    <input required name="agree_terms_condition" class="form-check-input"
                                                        type="checkbox" value="1" id="flexCheckChecked3"
                                                        @if (old('agree_terms_condition')) checked @endif>
                                                    <label class="form-check-label" for="flexCheckChecked3">
                                                        {{ __('user.I have read and agree with') }}
                                                        <a href="{{ route('user.seller-terms-condition') }}"
                                                            class="text-decoration-underline text-primary">
                                                            {{ __('user.terms & condition') }}
                                                        </a>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <button class="common_btn mb-4 mt-2 submit_btn"
                                        type="submit">{{ __('user.Submit Request') }}</button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script>
        (function($) {
            "use strict";
            $(document).ready(function() {
                $('.state').on('change', function() {
                    $('.preloader_area').removeClass('d-none');
                    let state_id = $(this).val();
                    let url = "{{ route('city-by-state', ':state_id') }}";
                    url = url.replace(':state_id', state_id);
                    $.ajax({
                        url: url,
                        method: 'GET',
                        success: function(response) {
                            $('.city').html(response.cities).select2();
                            $('.preloader_area').addClass('d-none');
                        },
                        error: function(...errors) {

                            $('.preloader_area').addClass('d-none');
                        }
                    });
                });

                $('.submit_btn').on('click', function(e) {
                    e.preventDefault();
                    // check if terms and condition checked
                    if (!$('[name="agree_terms_condition"]:checked').length) {
                        toastr.error("{{ __('user.You must agree to our terms and condition') }}");
                        return;
                    }

                    $('.wsus__dash_pro_form').submit();
                })

                $('.category').on('change', function() {
                    if ($(this).val() == 0) {
                        $('.other_category').removeClass('d-none');
                    } else {
                        $('.other_category').addClass('d-none');
                    }
                })

            });
        })(jQuery);
    </script>


    <script>
        (function($) {
            "use strict";
            $(document).ready(function() {
                $("#state_id").on("change", function() {
                    var countryId = $("#state_id").val();
                    if (countryId) {
                        $.ajax({
                            type: "get",
                            url: "{{ url('/user/city-by-state/') }}" + "/" + countryId,
                            success: function(response) {
                                $("#city_id").html(response.cities);
                            },
                            error: function(err) {}
                        })
                    } else {
                        var response = "<option value=''>{{ __('user.Select a City') }}</option>";
                        $("#city_id").html(response);
                    }

                })
            });
        })(jQuery);
    </script>
@endpush
