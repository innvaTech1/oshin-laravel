@extends('admin.master_layout')
@section('title')
    <title>{{ __('FAQ') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Edit FAQ') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">Dashboard</a></div>
                    <div class="breadcrumb-item active"><a href="{{ route('admin.faq.index') }}">{{ __('FAQ') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Edit FAQ') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.faq.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('FAQ') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.faq.update', $faq->id) }}" method="POST">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Question') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="question" class="form-control" name="question"
                                                value="{{ $faq->question }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Answer') }} <span class="text-danger">*</span></label>
                                            <textarea name="answer" id="" cols="30" rows="10" class="summernote">{{ $faq->answer }}</textarea>
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option {{ $faq->status == 1 ? 'selected' : '' }} value="1">
                                                    {{ __('Active') }}</option>
                                                <option {{ $faq->status == 0 ? 'selected' : '' }} value="0">
                                                    {{ __('Inactive') }}</option>
                                            </select>
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
