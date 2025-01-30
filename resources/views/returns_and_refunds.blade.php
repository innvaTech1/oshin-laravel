@extends('layout')

@section('title')
    <title>{{ __('user.Returns and Refunds') }}</title>
@endsection

@section('meta')
    <meta name="description" content="{{ __('user.Returns and Refunds') }}">
@endsection

@section('public-content')
    <section id="wsus__product_page" class="wsus__custom_pages">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card shadow-lg border-0">
                        <div class="card-body p-5">
                            <h1 class="display-5 mb-4 text-center text-primary">{{ __('user.Returns and Refunds') }}</h1>

                            <div class="card mb-4 border-primary">
                                <div class="card-body">
                                    <p class="lead mb-4">
                                        Thank you for shopping at oshin.com.bd, owned and operated by Oshin Trading,
                                        a multi-vendor online shopping platform.
                                    </p>
                                    <p class="mb-4">
                                        Please read this policy carefully. This is the Return and Refund Policy of
                                        oshin.com.bd.
                                    </p>
                                </div>
                            </div>

                            <div class="mb-5">
                                <h2 class="h3 mb-4 fw-bold text-dark">Policy</h2>
                                <div class="alert alert-info">
                                    <ul class="list-unstyled mb-0">
                                        <li class="mb-3 d-flex align-items-start">
                                            <i class="fas fa-check-circle me-2 text-success mt-1"></i>
                                            We recommend contacting us for assistance if the product is defective/damaged or
                                            erroneous at the time of distribution
                                        </li>
                                        <li class="mb-3 d-flex align-items-start">
                                            <i class="fas fa-check-circle me-2 text-success mt-1"></i>
                                            Return and supersession window open for 3 days after distribution
                                        </li>
                                        <li class="mb-3 d-flex align-items-start">
                                            <i class="fas fa-check-circle me-2 text-success mt-1"></i>
                                            Product eligibility for refund/supersession depends on category and condition
                                        </li>
                                        <li class="mb-3 d-flex align-items-start">
                                            <i class="fas fa-check-circle me-2 text-success mt-1"></i>
                                            For eligible restitution: Shipping fee + product amount will be restituted
                                        </li>
                                        <li class="mb-3 d-flex align-items-start">
                                            <i class="fas fa-check-circle me-2 text-success mt-1"></i>
                                            Restitution processing time: 7-15 business days (varies by method/financial
                                            institutions)
                                        </li>
                                        <li class="d-flex align-items-start">
                                            <i class="fas fa-check-circle me-2 text-success mt-1"></i>
                                            Product supersession depends on: claim validity, supplier terms, and
                                            supersession availability
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="mt-5">
                                <h2 class="h3 mb-4 fw-bold text-dark">Contact Us</h2>
                                <div class="bg-light p-4 rounded-3">
                                    <p class="mb-3">
                                        If you have any questions about our Return and Refund Policy, please contact us:
                                    </p>
                                    <ul class="list-unstyled">
                                        <li class="mb-3">
                                            <i class="fas fa-link me-2 text-primary"></i>
                                            Visit: <a href="https://oshin.com.bd"
                                                class="text-decoration-none link-primary">oshin.com.bd</a>
                                        </li>
                                        <li>
                                            <i class="fas fa-envelope me-2 text-primary"></i>
                                            Email: <a href="mailto:info@oshin.com.bd"
                                                class="text-decoration-none link-primary">info@oshin.com.bd</a>
                                        </li>
                                    </ul>
                                    <p class="text-muted mt-3 mb-0">
                                        <small>We typically respond within 24 business hours</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
