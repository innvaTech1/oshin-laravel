@extends('admin.master_layout')

@section('title')
    <title>{{ isset($permission) ? __('Edit Permission') : __('Create Permission') }}</title>
@endsection

@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ isset($permission) ? __('Edit Permission') : __('Create Permission') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ isset($permission) ? __('Edit Permission') : __('Create Permission') }}
                    </div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.permission.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Permissions') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form
                                    action="{{ isset($permission) ? route('admin.permission.update', $permission->id) : route('admin.permission.store') }}"
                                    method="POST">
                                    @csrf
                                    @if (isset($permission))
                                        @method('PUT')
                                    @endif
                                    <div class="row">

                                        <!-- Permission Name -->
                                        <div class="form-group col-12">
                                            <label>{{ __('Permission Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="name"
                                                value="{{ old('name', $permission->name ?? '') }}">
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button
                                                class="btn btn-primary">{{ isset($permission) ? __('Update Permission') : __('Create Permission') }}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
