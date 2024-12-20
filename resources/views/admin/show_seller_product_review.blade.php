@extends('admin.master_layout')
@section('title')
    <title>{{ __('Product Review') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Product Review') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item active"><a href="{{ route('admin.product.index') }}">{{ __('Product') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Product Review') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.seller-show', $seller->id) }}" class="btn btn-primary"><i class="fas fa-user"></i>
                    {{ $seller->user->name }}</a>
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped table-bordered">
                                        <tr>
                                            <td>{{ __('User Name') }}</td>
                                            <td>{{ $review->user->name }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('User Email') }}</td>
                                            <td>{{ $review->user->email }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Product') }}</td>
                                            <td><a
                                                    href="{{ route('admin.product.edit', $review->product->id) }}">{{ $review->product->name }}</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Rating') }}</td>
                                            <td>{{ $review->rating }}</td>
                                        </tr>
                                        <tr>
                                            <td>{{ __('Review') }}</td>
                                            <td>{{ $review->review }}</td>
                                        </tr>

                                        <tr>
                                            <td>Status</td>
                                            <td>
                                                @if ($review->status == 1)
                                                    <a href="javascript:;"
                                                        onclick="manageReviewStatus({{ $review->id }})">
                                                        <input id="status_toggle" type="checkbox" checked
                                                            data-toggle="toggle" data-on="{{ __('Active') }}"
                                                            data-off="{{ __('Inactive') }}" data-onstyle="success"
                                                            data-offstyle="danger">
                                                    </a>
                                                @else
                                                    <a href="javascript:;"
                                                        onclick="manageReviewStatus({{ $review->id }})">
                                                        <input id="status_toggle" type="checkbox" data-toggle="toggle"
                                                            data-on="{{ __('Active') }}" data-off="{{ __('Inactive') }}"
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
        </section>
    </div>

    <script>
        function manageReviewStatus(id) {
            $.ajax({
                type: "put",
                data: {
                    _token: '{{ csrf_token() }}'
                },
                url: "{{ url('/admin/product-review-status/') }}" + "/" + id,
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
