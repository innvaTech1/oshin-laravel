@extends('layout')
@section('title')
    <title>{{ $seoSetting->seo_title }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ $seoSetting->seo_description }}">
@endsection

@section('public-content')
    <!--============================
                    CONTACT PAGE START
                ==============================-->
    <section id="wsus__contact">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="wsus__contact_header">
                        <h4>{{ $contact ? $contact->title : '' }}</h4>
                        <p>{{ $contact ? $contact->description : '' }}</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-sm-12 col-lg-4">
                    <div class="wsus__contact_single">
                        <i class="fal fa-envelope"></i>
                        <h5>{{ __('user.mail address') }}</h5>
                        @if ($contact)
                            <a href="mailto:{{ $contact->email }}">{{ $contact->email }}</a>
                        @endif

                    </div>
                </div>
                <div class="col-xl-4 col-sm-12 col-lg-4">
                    <div class="wsus__contact_single">
                        <i class="far fa-phone-alt"></i>
                        <h5>{{ __('user.phone number') }}</h5>
                        @if ($contact)
                            <a href="macallto:{{ $contact->phone }}">{{ $contact->phone }}</a>
                        @endif
                    </div>
                </div>
                <div class="col-xl-4 col-sm-12 col-lg-4">
                    <div class="wsus__contact_single">
                        <i class="fal fa-map-marker-alt"></i>
                        <h5>{{ __('user.contact address') }}</h5>
                        @if ($contact)
                            <a href="javascript::void()">{{ $contact->address }}</a>
                        @endif
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-12">
                    <div class="wsus__contact_question">
                        <h5>{{ __('user.Send Us a Message') }}</h5>
                        <form method="POST" action="{{ route('send-contact-message') }}">
                            @csrf
                            <div class="row">
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__con_form_single">
                                        <input type="text" name="name" placeholder="{{ __('user.Name') }}">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__con_form_single">
                                        <input type="email" name="email" placeholder="{{ __('user.Email') }}">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__con_form_single">
                                        <input type="text" name="phone" placeholder="{{ __('user.Phone') }}">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-md-6">
                                    <div class="wsus__con_form_single">
                                        <input type="text" placeholder="{{ __('user.Subject') }}" name="subject">
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="wsus__con_form_single">
                                        <textarea cols="3" rows="5" placeholder="{{ __('user.Message') }}" name="message"></textarea>
                                    </div>
                                </div>
                            </div>

                            @if ($recaptchaSetting->status == 1)
                                <div class="col-xl-12">
                                    <div class="wsus__single_com mb-3">
                                        <div class="g-recaptcha" data-sitekey="{{ $recaptchaSetting->site_key }}"></div>
                                    </div>
                                </div>
                            @endif

                            <div class="col-12">
                                <button type="submit" class="common_btn"> <span>{{ __('user.send now') }}</span></button>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="col-12">
                    @if ($contact->map)
                        <div class="wsus__con_map">
                            {!! $contact->map !!}

                            {{-- sample --}}
                            {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14615.994260040543!2d90.49477098678912!3d23.67600930953518!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b6c9cac2182b%3A0x8cbfd7608a612b0e!2sPaschim%20Para%2C%20Kadamtoli!5e0!3m2!1sen!2sbd!4v1719647563096!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> --}}
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <!--============================
                    CONTACT PAGE END
                ==============================-->
@endsection
