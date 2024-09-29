@extends('seller.master_layout')
@section('title')
    <title>{{ __('Bank Details') }}</title>
@endsection
@section('seller-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Bank Details') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route('seller.dashboard') }}">{{ __('user.Dashboard') }}</a></div>
                    <div class="breadcrumb-item">{{ __('Bank Details') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('seller.update-bank-details') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="form-group col-6">
                                            <label>{{ __('Account Name') }} </label>
                                            <input type="text" class="form-control"
                                                name="account_name"value="{{ $bank?->account_name }}">
                                        </div>

                                        <div class="form-group col-6">
                                            <label>{{ __('Account Number') }} </label>
                                            <input type="text" class="form-control" name="account_number"
                                                value="{{ $bank?->account_number }}">
                                        </div>

                                        <div class="form-group col-6">
                                            <label>{{ __('Bank Name') }} </label>
                                            <input type="text" class="form-control" name="bank_name"
                                                value="{{ $bank?->bank_name }}">
                                        </div>
                                        <div class="form-group col-6">
                                            <label>{{ __('Branch Name') }} </label>
                                            <input type="text" class="form-control" name="branch_name"
                                                value="{{ $bank?->branch_name }}">
                                        </div>

                                        <div class="form-group col-6">
                                            <label>{{ __('Routing No') }} </label>
                                            <input type="text" class="form-control" name="routing_no"
                                                value="{{ $bank?->routing_no }}">
                                        </div>

                                        <div class="form-group col-6">
                                            <label>{{ __('Check Image') }} </label>
                                            <input type="file" class="form-control" name="image">
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
