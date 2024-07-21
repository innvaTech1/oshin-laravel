@extends('layout')
@section('title')
    <title>{{ __('user.Checkout') }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ __('user.Checkout') }}">
@endsection

@section('public-content')
    <!--============================
                                                                                                                                                                                 BREADCRUMB START
                                                                                                                                                                            ==============================-->
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
                <form class="wsus__checkout_form" action="{{ route('user.checkout.update-shipping-address') }}"
                    method="POST">
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
                                                                    value="" id="flexCheckDefault">
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    {{ __('user.Same as shipping address') }}
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </button>
                                                </h2>
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
                                                                        <select name="billing_city_id"
                                                                            class="city form-control select_2">
                                                                            <option selected disabled>
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
                                <ul class="wsus__order_details_item">
                                    @php
                                        $subTotal = 0;
                                    @endphp
                                    @foreach ($cartContents as $cartContent)
                                        @php
                                            $variantPrice = 0;
                                            dd($cartContent->qty);
                                        @endphp
                                        <li>
                                            <div class="wsus__order_details_img">
                                                <img src="{{ asset($cartContent->options->image) }}" alt="blazer"
                                                    class="img-fluid w-100">
                                                <span>{{ $cartContent->qty }}</span>
                                            </div>
                                            <div class="wsus__order_details_text">
                                                <p>{{ $cartContent->name }}</p>
                                                <span>
                                                    @php
                                                        $totalVariant = count($cartContent->options->variants);
                                                    @endphp
                                                    @foreach ($cartContent->options->variants as $indx => $variant)
                                                        @php
                                                            $variantPrice += $cartContent->options->prices[$indx];
                                                        @endphp
                                                        {{ $variant }}:
                                                        {{ $cartContent->options->values[$indx] }}{{ $totalVariant == ++$indx ? '' : ',' }}
                                                    @endforeach
                                                </span>
                                            </div>
                                            @php
                                                $productPrice = $cartContent->price;
                                                $total = $productPrice * $cartContent->qty;
                                                $subTotal += $total;
                                            @endphp
                                            <div class="wsus__order_details_tk">
                                                <p>{{ currency_icon() }}{{ $total }}</p>
                                            </div>
                                        </li>

                                        @php
                                            $totalVariant = 0;
                                        @endphp
                                    @endforeach
                                </ul>

                                @php
                                    $tax_amount = 0;
                                    $total_price = 0;
                                    $coupon_price = 0;
                                    foreach ($cartContents as $key => $content) {
                                        $tax = $content->options->tax * $content->qty;
                                        $tax_amount = $tax_amount + $tax;
                                    }

                                    $total_price = $tax_amount + $subTotal;

                                    if (Session::get('coupon_price') && Session::get('offer_type')) {
                                        if (Session::get('offer_type') == 1) {
                                            $coupon_price = Session::get('coupon_price');
                                            $coupon_price = ($coupon_price / 100) * $total_price;
                                        } else {
                                            $coupon_price = Session::get('coupon_price');
                                        }
                                    }
                                    $total_price = $total_price - $coupon_price;
                                @endphp

                                <p class="wsus__product">{{ __('user.shipping Methods') }}</p>
                                @foreach ($shippingMethods as $shippingMethod)
                                    <input type="hidden" value="{{ $shippingMethod->fee }}"
                                        id="shipping_price-{{ $shippingMethod->id }}">
                                    @if ($shippingMethod->id == 1)
                                        @if ($shippingMethod->minimum_order <= $total_price)
                                            <div class="form-check">
                                                <input checked required class="form-check-input shipping_method"
                                                    type="radio" name="shipping_method"
                                                    id="shipping_method-{{ $shippingMethod }}"
                                                    value="{{ $shippingMethod->id }}">
                                                <label class="form-check-label"
                                                    for="shipping_method-{{ $shippingMethod }}">
                                                    {{ $shippingMethod->title }}
                                                    <span>{{ $shippingMethod->description }}</span>
                                                </label>
                                            </div>
                                        @endif
                                    @else
                                        <div class="form-check">
                                            <input required class="form-check-input shipping_method" type="radio"
                                                name="shipping_method" id="shipping_method-{{ $shippingMethod }}"
                                                value="{{ $shippingMethod->id }}">
                                            <label class="form-check-label" for="shipping_method-{{ $shippingMethod }}">
                                                {{ $shippingMethod->title }}
                                                <span>{{ $shippingMethod->description }}</span>
                                            </label>
                                        </div>
                                    @endif
                                @endforeach

                                <div class="wsus__order_details_summery">
                                    <p>{{ __('user.subtotal') }}:
                                        <span>{{ currency_icon() }}{{ $subTotal }}</span>
                                    </p>
                                    <p>{{ __('user.Tax') }}(+):
                                        <span>{{ currency_icon() }}{{ $tax_amount }}</span>
                                    </p>
                                    <p>{{ __('user.Shipping') }}(+): <span>{{ currency_icon() }}<span
                                                id="shipping_amount">0</span></span></p>
                                    <p>{{ __('user.Coupon') }}(-):
                                        <span>{{ currency_icon() }}{{ $coupon_price }}</span>
                                    </p>
                                    <p class="total"><span>{{ __('user.total') }}:</span>
                                        <span>{{ currency_icon() }}<span
                                                id="total_price">{{ $total_price }}</span></span>
                                    </p>
                                    <input type="hidden" value="{{ $total_price }}" id="hidden_total_price">
                                </div>
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
                                <button type="submit" class="common_btn">{{ __('user.Continue Shopping') }}</button>
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
                        <h5 class="modal-title" id="exampleModalLabel">add new address</h5>
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
                                            <input type="text" name="address"
                                                placeholder="{{ __('user.Address') }}*" value="{{ old('address') }}">
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
                $(".shipping_method").on('click', function() {
                    let id = $(this).val();
                    let fee = $("#shipping_price-" + id).val()
                    $("#shipping_amount").text(fee)
                    let total = $("#hidden_total_price").val();
                    total = (total * 1) + (fee * 1);
                    total = total.toFixed(2);
                    $("#total_price").text(total);
                })
            });
        })(jQuery);
    </script>


    <script>
        (function($) {
            "use strict";
            $(document).ready(function() {

                $("#country_id").on("change", function() {
                    var countryId = $("#country_id").val();
                    if (countryId) {
                        $.ajax({
                            type: "get",
                            url: "{{ url('/user/state-by-country/') }}" + "/" + countryId,
                            success: function(response) {
                                $("#state_id").html(response.states);
                                var response =
                                    "<option value=''>{{ __('user.Select a City') }}</option>";
                                $("#city_id").html(response);
                            },
                            error: function(err) {}
                        })
                    } else {
                        var response = "<option value=''>{{ __('user.Select a State') }}</option>";
                        $("#state_id").html(response);
                        var response = "<option value=''>{{ __('user.Select a City') }}</option>";
                        $("#city_id").html(response);
                    }

                })

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
@endsection
