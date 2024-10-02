@extends('admin.master_layout')
@section('title')
    <title>{{ __('Slider') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Slider') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Slider') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.slider.index') }}" class="btn btn-primary"><i class="fas fa-backward"></i>
                    {{ __('Go Back') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.slider.store') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">

                                        <div class="form-group col-12">
                                            <label>{{ __('Slider Image') }}</label>
                                            <input type="file" name="slider_image" class="form-control-file">
                                        </div>


                                        <div class="form-group col-12">
                                            <label>{{ __('Title') }} <span class="text-danger">*</span></label>
                                            <textarea name="title" id="" cols="30" rows="3" class="form-control text-area-3"></textarea>
                                        </div>



                                        <div class="form-group col-12">
                                            <label>{{ __('Description') }} <span class="text-danger">*</span></label>
                                            <textarea name="description" id="" cols="30" rows="3" class="form-control text-area-3"></textarea>
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Button Link') }} <span class="text-danger">*</span></label>
                                            <input type="text" name="button_link" class="form-control">
                                        </div>

                                        <div class="form-group col-12">
                                            <label>{{ __('Serial') }} <span class="text-danger">*</span></label>
                                            <input type="number" name="serial" class="form-control">
                                        </div>



                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option value="1">{{ __('Active') }}</option>
                                                <option value="0">{{ __('Inactive') }}</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button class="btn btn-primary">{{ __('Save') }}</button>
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
