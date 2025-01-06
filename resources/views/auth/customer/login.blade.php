@extends('layout')
@section('title')
    <title>{{ __('user.Login') }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ __('user.Login') }}">
@endsection

@section('public-content')
    {{-- <!--============================
        LOGIN/REGISTER PAGE START
    ==============================--> --}}
    <section id="wsus__login_register" style="margin-bottom: 30px">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 m-auto">
                    <div class="wsus__login_reg_area">
                        <ul class="nav nav-pills mb-3" id="pills-tab2" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pills-home-tab2" data-bs-toggle="pill"
                                    data-bs-target="#pills-homes" type="button" role="tab" aria-controls="pills-homes"
                                    aria-selected="true">{{ __('user.Login') }}</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-profile-tab2" data-bs-toggle="pill"
                                    data-bs-target="#pills-profiles" type="button" role="tab"
                                    aria-controls="pills-profiles" aria-selected="true">{{ __('user.signup') }}</button>
                            </li>
                        </ul>
                        <div class="tab-content" id="pills-tabContent2">
                            <div class="tab-pane fade show active" id="pills-homes" role="tabpanel"
                                aria-labelledby="pills-home-tab2">
                                <div class="wsus__login">
                                    <form action="{{ route('store-login') }}" method="POST" id="login_form">
                                        @csrf
                                        <div class="wsus__login_input">
                                            <i class="fas fa-user-tie"></i>
                                            <input type="text" placeholder="{{ __('user.Email / Phone') }}"
                                                name="email">
                                        </div>
                                        <div class="wsus__login_input">
                                            <i class="fas fa-key"></i>
                                            <input type="password" placeholder="{{ __('user.Password') }}" name="password">
                                            <a href="javascript:;" class="show-pass"><i class="fas fa-eye"></i></a>
                                        </div>
                                        <div class="wsus__login_save">
                                            <div class="form-check form-switch">
                                                <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault"
                                                    name="remember">
                                                <label class="form-check-label"
                                                    for="flexSwitchCheckDefault">{{ __('user.Remember me') }}</label>
                                            </div>
                                            <a class="forget_p"
                                                href="{{ route('forget-password') }}">{{ __('user.forget password ?') }}</a>
                                        </div>

                                        @if ($recaptchaSetting->status == 1)
                                            <div class="col-xl-12">
                                                <div class="wsus__single_com mb-3">
                                                    <div class="g-recaptcha"
                                                        data-sitekey="{{ $recaptchaSetting->site_key }}"></div>
                                                </div>
                                            </div>
                                        @endif

                                        <button class="common_btn" type="submit"><span>{{ __('user.login') }}</span></button>
                                        @if (enum_exists('App\Enums\SocialiteDriverType'))
                                            @php
                                                $socialiteEnum = 'App\Enums\SocialiteDriverType';
                                                $icons = $socialiteEnum::getIcons();
                                                $social = App\Models\SocialLoginInformation::first();
                                            @endphp

                                            @foreach ($socialiteEnum::cases() as $index => $case)
                                                @php

                                                    if ($case->value != 'google') {
                                                        continue;
                                                    }
                                                    $driverName = $case->value . '_login_status';
                                                @endphp
                                                @if ($social->is_gmail == 1)
                                                    <div class="d-flex align-items-center justify-content-center mt-3">
                                                        <a href="{{ route('auth.social', $case->value) }}"
                                                            class="wsus__login_others_option" style="color:#930A02">
                                                            <i class="fab fa-google"></i>
                                                        </a>
                                                    </div>
                                                @endif
                                            @endforeach
                                        @endif
                                    </form>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pills-profiles" role="tabpanel"
                                aria-labelledby="pills-profile-tab2">
                                <div class="wsus__login">
                                    <form action="{{ route('store-register') }}" method="POST" id="register_form">
                                        @csrf
                                        <div class="wsus__login_input">
                                            <i class="fas fa-user-tie"></i>
                                            <input type="text" placeholder="{{ __('user.Name') }}" name="name">
                                        </div>
                                        <div class="wsus__login_input">
                                            <i class="far fa-envelope"></i>
                                            <input type="text" placeholder="{{ __('user.Email / Phone') }}"
                                                name="username">
                                        </div>
                                        <div class="wsus__login_input">
                                            <i class="fas fa-key"></i>
                                            <input type="password" placeholder="{{ __('user.Password') }}" name="password">
                                            <a href="javascript:;" class="show-pass"><i class="fas fa-eye"></i></a>
                                        </div>
                                        <div class="wsus__login_input">
                                            <i class="fas fa-key"></i>
                                            <input type="password" placeholder="{{ __('user.Confirm Password') }}"
                                                name="password_confirmation">
                                            <a href="javascript:;" class="show-pass"><i class="fas fa-eye"></i></a>
                                        </div>
                                        <div class="wsus__login_save">
                                            <div class="form-check form-switch">
                                                <input class="form-check-input" type="checkbox"
                                                    id="flexSwitchCheckDefault03" name="agree">
                                                <label class="form-check-label"
                                                    for="flexSwitchCheckDefault03">{{ __('user.I consent to the privacy policy') }}</label>
                                            </div>
                                        </div>

                                        @if ($recaptchaSetting->status == 1)
                                            <div class="col-xl-12">
                                                <div class="wsus__single_com mb-3">
                                                    <div class="g-recaptcha"
                                                        data-sitekey="{{ $recaptchaSetting->site_key }}"></div>
                                                </div>
                                            </div>
                                        @endif

                                        <button class="common_btn" type="submit"><span>{{ __('user.signup') }}</span></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>


    {{-- <!--============================
            LOGIN/REGISTER PAGE END
        ==============================--> --}}

@endsection



@push('js')
    <script>
        $(document).ready(function() {
            $('.show-pass').on('click', function() {
                let password = $(this).siblings('[name="password"]')

                if (!password.length) {
                    password = $(this).siblings('[name="password_confirmation"]')
                }
                const type = password.attr('type');

                if (type == 'password') {
                    password.attr('type', 'text')
                    $(this).children('i').removeClass('fa-eye')
                    $(this).children('i').addClass('fa-eye-slash')
                } else {
                    password.attr('type', 'password')
                    $(this).children('i').addClass('fa-eye')
                    $(this).children('i').removeClass('fa-eye-slash')
                }
            })

            // register_form

            // for registration form
            // check if given email/phone is valid
            $('#register_form').on('submit', function(e) {
                e.preventDefault();
                let username = $('[name="username"]').val();
                let emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                let phonePattern = /^(\+?88)?01[3-9][0-9]{8}$/;
                let isValid = false;

                if (emailPattern.test(username)) {
                    isValid = true;
                } else if (phonePattern.test(username)) {
                    isValid = true;
                }

                if (isValid) {
                    this.submit();
                } else {
                    toastr.error('Please enter a valid email or phone number');
                    return false;
                }
            })

            $('#login_form').on('submit', function(e) {
                e.preventDefault();
                let username = $('[name="email"]').val();
                let emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                let phonePattern = /^(\+?88)?01[3-9][0-9]{8}$/;
                let isValid = false;

                if (emailPattern.test(username)) {
                    isValid = true;
                } else if (phonePattern.test(username)) {
                    isValid = true;
                }

                if (isValid) {
                    this.submit();
                } else {
                    toastr.error('Please enter a valid email or phone number');
                    return false;
                }
            })
        })
    </script>
@endpush
