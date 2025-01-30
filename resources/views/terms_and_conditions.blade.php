@extends('layout')

@section('title')
    <title>{{ __('user.Terms And Conditions') }}</title>
@endsection

@section('meta')
    <meta name="description" content="{{ __('user.Terms And Conditions') }}">
@endsection

@section('public-content')
    <section id="wsus__product_page" class="wsus__custom_pages">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    @if ($terms_conditions)
                        {!! clean($terms_conditions->terms_and_condition) !!}
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection
