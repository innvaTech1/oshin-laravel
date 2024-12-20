@extends('admin.master_layout')
@section('title')
    <title>{{ __('Specification Key') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Edit pecification Key') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route('admin.specification-key.index') }}">{{ __('Specification Key') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Create Specification Key') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.specification-key.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Specification Key') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.specification-key.update', $SpecificationKey->id) }}"
                                    method="POST">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Key') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="key" class="form-control" name="key"
                                                value="{{ $SpecificationKey->key }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option {{ $SpecificationKey->status == '1' ? 'selected' : '' }}
                                                    value="1">{{ __('Active') }}</option>
                                                <option {{ $SpecificationKey->status == '0' ? 'selected' : '' }}
                                                    value="0">{{ __('Inactive') }}</option>
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
