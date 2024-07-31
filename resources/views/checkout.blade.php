@extends('layout')
@section('title')
    <title>{{ __('user.Checkout') }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ __('user.Checkout') }}">
@endsection

@section('public-content')
    <style>
        .cursor-pointer {
            cursor: pointer;
        }

        .selected {
            position: relative;
            text-align: center;
            width: 100%;
            font-size: small;
            color: #0d0d0d;
            /* Assuming qgreen is a shade of green like limegreen */
            display: flex;
            justify-content: center;
            align-items: center;
            padding-left: 1rem;
            padding-right: 1rem;
            text-transform: uppercase;
            cursor: pointer;
            border: 2px solid rgb(215, 204, 245);
        }
    </style>
    {{-- <!--============================
            BREADCRUMB START
    ==============================--> --}}
    <section id="wsus__breadcrumb" style="background: url({{ asset($banner->image) }});">
        <div class="wsus_breadcrumb_overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h4>{{ __('user.Checkout') }}</h4>
                        <ul>
                            <li><a href="{{ route('home') }}">{{ __('user.home') }}</a></li>
                            <li><a href="{{ route('user.checkout.checkout') }}">{{ __('user.Checkout') }}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- <!--============================
        BREADCRUMB END
    ==============================--> --}}


    {{-- <!--============================
            CHECK OUT PAGE START
    ==============================--> --}}
    <section id="wsus__cart_view">
        <div class="container">
            <div class="row">
                <form class="wsus__checkout_form" action="{{ route('checkout.payment') }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-xl-7 col-lg-6">
                            <div class="wsus__check_form">
                                <h5>{{ __('user.Shipping Address') }}
                                    @auth('web')
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            {{ __('user.add new address') }}
                                        </a>
                                    @endauth
                                </h5>
                                <div class="row">
                                    @foreach ($addresses as $address)
                                        <div class="col-xl-6">
                                            <div class="wsus__checkout_single_address">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        id="flexRadioDefault{{ $address->id }}" checked>
                                                    <label class="form-check-label"
                                                        for="flexRadioDefault{{ $address->id }}">
                                                        {{ __('user.Select Address') }}
                                                    </label>
                                                </div>
                                                <ul>
                                                    <li><span>{{ __('user.Name') }} :</span>{{ $address->name }}</li>
                                                    <li><span>{{ __('user.Phone') }} :</span> {{ $address->phone }}</li>
                                                    <li><span>{{ __('user.Email') }} :</span> {{ $address->email }}</li>
                                                    <li><span>{{ __('user.Address') }} :</span> {{ $address->address }}
                                                    </li>
                                                    <li><span>{{ __('user.City') }} :</span> {{ $address->city->name }}
                                                    </li>
                                                    <li><span>{{ __('user.State') }} :</span> {{ $address->state->name }}
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                <div class="row mt-4">
                                    @guest
                                        <div class="col-md-12 col-lg-6 col-xl-6">
                                            <div class="wsus__check_single_form">
                                                <input type="text" placeholder="{{ __('user.Name') }}*" name="name"
                                                    value="{{ old('name') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-lg-6 col-xl-6">
                                            <div class="wsus__add_address_single">
                                                <input type="email" placeholder="{{ __('user.Email') }}" name="email"
                                                    value="{{ old('email') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-lg-6 col-xl-6">
                                            <div class="wsus__add_address_single">
                                                <input type="text" placeholder="{{ __('user.Phone') }}*" name="phone"
                                                    value="{{ old('phone') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-12 col-xl-6">
                                            <div class="wsus__check_single_form">
                                                <input type="text" name="address" placeholder="{{ __('user.Address') }}*"
                                                    value="{{ old('address') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-12 col-xl-6">
                                            <div class="wsus__check_single_form">
                                                <select name="state_id" class="state form-control select_2">
                                                    <option selected disabled>{{ __('user.Select State') }}
                                                    </option>
                                                    @foreach ($states as $state)
                                                        <option value="{{ $state->id }}">{{ $state->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-12 col-xl-6">
                                            <div class="wsus__check_single_form">
                                                <select name="city_id" class="city form-control select_2">
                                                    <option selected disabled>{{ __('user.Select City') }}
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    @endguest
                                    <div class="col-md-12 col-lg-12 col-xl-12">
                                        <div class="accordion checkout_accordian" id="accordionExample">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header" id="headingThree">
                                                    <button class="accordion-button collapsed" type="button"
                                                        data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                        aria-expanded="false" aria-controls="collapseThree">
                                                        <div class="wsus__check_single_form">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                    value="1" id="flexCheckDefault" checked
                                                                    name="same_shipping">
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    {{ __('user.Same as shipping address') }}
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </button>
                                                </h2>
                                                {{--  --}}
                                                <div id="collapseThree" class="accordion-collapse collapse"
                                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                    <div class="accordion-body p-0">
                                                        <div class="wsus__check_form p-0" style="box-shadow: none;">
                                                            <div class="row">
                                                                <div class="col-md-12 col-lg-6 col-xl-6">
                                                                    <div class="wsus__check_single_form">
                                                                        <input type="text"
                                                                            placeholder="{{ __('user.Name') }}*"
                                                                            name="billing_name"
                                                                            value="{{ old('billing_name') }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 col-lg-6 col-xl-6">
                                                                    <div class="wsus__add_address_single">
                                                                        <input type="email"
                                                                            placeholder="{{ __('user.Email') }}"
                                                                            name="billing_email"
                                                                            value="{{ old('billing_email') }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 col-lg-6 col-xl-6">
                                                                    <div class="wsus__add_address_single">
                                                                        <input type="text"
                                                                            placeholder="{{ __('user.Phone') }}*"
                                                                            name="billing_phone"
                                                                            value="{{ old('billing_phone') }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-lg-12 col-xl-6">
                                                                    <div class="wsus__check_single_form">
                                                                        <input type="text" name="billing_address"
                                                                            placeholder="{{ __('user.Address') }}*"
                                                                            value="{{ old('billing_address') }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-lg-12 col-xl-6">
                                                                    <div class="wsus__check_single_form">
                                                                        <select name="billing_state_id"
                                                                            class="state form-control select_2">
                                                                            <option selected disabled value="">
                                                                                {{ __('user.Select State') }}
                                                                            </option>
                                                                            @foreach ($states as $state)
                                                                                <option value="{{ $state->id }}">
                                                                                    {{ $state->name }}</option>
                                                                            @endforeach
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-lg-12 col-xl-6">
                                                                    <div class="wsus__check_single_form">
                                                                        <select name="billing_city_id"
                                                                            class="city form-control select_2">
                                                                            <option selected disabled value="">
                                                                                {{ __('user.Select City') }}
                                                                            </option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-12 col-xl-12">
                                        <div class="wsus__check_single_form">
                                            <h5>{{ __('user.Additional Information') }}</h5>
                                            <textarea cols="3" rows="4" name="addition_information">{{ old('addition_information') }}</textarea>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-xl-5 col-lg-6">
                            <div class="wsus__order_details" id="sticky_sidebar">
                                <h5>{{ __('user.products') }}</h5>

                                <div class="item-details">
                                    @include('components.website.checkout-item-total')
                                </div>
                                @include('components.website.payment-method')
                                <div class="terms_area">
                                    <div class="form-check">
                                        <input required name="agree_terms_condition" class="form-check-input"
                                            type="checkbox" value="1" id="flexCheckChecked3">
                                        <label class="form-check-label" for="flexCheckChecked3">
                                            {{ __('user.I have read and agree to the website') }} <a
                                                href="{{ route('terms-and-conditions') }}">{{ __('user.terms and conditions') }}
                                                *</a>
                                        </label>
                                    </div>
                                </div>
                                <button type="submit"
                                    class="common_btn place_order">{{ __('user.Place Order') }}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    {{-- <!--============================
            CHECK OUT PAGE END
    ==============================--> --}}
    <div class="wsus__popup_address">
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">{{ __('user.add new address') }}</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-0">
                        <form action="{{ route('user.address.new') }}" method="POST">
                            @csrf
                            <div class="wsus__check_form p-3">
                                <div class="row">
                                    <div class="col-md-12 col-lg-6 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <input type="text" placeholder="{{ __('user.Name') }}*" name="name"
                                                value="{{ old('name') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-6 col-xl-6">
                                        <div class="wsus__add_address_single">
                                            <input type="email" placeholder="{{ __('user.Email') }}" name="email"
                                                value="{{ old('email') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-6 col-xl-6">
                                        <div class="wsus__add_address_single">
                                            <input type="text" placeholder="{{ __('user.Phone') }}*" name="phone"
                                                value="{{ old('phone') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <input type="text" name="address" placeholder="{{ __('user.Address') }}*"
                                                value="{{ old('address') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <select name="state_id" class="state form-control select_2">
                                                <option selected disabled>
                                                    {{ __('user.Select State') }}
                                                </option>
                                                @foreach ($states as $state)
                                                    <option value="{{ $state->id }}">
                                                        {{ $state->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <select name="city_id" class="city form-control select_2">
                                                <option selected disabled>
                                                    {{ __('user.Select City') }}
                                                </option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-12 col-lg-6 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <button type="submit"
                                                class="btn btn-primary">{{ __('user.Save Address') }}</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
                // $(".shipping_method").on('click', function() {
                //     let id = $(this).val();
                //     let fee = $("#shipping_price-" + id).val()
                //     $("#shipping_amount").text(fee)
                //     let total = $("#hidden_total_price").val();
                //     total = (total * 1) + (fee * 1);
                //     total = total.toFixed(2);
                //     $("#total_price").text(total);
                // })

                $('.place_order').on('click', function(e) {
                    e.preventDefault();
                    // check if terms and condition checked
                    if (!$('[name="agree_terms_condition"]:checked').length) {
                        toastr.error("{{ __('user.You must agree to our terms and condition') }}");
                        return;
                    }

                    $('.wsus__checkout_form').submit();

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


    <script>
        $('.payment-item').on('click', function() {
            $('.payment-item').removeClass('selected')

            $(this).addClass('selected')
        })

        function setPaymentMethod(ship) {
            // Set the selected payment method
            $('input[name="payment_method"]').val(ship);

            if (ship == 'aamarpay') {
                $('.place_order').html('Pay Now');
            } else {
                $('.place_order').html('Place Order');
            }
        }
    </script>
@endsection
