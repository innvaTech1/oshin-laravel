@extends('admin.master_layout')
@section('title')
    <title>{{ __('Customer List') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Customer List') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Customer List') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.customer-list') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Customer List') }}</a>
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped table-bordered">
                                        <tr>
                                            <td>{{ __('Image') }}</td>
                                            <td>
                                                @if ($customer->image)
                                                    <img src="{{ asset($customer->image) }}" class="rounded-circle"
                                                        alt="" width="80px">
                                                @endif
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Name') }}</td>
                                            <td>{{ $customer->name }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Email') }}</td>
                                            <td>{{ $customer->email }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Phone') }}</td>
                                            <td>{{ $customer->phone }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Address') }}</td>
                                            <td>{{ $customer->address }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Zip Code') }}</td>
                                            <td>{{ $customer->zip_code }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('City') }}</td>
                                            <td>{{ $customer->city ? $customer->city->name : '' }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('State') }}</td>
                                            <td>{{ $customer->state ? $customer->state->name : '' }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Country') }}</td>
                                            <td>{{ $customer->country ? $customer->country->name : '' }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Status') }}</td>
                                            <td>
                                                @if ($customer->status == 1)
                                                    <a href="javascript:;"
                                                        onclick="manageCustomerStatus({{ $customer->id }})">
                                                        <input id="status_toggle" type="checkbox" checked
                                                            data-toggle="toggle" data-on="{{ __('Active') }}"
                                                            data-off="{{ __('InActive') }}" data-onstyle="success"
                                                            data-offstyle="danger">
                                                    </a>
                                                @else
                                                    <a href="javascript:;"
                                                        onclick="manageCustomerStatus({{ $customer->id }})">
                                                        <input id="status_toggle" type="checkbox" data-toggle="toggle"
                                                            data-on="{{ __('Active') }}" data-off="{{ __('InActive') }}"
                                                            data-onstyle="success" data-offstyle="danger">
                                                    </a>
                                                @endif
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    {{-- change password --}}
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.reset-user-password', $customer->id) }}" method="POST">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">{{ __('Password') }}</label>
                                                <input type="password" class="form-control" name="password"
                                                    placeholder="{{ __('Password') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">{{ __('Confirm Password') }}</label>
                                                <input type="password" class="form-control" name="password_confirmation"
                                                    placeholder="{{ __('Confirm Password') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <button class="btn btn-primary btn-lg btn-block"
                                                    type="submit">{{ __('Reset Password') }}</button>
                                            </div>
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

    <script>
        function manageCustomerStatus(id) {

            $.ajax({
                type: "put",
                data: {
                    _token: '{{ csrf_token() }}'
                },
                url: "{{ url('/admin/customer-status/') }}" + "/" + id,
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
