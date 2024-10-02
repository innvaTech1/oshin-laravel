@extends('admin.master_layout')
@section('title')
    <title>{{ __('Topbar Contact') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Topbar Contact') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Topbar Contact') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.update-topbar-contact') }}" method="POST">
                                    @csrf
                                    @method('PUT')
                                    <div class="form-group">
                                        <label for="">{{ __('Topbar Phone') }}</label>
                                        <input type="text" name="topbar_phone" class="form-control"
                                            value="{{ $setting->topbar_phone }}">
                                    </div>
                                    <div class="form-group">
                                        <label for="">{{ __('Topbar Email') }}</label>
                                        <input type="text" name="topbar_email" class="form-control"
                                            value="{{ $setting->topbar_email }}">
                                    </div>

                                    <div class="form-group">
                                        <label for="">{{ __('Menu Phone') }}</label>
                                        <input type="text" name="menu_phone" class="form-control"
                                            value="{{ $setting->menu_phone }}">
                                    </div>
                                    <button type="submit" class="btn btn-primary">{{ __('Update') }}</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
