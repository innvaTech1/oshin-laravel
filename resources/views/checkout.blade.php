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
            color: #000000;
            /* Assuming qgreen is a shade of green like limegreen */
            display: flex;
            justify-content: center;
            align-items: center;
            padding-left: 1rem;
            padding-right: 1rem;
            text-transform: uppercase;
            cursor: pointer;
            border: 1px solid #930a02;
            border-radius: 5px;
        }

        .payment-item {
            transition: all 0.3s ease-in-out;
            border-width: 2px;
        }

        .payment-item:hover,
        .payment-radio:checked+.custom-radio-icon .checkmark {
            border-color: #930A02 !important;
            background-color: #930A02 !important;
        }

        .custom-radio-icon {
            width: 20px;
            height: 20px;
        }

        .checkmark {
            display: block;
            width: 16px;
            height: 16px;
            border-radius: 50%;
        }

        /* When selected */
        .payment-radio:checked+.custom-radio-icon .checkmark {
            background-color: #930A02 !important;
            border-color: #ff0d00 !important;
        }
    </style>

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
                                <h5>{{ __('Shipping Details') }}</h5>
                                @php
                                    if (auth('web')->user()) {
                                        $shipping = auth('web')->user()->shipping;
                                        $billing = auth('web')->user()->billing;
                                    } else {
                                        $shipping = null;
                                        $billing = null;
                                    }
                                @endphp
                                <div class="row mt-4">
                                    <div class="col-md-12 col-lg-6 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <input type="text" placeholder="{{ __('user.Name') }}*" name="name"
                                                value="{{ old('name', $shipping->name ?? '') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-6 col-xl-6">
                                        <div class="wsus__add_address_single">
                                            <input type="email" placeholder="{{ __('user.Email') }}" name="email"
                                                id="email" value="{{ old('email', $shipping->email ?? '') }}">
                                            <div id="email-error" class="text-danger small mt-1"></div>
                                            <!-- Validation message container -->
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-6 col-xl-6">
                                        <div class="wsus__add_address_single">
                                            <input type="text" placeholder="{{ __('user.Phone') }}*" name="phone"
                                                value="{{ old('phone', $shipping->phone ?? '') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-6 col-xl-6">
                                        <div class="wsus__add_address_single">
                                            <input type="text" placeholder="{{ __('user.Alternative Phone') }}"
                                                name="phone_alternative"
                                                value="{{ old('phone_alternative', $shipping->phone_alternative ?? '') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <input type="text" name="address" placeholder="{{ __('user.Address') }}*"
                                                value="{{ old('address', $shipping->address ?? '') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <select name="state_id" class="state form-control select_2"
                                                data-type="shipping">
                                                <option selected disabled>{{ __('Select State *') }}
                                                </option>
                                                @foreach ($states as $state)
                                                    <option value="{{ $state->id }}"
                                                        {{ $shipping?->state_id == $state->id ? 'selected' : '' }}>
                                                        {{ $state->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="wsus__check_single_form">
                                            <select name="city_id" class="city form-control select_2">
                                                <option selected {{ $shipping?->city_id ? 'selected' : '' }}
                                                    value="{{ $shipping?->city_id }}">
                                                    {{ $shipping?->city?->name ?? __('Select City *') }}
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-lg-12 col-xl-12">
                                        <div class="accordion checkout_accordian" id="accordionExample">
                                            <div class="accordion-item">
                                                <h2 class="accordion-header" id="headingThree">
                                                    <button class="accordion-button collapsed" type="button"
                                                        data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                        aria-expanded="false" aria-controls="collapseThree"
                                                        for="flexCheckDefault">
                                                        <div class="wsus__check_single_form">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox"
                                                                    id="flexCheckDefault" name="same_shipping" checked>
                                                                <label class="form-check-label" for="flexCheckDefault">
                                                                    {{ __('Billing address is the same as shipping address') }}
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
                                                                            value="{{ old('billing_name', $billing->name ?? '') }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 col-lg-6 col-xl-6">
                                                                    <div class="wsus__add_address_single">
                                                                        <input type="email"
                                                                            placeholder="{{ __('user.Email') }}"
                                                                            name="billing_email" id="billing-email"
                                                                            value="{{ old('billing_email', $billing->email ?? '') }}">
                                                                        <div id="billing-email-error"
                                                                            class="text-danger small mt-1"></div>
                                                                        <!-- Validation message container -->
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 col-lg-6 col-xl-6">
                                                                    <div class="wsus__add_address_single">
                                                                        <input type="text"
                                                                            placeholder="{{ __('user.Phone') }}*"
                                                                            name="billing_phone"
                                                                            value="{{ old('billing_phone', $billing->phone ?? '') }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12 col-lg-6 col-xl-6">
                                                                    <div class="wsus__add_address_single">
                                                                        <input type="text"
                                                                            placeholder="{{ __('user.Alternative Phone') }}"
                                                                            name="billing_phone_alternative"
                                                                            value="{{ old('billing_phone_alternative', $billing->billing_phone_alternative ?? '') }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-lg-12 col-xl-6">
                                                                    <div class="wsus__check_single_form">
                                                                        <input type="text" name="billing_address"
                                                                            placeholder="{{ __('user.Address') }}*"
                                                                            value="{{ old('billing_address', $billing->address ?? '') }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-lg-12 col-xl-6">
                                                                    <div class="wsus__check_single_form">
                                                                        <select name="billing_state_id"
                                                                            class="state form-control select_2"
                                                                            data-type="billing">
                                                                            <option selected disabled value="">
                                                                                {{ __('Select State *') }}
                                                                            </option>
                                                                            @foreach ($states as $state)
                                                                                <option value="{{ $state->id }}"
                                                                                    {{ $billing?->state_id == $state->id ? 'selected' : '' }}>
                                                                                    {{ $state->name }}</option>
                                                                            @endforeach
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-lg-12 col-xl-6">
                                                                    <div class="wsus__check_single_form">
                                                                        <select name="billing_city_id"
                                                                            class="city form-control select_2">
                                                                            <option selected
                                                                                {{ $billing?->city_id ? 'selected' : '' }}>
                                                                                {{ $billing?->city?->name ?? __('Select City *') }}
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
                                <button type="button" class="common_btn place_order">
                                    <span>{{ __('user.Place Order') }}</span></button>
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

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const billingEmailInput = document.getElementById('billing-email');
            const billingEmailError = document.getElementById('billing-email-error');

            // Regular expression for email validation
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            billingEmailInput.addEventListener('input', function() {
                const billingEmailValue = billingEmailInput.value.trim();

                if (!emailRegex.test(billingEmailValue)) {
                    billingEmailError.textContent = '{{ __('Please enter a valid email address.') }}';
                } else {
                    billingEmailError.textContent = ''; // Clear error message if valid
                }
            });
        });
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const emailInput = document.getElementById('email');
            const emailError = document.getElementById('email-error');

            // Regular expression for email validation
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            emailInput.addEventListener('input', function() {
                const emailValue = emailInput.value.trim();

                if (!emailRegex.test(emailValue)) {
                    emailError.textContent = '{{ __('Please enter a valid email address.') }}';
                } else {
                    emailError.textContent = ''; // Clear error message if valid
                }
            });
        });
    </script>
    <script>
        (function($) {
            "use strict";
            $(document).ready(function() {
                $('.accordion-button').on('click', function() {
                    // Check if the button is in a collapsed state (accordion is closed)
                    if ($(this).hasClass('collapsed')) {
                        // When expanding, check the checkbox
                        $(this).find('input[name="same_shipping"]').prop('checked', true);
                    } else {
                        // When collapsing, uncheck the checkbox
                        $(this).find('input[name="same_shipping"]').prop('checked', false);
                    }
                });
                $('.state').on('change', function() {
                    $('.preloader_area').removeClass('d-none');
                    let state_id = $(this).val();
                    let url = "{{ route('city-by-state', ':state_id') }}";
                    url = url.replace(':state_id', state_id);
                    const shipping = $('[name="same_shipping"]').prop('checked');
                    const type = $(this).data('type');

                    const parents = $(this).parents('div.col-md-6.col-lg-12');

                    // find closest city
                    $(parents).siblings('div').find('.city').first().html('').select2({});



                    $.ajax({
                        url: url,
                        method: 'GET',
                        data: {
                            shipping,
                            type
                        },
                        success: function(response) {
                            // closest city
                            $(parents).siblings('div').find('.city').first().html(response
                                .cities).select2();

                            // $('.city').html(response.cities).select2();

                            if (type == 'shipping') {
                                $('.item-details').html(response.view);
                            }
                            $('.preloader_area').addClass('d-none');
                        },
                        error: function(...errors) {

                            $('.preloader_area').addClass('d-none');
                        }
                    });
                });

                $('.place_order').on('click', function(e) {
                    e.preventDefault();
                    // check if terms and condition checked
                    if (!$('[name="agree_terms_condition"]:checked').length) {
                        toastr.error("{{ __('user.You must agree to our terms and condition') }}");
                        return;
                    }

                    if ($('.selected').length === 0) {
                        toastr.error("{{ __('Select Payment Method') }}");
                        return
                    }

                    $('.wsus__checkout_form').submit();

                })

                $('.wsus__checkout_form').on('submit', function(e) {
                    e.preventDefault();

                    // Check if terms and conditions are checked
                    if (!$('[name="agree_terms_condition"]:checked').length) {
                        toastr.error("{{ __('user.You must agree to our terms and condition') }}");
                        return;
                    }

                    // Check if a payment method is selected
                    if ($('.selected').length === 0) {
                        toastr.error("{{ __('Select Payment Method') }}");
                        return;
                    }

                    // Use the native submit method to avoid triggering the event again
                    this.submit();
                });

            });
        })(jQuery);
    </script>

    <script>
        $('.payment-item').on('click', function() {
            $('.payment-item').removeClass('selected')

            $(this).addClass('selected')
        })

        document.querySelector('.place_order').addEventListener('click', function(e) {
            const paymentMethod = document.querySelector('input[name="payment_method"]')?.value;

            if (!paymentMethod) {
                toastr.error('{{ __('Please select a payment method') }}');
                return;
            }

            if (paymentMethod === 'aamarpay') {
                // Additional validation for Aamarpay
                const requiredFields = ['name', 'email', 'phone', 'address'];
                let isValid = true;

                requiredFields.forEach(field => {
                    if (!document.querySelector(`[name="${field}"]`).value) {
                        isValid = false;
                        toastr.error(`{{ __('Please fill in all required fields') }}`);
                    }
                });

                if (!isValid) return;
            }

            document.querySelector('.wsus__checkout_form').submit();
        });

        function setPaymentMethod(method) {
            const form = document.querySelector('.wsus__checkout_form');
            const placeOrderBtn = document.querySelector('.place_order');
            let paymentMethod = document.querySelector('input[name="payment_method"]');

            // Create payment_method input if it doesn't exist
            if (!paymentMethod) {
                paymentMethod = document.createElement('input');
                paymentMethod.type = 'hidden';
                paymentMethod.name = 'payment_method';
                form.appendChild(paymentMethod);
            }

            // Remove existing Aamarpay fields
            document.querySelectorAll('[data-aamarpay]').forEach(el => el.remove());

            if (method === 'aamarpay') {
                // Change form action to Aamarpay endpoint
                form.action = 'https://sandbox.aamarpay.com/index.php'; // Use live URL for production

                // Get Aamarpay credentials from data attributes
                const aamarpayDiv = document.querySelector('[data-method="aamarpay"]');
                const storeId = aamarpayDiv.dataset.storeId;
                const signatureKey = aamarpayDiv.dataset.signatureKey;
                const currency = aamarpayDiv.dataset.currency;
                const country = aamarpayDiv.dataset.country;

                // Generate transaction ID
                const tranId = 'WEP-' + generateRandomString(6);

                // Get customer details from form
                const name = form.querySelector('[name="name"]').value;
                const email = form.querySelector('[name="email"]').value;
                const phone = form.querySelector('[name="phone"]').value;
                const address = form.querySelector('[name="address"]').value;
                const state = form.querySelector('[name="state_id"] option:checked').textContent;
                const city = form.querySelector('[name="city_id"] option:checked').textContent;

                // Get order total
                const amount = parseFloat(document.querySelector('.total_amount').dataset.total);

                // Create Aamarpay required fields
                const fields = {
                    'store_id': 'aamarpaytest',
                    'signature_key': 'dbb74894e82415a2f7ff0ec3a97e4183',
                    'tran_id': tranId,
                    'amount': amount,
                    'currency': "BDT",
                    'cus_name': name,
                    'cus_email': email,
                    'cus_phone': phone,
                    'cus_add1': address,
                    'cus_city': city,
                    'cus_state': state,
                    'cus_country': country,
                    'cus_postcode': '1206', // Adjust as needed
                    'desc': 'Order Payment',
                    'success_url': '{{ route('payment.success') }}',
                    'fail_url': '{{ route('payment.fail') }}',
                    'cancel_url': '{{ route('payment.cancel') }}'
                };

                // Add fields to form
                Object.entries(fields).forEach(([name, value]) => {
                    const input = document.createElement('input');
                    input.type = 'hidden';
                    input.name = name;
                    input.value = value;
                    input.setAttribute('data-aamarpay', 'true');
                    form.appendChild(input);
                });

                // Update button text
                placeOrderBtn.querySelector('span').textContent = 'Pay Now';
            } else {
                // Reset for other payment methods
                form.action = '{{ route('checkout.payment') }}';
                placeOrderBtn.querySelector('span').textContent = 'Place Order';
            }

            paymentMethod.value = method;
        }

        function generateRandomString(length) {
            const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
            let str = '';
            for (let i = 0; i < length; i++) {
                str += chars.charAt(Math.floor(Math.random() * chars.length));
            }
            return str;
        }
    </script>
@endsection
