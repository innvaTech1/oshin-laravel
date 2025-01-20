@extends('admin.master_layout')
@section('title')
    <title>{{ isset($role) ? __('Edit Role') : __('Create Role') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ isset($role) ? __('Edit Role') : __('Create Role') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ isset($role) ? __('Edit Role') : __('Create Role') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.role.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Roles') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form
                                    action="{{ isset($role) ? route('admin.role.update', $role->id) : route('admin.role.store') }}"
                                    method="POST">
                                    @csrf
                                    @if (isset($role))
                                        @method('PUT')
                                    @endif
                                    <div class="row">

                                        <!-- Role Name -->
                                        <div class="form-group col-12">
                                            <label>{{ __('Role Name') }} <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="name"
                                                value="{{ old('name', $role->name ?? '') }}">
                                        </div>

                                        <!-- Permissions -->
                                        <div class="form-group col-12">
                                            <label>{{ __('Permissions') }}</label>
                                            <div class="row">
                                                @foreach ($permissions as $permission)
                                                    <div class="col-md-4">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input"
                                                                id="permission_{{ $permission->id }}" name="permissions[]"
                                                                value="{{ $permission->name }}"
                                                                @if (isset($role) && $role->permissions->contains($permission->id)) checked @endif>
                                                            <label class="custom-control-label"
                                                                for="permission_{{ $permission->id }}">{{ $permission->name }}</label>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>

                                        <!-- Status -->
                                        {{-- <div class="form-group col-12">
                                            <label>{{ __('Status') }}</label>
                                            <select name="status" class="form-control">
                                                <option value="1" @if (old('status', $role->status ?? '') == 1) selected @endif>
                                                    {{ __('Active') }}</option>
                                                <option value="0" @if (old('status', $role->status ?? '') == 0) selected @endif>
                                                    {{ __('Inactive') }}</option>
                                            </select>
                                        </div> --}}

                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button
                                                class="btn btn-primary">{{ isset($role) ? __('Update Role') : __('Create Role') }}</button>
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
