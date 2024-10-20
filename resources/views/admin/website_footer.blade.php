@extends('admin.master_layout')
@section('title')
    <title>{{ __('Footer') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Footer') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Footer') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.footer.update', $footer->id) }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Email') }} <span class="text-danger">*</span></label>
                                            <input type="email" name="email" class="form-control"
                                                value="{{ $footer->email }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Phone') }} <span class="text-danger">*</span></label>
                                            <input type="text" name="phone" class="form-control"
                                                value="{{ $footer->phone }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Address') }} <span class="text-danger">*</span></label>
                                            <input type="text" name="address" class="form-control"
                                                value="{{ $footer->address }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Existing Image') }}</label>
                                            <div>
                                                <img src="{{ asset($footer->payment_image) }}" alt=""
                                                    width="220px">
                                            </div>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Payment Card Image') }}</label>
                                            <input type="file" name="card_image" class="form-control-file">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Image Title') }} <span class="text-danger">*</span></label>
                                            <input type="text" name="image_title" class="form-control"
                                                value="{{ $footer->image_title }}">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Copyright') }} <span class="text-danger">*</span></label>
                                            <input type="text" name="copyright" class="form-control"
                                                value="{{ $footer->copyright }}">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button class="btn btn-primary">{{ __('Update') }}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>
@endsection
