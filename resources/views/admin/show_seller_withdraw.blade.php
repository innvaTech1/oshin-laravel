@extends('admin.master_layout')
@section('title')
    <title>{{ __('Seller withdraw') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Seller withdraw') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Seller withdraw') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.seller-withdraw') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Seller withdraw') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <table class="table table-bordered table-striped table-hover">
                                    <tr>
                                        <td width="50%">{{ __('Seller') }}</td>
                                        <td width="50%"><a
                                                href="{{ route('admin.seller-show', $withdraw->seller->id) }}">{{ $withdraw->seller->user->name }}</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">{{ __('Withdraw Method') }}</td>
                                        <td width="50%">{{ $withdraw->method }}</td>
                                    </tr>

                                    <tr>
                                        <td width="50%">{{ __('Withdraw Charge') }}</td>
                                        <td width="50%">{{ $withdraw->withdraw_charge }}%</td>
                                    </tr>

                                    <tr>
                                        <td width="50%">{{ __('Withdraw Charge Amount') }}</td>
                                        <td width="50%">
                                            {{ currency_icon() }}{{ $withdraw->total_amount - $withdraw->withdraw_amount }}
                                        </td>
                                    </tr>

                                    <tr>
                                        <td width="50%">{{ __('Total amount') }}</td>
                                        <td width="50%">{{ currency_icon() }}{{ $withdraw->total_amount }}</td>
                                    </tr>
                                    <tr>
                                        <td width="50%">{{ __('Withdraw amount') }}</td>
                                        <td width="50%">{{ currency_icon() }}{{ $withdraw->withdraw_amount }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">{{ __('Status') }}</td>
                                        <td width="50%">
                                            @if ($withdraw->status == 1)
                                                <span class="badge badge-success">{{ __('Success') }}</span>
                                            @else
                                                <span class="badge badge-danger">{{ __('Pending') }}</span>
                                            @endif
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">{{ __('Requested Date') }}</td>
                                        <td width="50%">{{ $withdraw->created_at->format('Y-m-d') }}</td>
                                    </tr>
                                    @if ($withdraw->status == 1)
                                        <tr>
                                            <td width="50%">{{ __('Approved Date') }}</td>
                                            <td width="50%">{{ $withdraw->approved_date }}</td>
                                        </tr>
                                    @endif

                                    <tr>
                                        <td width="50%">{{ __('Account Information') }}</td>
                                        <td width="50%">
                                            {!! clean(nl2br($withdraw->account_info)) !!}
                                        </td>
                                    </tr>

                                </table>

                                @if ($withdraw->status == 0)
                                    <form action="{{ route('admin.approved-seller-withdraw', $withdraw->id) }}"
                                        method="POST" id="approved-withdraw">
                                        @csrf
                                        @method('PUT')
                                    </form>

                                    <a href="{{ route('admin.show-seller-withdraw', $withdraw->id) }}"
                                        class="btn btn-primary"
                                        onclick="event.preventDefault();
                                document.getElementById('approved-withdraw').submit();">{{ __('Approve withdraw') }}</i></a>
                                @endif


                                <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger"
                                    onclick="deleteData({{ $withdraw->id }})">{{ __('Delete withdraw request') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>


    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", '{{ url('admin/delete-seller-withdraw/') }}' + "/" + id)
        }
    </script>
@endsection
