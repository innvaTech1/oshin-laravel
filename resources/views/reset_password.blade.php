@extends('layout')
@section('title')
    <title>{{__('user.Reset Password')}}</title>
@endsection
@section('meta')
    <meta name="description" content="{{__('user.Reset Password')}}">
@endsection

@section('public-content')


    <!--============================
        FORGET PASSWORD START
    ==============================-->
    <section id="wsus__login_register">
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="wsus__forget_area">
                        <span class="qiestion_icon"><i class="fal fa-question-circle"></i></span>
                        <h4>{{__('user.Reset password')}}</h4>
                        <div class="wsus__login">
                            <form action="{{ route('store-reset-password',$token) }}" method="POST">
                                @csrf
                                <div class="wsus__login_input">
                                    <i class="fal fa-envelope"></i>
                                    <input type="email" placeholder="{{__('user.Email')}}" name="email" value="{{ $user->email }}">
                                </div>

                                <div class="wsus__login_input">
                                    <i class="fas fa-key"></i>
                                    <input type="password" placeholder="{{__('user.Password')}}" name="password">
                                </div>

                                <div class="wsus__login_input">
                                    <i class="fas fa-key"></i>
                                    <input type="password" placeholder="{{__('user.Confirm Password')}}" name="password_confirmation">
                                </div>

                                @if($recaptchaSetting->status==1)
                                    <div class="col-xl-12">
                                        <div class="wsus__single_com mb-3">
                                            <div class="g-recaptcha" data-sitekey="{{ $recaptchaSetting->site_key }}"></div>
                                        </div>
                                    </div>
                                @endif

                                <button class="common_btn" type="submit"> <span>{{__('user.Reset Password')}}</span></button>
                            </form>
                        </div>
                        <a class="see_btn mt-4" href="{{ route('login') }}">{{__('user.go to login')}}</a>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--============================
        FORGET PASSWORD END
    ==============================-->

@endsection
