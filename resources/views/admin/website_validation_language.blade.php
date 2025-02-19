@extends('admin.master_layout')
@section('title')
    <title>{{ __('Frontend Validation Language') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Frontend Validation Language') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Frontend Validation Language') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.update-validation-language') }}" method="post">
                                    @csrf
                                    <table class="table table-bordered">
                                        @foreach ($data as $index => $value)
                                            <tr>
                                                <td width="50%">{{ $index }}</td>
                                                <td width="50%">
                                                    <input type="text" class="form-control"
                                                        name="values[{{ $index }}]" value="{{ $value }}">
                                                </td>
                                            </tr>
                                        @endforeach
                                    </table>
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
