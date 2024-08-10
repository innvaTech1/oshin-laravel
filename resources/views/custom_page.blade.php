@extends('layout')
@section('title')
    <title>{{ $page->page_name }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ $page->page_name }}">
@endsection

@section('public-content')


    <!--============================
        CUSTOM PAGES PAGE START
    ==============================-->
    <section id="wsus__product_page" class="wsus__custom_pages">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    {!! clean($page->description) !!}
                </div>
            </div>
        </div>
    </section>
    <!--============================
        CUSTOM PAGES PAGE END
    ==============================-->

@endsection
