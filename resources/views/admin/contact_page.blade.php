@extends('admin.master_layout')
@section('title')
    <title>{{ __('Conact Us') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Conact Us') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Conact Us') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                @if ($contact)
                                    <form action="{{ route('admin.contact-us.update', $contact->id) }}" method="POST"
                                        enctype="multipart/form-data">
                                        @csrf
                                        @method('PUT')
                                        <div class="row">
                                            <div class="form-group col-12">
                                                <label>{{ __('Existing Banner Image') }}</label>
                                                <div>
                                                    <img src="{{ asset($contact->banner) }}" width="200px" alt="">
                                                </div>
                                            </div>
                                            <div class="form-group col-12">
                                                <label>{{ __('New Banner Image') }}</label>
                                                <input type="file" id="slug" class="form-control-file"
                                                    name="banner_image">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Email') }} <span class="text-danger">*</span></label>
                                                <input type="email" name="email" class="form-control"
                                                    value="{{ $contact->email }}">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Phone') }} <span class="text-danger">*</span></label>
                                                <input type="text" name="phone" class="form-control"
                                                    value="{{ $contact->phone }}">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Address') }} <span class="text-danger">*</span></label>
                                                <input type="text" name="address" class="form-control"
                                                    value="{{ $contact->address }}">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Title') }} <span class="text-danger">*</span></label>
                                                <input type="text" name="title" class="form-control"
                                                    value="{{ $contact->title }}">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Description') }} <span class="text-danger">*</span></label>
                                                <textarea name="description" cols="30" rows="10" class="form-control text-area-5">{{ $contact->description }}</textarea>
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Google Map') }} <span class="text-danger">*</span></label>
                                                <textarea name="google_map" cols="30" rows="10" class="form-control text-area-5">{{ $contact->map }}</textarea>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <button class="btn btn-primary">{{ __('Update') }}</button>
                                            </div>
                                        </div>
                                    </form>
                                @else
                                    <form action="{{ route('admin.contact-us.store') }}" method="POST"
                                        enctype="multipart/form-data">
                                        @csrf
                                        <div class="row">
                                            <div class="form-group col-12">
                                                <label>{{ __('Banner Image') }}</label>
                                                <input type="file" id="slug" class="form-control-file"
                                                    name="banner_image">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Email') }} <span class="text-danger">*</span></label>
                                                <input type="email" name="email" class="form-control">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Phone') }} <span class="text-danger">*</span></label>
                                                <input type="text" name="phone" class="form-control">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Address') }} <span class="text-danger">*</span></label>
                                                <input type="text" name="address" class="form-control">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Title') }} <span class="text-danger">*</span></label>
                                                <input type="text" name="title" class="form-control">
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Description') }} <span class="text-danger">*</span></label>
                                                <textarea name="description" cols="30" rows="10" class="form-control text-area-5"></textarea>
                                            </div>

                                            <div class="form-group col-12">
                                                <label>{{ __('Google Map') }} <span class="text-danger">*</span></label>
                                                <textarea name="google_map" cols="30" rows="10" class="form-control text-area-5"></textarea>
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
