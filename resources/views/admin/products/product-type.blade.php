@php
    $authType = auth('web')?->user()?->seller ? 'seller' : 'admin';
@endphp
@extends($authType . '.master_layout')


@section('title')
    <title>{{ __('Products') }}</title>
@endsection

@section($authType . '-content')
    <style>
        .card-title {
            cursor: pointer;
        }
    </style>
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Create Product') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a
                            href="{{ route($authType . '.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Create Product') }}</div>
                </div>
            </div>

            <div class="section-body">
                <div class="row mt-4">
                    <div class="col-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title" onclick="productType('Physical')">
                                    {{ __('Physical') }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title" onclick="productType('Digital')">
                                    {{ __('Digital') }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>


    <script>
        let route = "{{ route($authType . '.product.create') }}";

        function productType(type) {
            route += `?product_type=${type}`
            window.location.href = route;
        }
    </script>
@endsection
