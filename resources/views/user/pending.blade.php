@extends('user.layout')

@section('title')
    <title>{{ __('user.Seller Approval Pending') }}</title>
@endsection

@section('user-content')
    <div class="row">
        <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
            <div class="dashboard_content">
                @if (session()->has('error'))
                    <div class="alert alert-danger">
                        {{ session('error') }}
                    </div>
                @endif
                @if (session()->has('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                @endif

                <div class="wsus__dashboard">
                    <div class="row justify-content-center align-items-center">
                        <div class="col-lg-6 col-md-8 col-sm-10">
                            <div class="card shadow-lg border-0">
                                <div class="card-header bg-warning text-white text-center">
                                    <h2 class="mb-0">Seller Account Pending Approval</h2>
                                </div>
                                <div class="card-body text-center">
                                    <p class="lead">Your seller account has been created but is not yet active. Please contact our support team to activate your account.</p>
                                    <a href="https://wa.me/8801" class="btn btn-dark btn-lg mt-3">Contact Support</a>
                                </div>
                                <div class="card-footer text-muted text-center">
                                    Thank you for your patience.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
