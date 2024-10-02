@extends('admin.master_layout')
@section('title')
    <title>{{ __('Payment Methods') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Payment Methods') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                </div>
            </div>
            <div class="section-body">
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-3">
                                            <ul class="nav nav-pills flex-column" id="myTab4" role="tablist">
                                                <li class="nav-item border rounded mb-1">
                                                    <a class="nav-link active" id="aamarpay-tab" data-toggle="tab"
                                                        href="#aamarpayTab" role="tab" aria-controls="aamarpayTab"
                                                        aria-selected="true">{{ __('Aamarpay') }}</a>
                                                </li>
                                                <li class="nav-item border rounded mb-1">
                                                    <a class="nav-link" id="bank-account-tab" data-toggle="tab"
                                                        href="#bankAccountTab" role="tab" aria-controls="bankAccountTab"
                                                        aria-selected="true">{{ __('Bank Account') }}</a>
                                                </li>

                                                <li class="nav-item border rounded mb-1">
                                                    <a class="nav-link" id="cash-tab" data-toggle="tab" href="#cashTab"
                                                        role="tab" aria-controls="cashTab"
                                                        aria-selected="true">{{ __('Cash On Deliver') }}</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-9">
                                            <div class="border rounded">
                                                <div class="tab-content no-padding" id="settingsContent">
                                                    <div class="tab-pane fade active show" id="aamarpayTab" role="tabpanel"
                                                        aria-labelledby="aamarpay-tab">
                                                        <div class="card m-0">
                                                            <div class="card-body">
                                                                <form action="{{ route('admin.update-aamarpay') }}"
                                                                    method="POST" enctype="multipart/form-data">
                                                                    @csrf
                                                                    @method('PUT')
                                                                    <div class="form-group">
                                                                        <label
                                                                            for="">{{ __('Aamarpay Status') }}</label>
                                                                        <div>
                                                                            @if ($aamarpay?->status == 1)
                                                                                <input id="status_toggle" type="checkbox"
                                                                                    checked data-toggle="toggle"
                                                                                    data-on="{{ __('Enable') }}"
                                                                                    data-off="{{ __('Disable') }}"
                                                                                    data-onstyle="success"
                                                                                    data-offstyle="danger" name="status">
                                                                            @else
                                                                                <input id="status_toggle" type="checkbox"
                                                                                    data-toggle="toggle"
                                                                                    data-on="{{ __('Enable') }}"
                                                                                    data-off="{{ __('Disable') }}"
                                                                                    data-onstyle="success"
                                                                                    data-offstyle="danger" name="status">
                                                                            @endif
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label
                                                                            for="">{{ __('Account Mode') }}</label>
                                                                        <select name="account_mode" id="account_mode"
                                                                            class="form-control">
                                                                            <option
                                                                                {{ $aamarpay?->mode == 'live' ? 'selected' : '' }}
                                                                                value="live">{{ __('Live') }}
                                                                            </option>
                                                                            <option
                                                                                {{ $aamarpay?->mode == 'sandbox' ? 'selected' : '' }}
                                                                                value="sandbox">{{ __('Sandbox') }}
                                                                            </option>
                                                                        </select>
                                                                    </div>


                                                                    <div class="form-group">
                                                                        <label for="">{{ __('Store Id') }}</label>
                                                                        <input type="text" class="form-control"
                                                                            name="store_id"
                                                                            value="{{ $aamarpay?->store_id }}">
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label
                                                                            for="">{{ __('Signature Key') }}</label>
                                                                        <input type="text" class="form-control"
                                                                            name="signature_key"
                                                                            value="{{ $aamarpay?->signature_key }}">
                                                                    </div>

                                                                    <input type="hidden" name="currency_name"
                                                                        value="{{ $currency->id }}">
                                                                    <button
                                                                        class="btn btn-primary">{{ __('Update') }}</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="bankAccountTab" role="tabpanel"
                                                        aria-labelledby="bank-account-tab">
                                                        <div class="card m-0">
                                                            <div class="card-body">
                                                                <form action="{{ route('admin.update-bank') }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('PUT')
                                                                    <div class="form-group">
                                                                        <label
                                                                            for="">{{ __('Bank Payment Status') }}</label>
                                                                        <div>
                                                                            @if ($bank->status == 1)
                                                                                <input id="status_toggle" type="checkbox"
                                                                                    checked data-toggle="toggle"
                                                                                    data-on="{{ __('Enable') }}"
                                                                                    data-off="{{ __('Disable') }}"
                                                                                    data-onstyle="success"
                                                                                    data-offstyle="danger" name="status">
                                                                            @else
                                                                                <input id="status_toggle" type="checkbox"
                                                                                    data-toggle="toggle"
                                                                                    data-on="{{ __('Enable') }}"
                                                                                    data-off="{{ __('Disable') }}"
                                                                                    data-onstyle="success"
                                                                                    data-offstyle="danger" name="status">
                                                                            @endif
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label
                                                                            for="">{{ __('Account Information') }}</label>
                                                                        <textarea name="account_info" id="" cols="30" rows="10" class="text-area-5 form-control">{{ $bank->account_info }}</textarea>
                                                                    </div>

                                                                    <button class="btn btn-primary">Update</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="cashTab" role="tabpanel"
                                                        aria-labelledby="cash-tab">
                                                        <div class="card m-0">
                                                            <div class="card-body">
                                                                <div class="form-group">
                                                                    <label
                                                                        for="">{{ __('Cash on delivery Status') }}</label>
                                                                    <div>
                                                                        @if ($bank->cash_on_delivery_status == 1)
                                                                            <a onclick="changeCashOnDeliveryStatus()"
                                                                                href="javascript:;">
                                                                                <input id="status_toggle" type="checkbox"
                                                                                    checked data-toggle="toggle"
                                                                                    data-on="{{ __('Enable') }}"
                                                                                    data-off="{{ __('Disable') }}"
                                                                                    data-onstyle="success"
                                                                                    data-offstyle="danger" name="status">
                                                                            </a>
                                                                        @else
                                                                            <a onclick="changeCashOnDeliveryStatus()"
                                                                                href="javascript:;">
                                                                                <input id="status_toggle" type="checkbox"
                                                                                    data-toggle="toggle"
                                                                                    data-on="{{ __('Enable') }}"
                                                                                    data-off="{{ __('Disable') }}"
                                                                                    data-onstyle="success"
                                                                                    data-offstyle="danger" name="status">
                                                                            </a>
                                                                        @endif
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>

    <script>
        function changeCashOnDeliveryStatus(id) {

            $.ajax({
                type: "put",
                data: {
                    _token: '{{ csrf_token() }}'
                },
                url: "{{ route('admin.update-cash-on-delivery') }}",
                success: function(response) {
                    toastr.success(response)
                },
                error: function(err) {
                    console.log(err);

                }
            })
        }
    </script>
@endsection
