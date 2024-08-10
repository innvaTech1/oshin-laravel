@extends('layout')
@section('title')
    <title>{{__('user.Privacy Policy')}}</title>
@endsection
@section('meta')
    <meta name="description" content="{{__('user.Privacy Policy')}}">
@endsection

@section('public-content')
   

    <!--============================
        CUSTOM PAGES PAGE START
    ==============================-->
    <section id="wsus__product_page" class="wsus__custom_pages">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    @if ($privacyPolicy)
                    {!! clean($privacyPolicy->privacy_policy) !!}
                    @endif

                </div>
            </div>
        </div>
    </section>
    <!--============================
        CUSTOM PAGES PAGE END
    ==============================-->

@endsection
