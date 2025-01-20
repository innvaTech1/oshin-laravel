@extends('admin.master_layout')

@section('title')
    <title>{{ isset($admin) ? __('Edit Admin') : __('Create Admin') }}</title>
@endsection

@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ isset($admin) ? __('Edit Admin') : __('Create Admin') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item active"><a href="{{ route('admin.admin.index') }}">{{ __('Admin') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ isset($admin) ? __('Edit Admin') : __('Create Admin') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.admin.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Admin') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form
                                    action="{{ isset($admin) ? route('admin.admin.update', $admin->id) : route('admin.admin.store') }}"
                                    method="POST">
                                    @csrf
                                    @if (isset($admin))
                                        @method('PUT') <!-- Use PUT method for update -->
                                    @endif
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="name" class="form-control" name="name"
                                                value="{{ old('name', isset($admin) ? $admin->name : '') }}">
                                        </div>
                                        <div class="form-group col-12">
                                            <label>{{ __('Email') }} <span class="text-danger">*</span></label>
                                            <input type="email" id="slug" class="form-control" name="email"
                                                value="{{ old('email', isset($admin) ? $admin->email : '') }}">
                                        </div>
                                        @if (!isset($admin))
                                            <!-- Only show password field if creating a new admin -->
                                            <div class="form-group col-12">
                                                <label>{{ __('Password') }} <span class="text-danger">*</span></label>
                                                <input type="password" id="password" class="form-control" name="password">
                                            </div>
                                        @endif
                                        <div class="form-group col-12">
                                            <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                            <select name="status" class="form-control">
                                                <option value="1"
                                                    {{ old('status', isset($admin) ? $admin->status : 1) == 1 ? 'selected' : '' }}>
                                                    {{ __('Active') }}</option>
                                                <option value="0"
                                                    {{ old('status', isset($admin) ? $admin->status : 0) == 0 ? 'selected' : '' }}>
                                                    {{ __('Inactive') }}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button
                                                class="btn btn-primary">{{ isset($admin) ? __('Update') : __('Save') }}</button>
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
