@extends('admin.master_layout')
@section('title')
    <title>{{ __('About Us') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('About Us') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('About Us') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                @if ($aboutUs)
                                    <form action="{{ route('admin.about-us.update', $aboutUs->id) }}" method="POST"
                                        enctype="multipart/form-data">
                                        @csrf
                                        @method('PUT')
                                        <div class="row">
                                            <div class="form-group col-12">
                                                <label>{{ __('Existing Banner Image') }}</label>
                                                <div>
                                                    <img src="{{ asset($aboutUs->banner_image) }}" width="200px"
                                                        alt="">
                                                </div>
                                            </div>
                                            <div class="form-group col-12">
                                                <label>{{ __('New Banner Image') }}</label>
                                                <input type="file" id="slug" class="form-control-file"
                                                    name="banner_image">
                                            </div>
                                            <div class="form-group col-12">
                                                <label>{{ __('Description') }} <span class="text-danger">*</span></label>
                                                <textarea name="description" cols="30" rows="10" class="summernote">{{ $aboutUs->description }}</textarea>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <button class="btn btn-primary">{{ __('Update') }}</button>
                                            </div>
                                        </div>
                                    </form>
                                @else
                                    <form action="{{ route('admin.about-us.store') }}" method="POST"
                                        enctype="multipart/form-data">
                                        @csrf
                                        <div class="row">
                                            <div class="form-group col-12">
                                                <label>{{ __('Banner Image') }}</label>
                                                <input type="file" id="slug" class="form-control-file"
                                                    name="banner_image">
                                            </div>
                                            <div class="form-group col-12">
                                                <label>{{ __('Description') }} <span class="text-danger">*</span></label>
                                                <textarea name="description" cols="30" rows="10" class="summernote"></textarea>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <button class="btn btn-primary">{{ __('Save') }}</button>
                                            </div>
                                        </div>
                                    </form>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>
@endsection
