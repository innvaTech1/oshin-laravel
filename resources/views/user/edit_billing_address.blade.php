@extends('user.layout')
@section('title')
    <title>{{ __('user.Billing Address') }}</title>
@endsection
@section('user-content')
    <div class="row">
        <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
            <div class="dashboard_content mt-2 mt-md-0">
                <h3><i class="fal fa-gift-card"></i>{{ __('user.Billing Address') }}</h3>
                <div class="wsus__dashboard_add wsus__add_address">
                    <form action="{{ route('user.update-billing-address') }}" method="POST">
                        @csrf
                        <div class="row">
                            @if ($billing)
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.name') }} </label>
                                        <input type="text" placeholder="{{ __('user.Name') }}" name="name"
                                            value="{{ $billing->name }}">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.email') }} </label>
                                        <input type="email" placeholder="{{ __('user.Email') }}" name="email"
                                            value="{{ $billing->email }}">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.phone') }} </label>
                                        <input type="text" placeholder="{{ __('user.Phone') }}" name="phone"
                                            value="{{ $billing->phone }}">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.Country') }} </label>
                                        <div class="wsus__topbar_select">
                                            <select class="select_2" name="country" id="country_id">
                                                <option value="">{{ __('user.Select Country') }}</option>
                                                @foreach ($countries as $country)
                                                    <option value="{{ $country->id }}">{{ $country->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.state') }} </label>
                                        <div class="wsus__topbar_select">
                                            <select class="select_2" name="state" id="state_id">
                                                <option value="0">{{ __('user.Select State') }}</option>
                                                @foreach ($states as $state)
                                                    <option {{ $state->id == $billing->state_id ? 'selected' : '' }}
                                                        value="{{ $state->id }}">{{ $state->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.city') }} </label>
                                        <div class="wsus__topbar_select">
                                            <select class="select_2" name="city" id="city_id">
                                                <option value="0">{{ __('user.Select City') }}</option>
                                                @foreach ($cities as $city)
                                                    <option {{ $city->id == $billing->city_id ? 'selected' : '' }}
                                                        value="{{ $city->id }}">{{ $city->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.zip code') }} </label>
                                        <input type="text" placeholder="Zip Code" value="{{ $billing->zip_code }}"
                                            name="zip_code">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.Address') }} </label>
                                        <input type="text" name="address" placeholder="{{ __('user.Address') }}"
                                            value="{{ $billing->address }}">
                                    </div>
                                </div>
                            @else
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.name') }} </label>
                                        <input type="text" placeholder="{{ __('user.Name') }}" name="name">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.email') }} </label>
                                        <input type="email" placeholder="{{ __('user.Email') }}" name="email">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.phone') }} </label>
                                        <input type="text" placeholder="{{ __('user.Phone') }}" name="phone">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.country') }} </label>
                                        <div class="wsus__topbar_select">
                                            <select class="select_2" name="country" id="country_id">
                                                <option value="">{{ __('user.Select Country') }}</option>
                                                @foreach ($countries as $country)
                                                    <option {{ $country->id == $user->country_id ? 'selected' : '' }}
                                                        value="{{ $country->id }}">{{ $country->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.state') }} </label>
                                        <div class="wsus__topbar_select">
                                            <select class="select_2" name="state" id="state_id">
                                                <option value="0">{{ __('user.Select State') }}</option>
                                                @foreach ($states as $state)
                                                    <option value="{{ $state->id }}">{{ $state->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.city') }} </label>
                                        <div class="wsus__topbar_select">
                                            <select class="select_2" name="city" id="city_id">
                                                <option value="0">{{ __('user.Select City') }}</option>
                                                @foreach ($cities as $city)
                                                    <option value="{{ $city->id }}">{{ $city->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.zip code') }} </label>
                                        <input type="text" placeholder="{{ __('user.zip code') }}" name="zip_code">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__add_address_single">
                                        <label>{{ __('user.Address') }} </label>
                                        <input type="text" name="address" placeholder="{{ __('user.Address') }}">
                                    </div>
                                </div>
                            @endif

                            <div class="col-xl-6">
                                <button type="submit" class="common_btn"><span>{{ __('user.Update Address') }}</span></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <script>
            (function($) {
                "use strict";
                $(document).ready(function() {
                    $("#country_id").on("change", function() {
                        var countryId = $("#country_id").val();
                        if (countryId) {
                            $.ajax({
                                type: "get",
                                url: "{{ url('state-by-country/') }}" + "/" + countryId,
                                success: function(response) {
                                    $("#state_id").html(response.states);
                                    var response =
                                        "<option value=''>{{ __('user.Select a City') }}</option>";
                                    $("#city_id").html(response);
                                },
                                error: function(err) {
                                    console.log(err);
                                }
                            })
                        } else {
                            var response = "<option value=''>{{ __('user.Select a State') }}</option>";
                            $("#state_id").html(response);
                            var response = "<option value=''>{{ __('user.Select a City') }}</option>";
                            $("#city_id").html(response);
                        }

                    })
                    $('#state_id').on('change', function() {
                        $('.preloader_area').removeClass('d-none');
                        let state_id = $(this).val();
                        let url = "{{ route('city-by-state', ':state_id') }}";
                        url = url.replace(':state_id', state_id);
                        $.ajax({
                            url: url,
                            method: 'GET',
                            success: function(response) {
                                $('#city_id').html(response.cities).select2();
                                $('.preloader_area').addClass('d-none');
                            },
                            error: function(...errors) {

                                $('.preloader_area').addClass('d-none');
                            }
                        });
                    });

                });
            })(jQuery);
        </script>
    @endsection
