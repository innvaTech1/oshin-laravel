@extends('admin.master_layout')
@section('title')
    <title>{{ __('Pos') }}</title>
@endsection
@section('style')
    <link
        href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;0,500;0,600;0,800;0,900;1,700&family=Roboto:wght@300;400;500;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('backend/pos/assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/pos/assets/css/responsive.css') }}">
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section pos-wrapper-section">
            <div class="section-header">
                <h1>{{ __('Pos') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active" style="color: #AE1C9A;"><a
                            href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Pos') }}</div>
                </div>
            </div>
            <div class="section-body">
                <section class="">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-8 col-xl-8  product-bg">
                                <div class="row product-main-box">
                                    <div class="col-lg-12 product-padding ">
                                        <div class="product-taitel">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="product-btn">
                                                        <a href="{{ route('admin.pos.index') }}">
                                                            <span>
                                                                <svg width="14" height="10" viewBox="0 0 14 10"
                                                                    fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <path d="M5 1L1 5M1 5L5 9M1 5L13 5" stroke-width="1.5"
                                                                        stroke-linecap="round" stroke-linejoin="round" />
                                                                </svg>
                                                            </span>
                                                            {{ __('Back') }}
                                                        </a>
                                                    </div>
                                                </div>

                                                <div class="col-md-4 pt-1">
                                                    <div class="product-taitel">
                                                        <h3>{{ __('Product Section') }}</h3>
                                                    </div>
                                                </div>

                                                <div class="col-md-4 pt-2">
                                                    <button style=" background-color: #6777ef; color: #fff;" type="button"
                                                        class="btn btn-info btn-primary-two" data-toggle="modal"
                                                        data-target="#exampleModalLong-2">
                                                        {{ __('Add Product') }}
                                                    </button>
                                                </div>



                                            </div>



                                        </div>
                                    </div>
                                </div>
                                <!-- Modal -->
                                @include('admin.pos.product-create-modal')

                                <div class="row row-p-30">
                                    <div class="col-lg-12 col-p-0">
                                        <div class="product-categories">
                                            <div class="product-categories-search">
                                                <div class="product-categories-search-main">
                                                    <form action="{{ route('admin.pos.product.search') }}" method="GET"
                                                        id="searchForm">
                                                        <input type="text" name="query" class="form-control"
                                                            id="exampleFormControlInput1" placeholder="Search products...">
                                                    </form>
                                                </div>

                                                <div class="product-categories-main-df">
                                                    <button type="button" class="product-categories-search-main-icon"
                                                        id="searchButton">
                                                        <span>
                                                            <svg width="22" height="22" viewBox="0 0 22 22"
                                                                fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path
                                                                    d="M18.5 15.7076L20.4217 17.6292C21.1928 18.4004 21.1928 19.6506 20.4217 20.4217C19.6506 21.1928 18.4004 21.1928 17.6293 20.4217L15.7076 18.5M1 9.5C1 4.80558 4.80558 1 9.5 1C14.1944 1 18 4.80558 18 9.5C18 14.1944 14.1944 18 9.5 18C4.80558 18 1 14.1944 1 9.5Z"
                                                                    stroke="#232532" stroke-width="1.5"
                                                                    stroke-linecap="round" />
                                                            </svg>
                                                        </span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="sub-categories-btn">
                                            <div class="sub-categories-btn-text">
                                                <h6>{{ __('Categories') }}</h6>
                                            </div>

                                            <div class="sub-categories-all-btn">
                                                @foreach ($categories as $index => $category)
                                                    <a
                                                        href="{{ route('admin.pos.category.index', $category->id) }}">{{ $category->name }}</a>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row row-p-30">
                                    @foreach ($products as $index => $product)
                                        <div class="col-lg-4 col-md-6 col-p-10px">
                                            <div class="product-item">
                                                <div class="product-item-overlay">
                                                    <div class="product-btn-item">
                                                        <div class="product-item-overlay-btn">
                                                            @if ($product->qty == 0)
                                                                <p>{{ __('stock:') }} <span
                                                                        style="color: red;"><b>0</b></span></p>
                                                            @else
                                                                <p>{{ __('stock:') }} <span
                                                                        style="color: yellow;"><b>{{ $product->qty }}</b></span>
                                                                </p>
                                                            @endif


                                                            <button type="button" class="over-btn" data-toggle="modal"
                                                                data-target="#exampleModalLong{{ $product->id }}">
                                                                {{ __('Details') }}
                                                            </button>

                                                        </div>

                                                        <div class="product-item-overlay-btn product-item-overlay-btn-two">
                                                            <a href="{{ route('admin.pos.add.product', $product->id) }}"
                                                                class="over-btn-two">{{ __('Select') }}</a>
                                                            {{-- <button  type="button" class="over-btn-two" data-bs-toggle="modal"
                                                            data-bs-target="">
                                                            Select
                                                        </button> --}}
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-item-img">
                                                    <img class="rounded-circle" src="{{ asset($product->thumb_image) }}"
                                                        width="100px" height="100px" class="img-fluid">
                                                </div>
                                                <div class="product-item-text">
                                                    <p>{{ $product->short_name }}</p>

                                                    <div class="product-item-text-btm">
                                                        @if ($product->offer_price == '')
                                                            <span> {{ currency_icon() }}{{ $product->price }}
                                                            </span>
                                                        @else
                                                            <span>
                                                                <del>{{ currency_icon() }}{{ $product->price }}</del>
                                                            </span>
                                                            <span>
                                                                {{ currency_icon() }}{{ $product->offer_price }}
                                                            </span>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Modal -->
                                        @include('admin.pos.product-details-modal')
                                    @endforeach

                                    <div class="col-lg-12">
                                        <div class="pagination-btn">
                                            {{ $products->links() }}
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {{--  col-lg-pl-30px --}}
                            <div class="col-lg-4 col-xl-4">
                                <div class="row billing-main-box">
                                    <div class="col-lg-12 product-padding ">
                                        <div>
                                            <div class="billing-section-taitel">
                                                <h3>{{ __('Billing Section') }}</h3>
                                            </div>

                                            <div class="billing-btn-main">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="billing-btn-three">
                                                            <button type="button" class="btn btn-primary-two"
                                                                data-toggle="modal" data-target="#exampleModalLong-1">
                                                                {{ __('Add Customer') }}
                                                            </button>
                                                            <!-- Modal -->
                                                            @include('admin.pos.customer-modal')
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 d-flex justify-content-end">
                                                        <div class="form-group custom-form-group">
                                                            {{-- <button type="submit"
                                                                    class="btn btn-one">{{ __('Update Cart') }}</button> --}}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="delivery-information">
                                        <div class="delivery-information-taitel">
                                            <h3>{{ __('Selected Product') }}</h3>
                                        </div>

                                        <div class="delivery-information-top-item">
                                            <div class="delivery-information-top-inner">
                                                <div class="delivery-information-top-inner-text">
                                                    <div class="text-1">
                                                        <p>{{ __('Item') }}</p>
                                                    </div>
                                                    <div class="text-2">
                                                        <p>{{ __('QTY') }}</p>
                                                    </div>
                                                </div>

                                                <p>{{ __('Price') }}</p>
                                                <p>{{ __('Action') }}</p>
                                            </div>
                                        </div>

                                        <div class="delivery-information-top-item-two-main">
                                            <form method="post" action="{{ route('admin.pos.update.cart.order') }}">
                                                @csrf
                                                @method('PUT')
                                                @php
                                                    $grandTotal = 0;
                                                    $taxRate = floatval($setting->tax);
                                                    $cupon = 0;
                                                @endphp

                                                @foreach ($cart_products as $index => $product)
                                                    <div class="delivery-information-top-item-two">
                                                        <div class="delivery-information-top-item-two-img">
                                                            <img src="{{ asset($product->card_product?->thumb_image) }}"
                                                                width="50px" height="50px" alt="img">

                                                            <div class="text">
                                                                <p>{{ $product->card_product?->name }}</p>
                                                            </div>
                                                        </div>

                                                        <div class="count">
                                                            <div class="mainas">
                                                                <p>
                                                                    <a
                                                                        href="{{ route('admin.pos.cart.decrement.product', $product->id) }}">
                                                                        <span>
                                                                            <svg width="14" height="2"
                                                                                viewBox="0 0 14 2" fill="none"
                                                                                xmlns="http://www.w3.org/2000/svg">
                                                                                <path d="M13 1L1 1" stroke="black"
                                                                                    stroke-width="1.2"
                                                                                    stroke-linecap="round"
                                                                                    stroke-linejoin="round" />
                                                                            </svg>
                                                                        </span>
                                                                    </a>
                                                                </p>
                                                            </div>
                                                            <div class="count-text">
                                                                <input type="number"
                                                                    name="qty_update[{{ $product->id }}]"
                                                                    value="{{ $product->qty }}">
                                                            </div>
                                                            <div class="plus">
                                                                <p>
                                                                    <a
                                                                        href="{{ route('admin.pos.cart.increment.product', $product->id) }}">
                                                                        <span>
                                                                            <svg width="14" height="14"
                                                                                viewBox="0 0 14 14" fill="none"
                                                                                xmlns="http://www.w3.org/2000/svg">
                                                                                <path d="M7 1V13M13 7L1 7" stroke="black"
                                                                                    stroke-width="1.2"
                                                                                    stroke-linecap="round"
                                                                                    stroke-linejoin="round" />
                                                                            </svg>
                                                                        </span>
                                                                    </a>
                                                                </p>
                                                            </div>
                                                        </div>

                                                        <div class="price">
                                                            @php
                                                                if ($product->card_product?->offer_price == '') {
                                                                    $total =
                                                                        $product->qty * $product->card_product->price;
                                                                    $price = $product->card_product->price;
                                                                } else {
                                                                    $total =
                                                                        $product->qty *
                                                                        $product->card_product->offer_price;
                                                                    $price = $product->card_product->offer_price;
                                                                }
                                                                $grandTotal += $total;
                                                                $tax = $grandTotal * ($taxRate / 100);
                                                                if ($coupon) {
                                                                    $cupon = $coupon->discount;
                                                                }
                                                                $discount = $grandTotal * ($cupon / 100);
                                                                $discountedTotal = $grandTotal - $discount;
                                                                $subTotal = $discountedTotal + $tax;
                                                            @endphp
                                                            <p>{{ currency_icon() }}{{ $price }}</p>
                                                        </div>

                                                        <div class="action">
                                                            <a
                                                                href="{{ route('admin.pos.destroy.product', $product->id) }}">
                                                                <span>
                                                                    <svg width="19" height="24"
                                                                        viewBox="0 0 19 24" fill="none"
                                                                        xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M16.7842 6.29297C16.5061 6.29297 16.2393 6.40348 16.0426 6.60018C15.8459 6.79689 15.7354 7.06368 15.7354 7.34187V19.0801C15.7053 19.6105 15.4668 20.1075 15.0719 20.4629C14.677 20.8183 14.1577 21.0033 13.6271 20.9775H5.25686C4.72622 21.0033 4.2069 20.8183 3.81201 20.4629C3.41712 20.1075 3.17867 19.6105 3.14858 19.0801V7.34187C3.14858 7.06368 3.03807 6.79689 2.84136 6.60018C2.64466 6.40348 2.37786 6.29297 2.09968 6.29297C1.82149 6.29297 1.5547 6.40348 1.358 6.60018C1.16129 6.79689 1.05078 7.06368 1.05078 7.34187V19.0801C1.08072 20.167 1.54018 21.1977 2.32853 21.9466C3.11688 22.6954 4.16986 23.1013 5.25686 23.0753H13.6271C14.7141 23.1013 15.7671 22.6954 16.5554 21.9466C17.3438 21.1977 17.8032 20.167 17.8331 19.0801V7.34187C17.8331 7.06368 17.7226 6.79689 17.5259 6.60018C17.3292 6.40348 17.0624 6.29297 16.7842 6.29297Z" />
                                                                        <path
                                                                            d="M17.8313 3.14669H13.6357V1.0489C13.6357 0.770713 13.5252 0.503921 13.3285 0.307215C13.1317 0.110509 12.865 0 12.5868 0H6.29339C6.0152 0 5.74841 0.110509 5.5517 0.307215C5.355 0.503921 5.24449 0.770713 5.24449 1.0489V3.14669H1.0489C0.770713 3.14669 0.503921 3.2572 0.307215 3.45391C0.110509 3.65061 0 3.91741 0 4.19559C0 4.47378 0.110509 4.74057 0.307215 4.93727C0.503921 5.13398 0.770713 5.24449 1.0489 5.24449H17.8313C18.1094 5.24449 18.3762 5.13398 18.5729 4.93727C18.7697 4.74057 18.8802 4.47378 18.8802 4.19559C18.8802 3.91741 18.7697 3.65061 18.5729 3.45391C18.3762 3.2572 18.1094 3.14669 17.8313 3.14669ZM7.34228 3.14669V2.0978H11.5379V3.14669H7.34228Z" />
                                                                        <path
                                                                            d="M8.39272 16.7813V9.43903C8.39272 9.16085 8.28221 8.89406 8.0855 8.69735C7.8888 8.50065 7.622 8.39014 7.34382 8.39014C7.06563 8.39014 6.79884 8.50065 6.60214 8.69735C6.40543 8.89406 6.29492 9.16085 6.29492 9.43903V16.7813C6.29492 17.0595 6.40543 17.3263 6.60214 17.523C6.79884 17.7197 7.06563 17.8302 7.34382 17.8302C7.622 17.8302 7.8888 17.7197 8.0855 17.523C8.28221 17.3263 8.39272 17.0595 8.39272 16.7813Z" />
                                                                        <path
                                                                            d="M12.588 16.7813V9.43903C12.588 9.16085 12.4775 8.89406 12.2808 8.69735C12.0841 8.50065 11.8173 8.39014 11.5391 8.39014C11.2609 8.39014 10.9942 8.50065 10.7974 8.69735C10.6007 8.89406 10.4902 9.16085 10.4902 9.43903V16.7813C10.4902 17.0595 10.6007 17.3263 10.7974 17.523C10.9942 17.7197 11.2609 17.8302 11.5391 17.8302C11.8173 17.8302 12.0841 17.7197 12.2808 17.523C12.4775 17.3263 12.588 17.0595 12.588 16.7813Z" />
                                                                    </svg>
                                                                </span>
                                                            </a>

                                                        </div>
                                                    </div>
                                                @endforeach
                                            </form>
                                        </div>

                                        <div class="apply-promo-code">
                                            <h3>{{ __('Apply Promo Code') }}</h3>
                                        </div>

                                        <div class="apply-promo-code-btn-main">
                                            <form action="{{ route('admin.pos.apply.cupon') }}" method="get">

                                                <input type="text" class="form-control" name="coupon"
                                                    id="exampleFormControlInput-3" placeholder="QGWRFY98">

                                                <!-- Button trigger modal -->
                                                <button type="submit" class="promo-code-btn">
                                                    {{ __('Apply') }}
                                                </button>
                                            </form>
                                            <!-- Button trigger modal -->


                                            <!-- Modal -->
                                            <div class="modal fade" id="exampleModal" role="dialog"
                                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel0">
                                                                {{ __('Modal title') }}</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            ...
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">{{ __('Close') }}</button>
                                                            <button type="button"
                                                                class="btn btn-primary">{{ __('Save') }}
                                                                {{ __('changes') }}</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Modal -->
                                        </div>

                                        <div class="sub-total">
                                            <div class="sub-total-item">
                                                <h6>{{ __('Sub total :') }}</h6>
                                                <h6>{{ __('Discount :') }}</h6>
                                                <h6>{{ __('Tax :') }}</h6>
                                            </div>
                                            @if ($grandTotal == 0)
                                                <div class="sub-total-inner">
                                                    <h6>{{ currency_icon() }}0</h6>
                                                    <h6>{{ currency_icon() }}0</h6>
                                                    <h6>{{ currency_icon() }}0</h6>
                                                </div>
                                            @else
                                                <div class="sub-total-inner">
                                                    <h6>{{ currency_icon() }}{{ $grandTotal }}</h6>
                                                    <h6>{{ currency_icon() }}{{ $discount }}</h6>
                                                    <h6>{{ currency_icon() }}{{ $tax }}</h6>
                                                </div>
                                            @endif
                                        </div>

                                        <div class="sub-total-btm">
                                            <div class="sub-total-btm-item">
                                                <h6>{{ __('Sub total :') }}</h6>
                                            </div>
                                            @if ($grandTotal == 0)
                                                <div class="sub-total-btm-inner">
                                                    <h6>{{ currency_icon() }}0</h6>
                                                </div>
                                            @else
                                                <div class="sub-total-btm-inner">
                                                    <h6>{{ currency_icon() }}{{ $subTotal }}</h6>
                                                </div>
                                            @endif
                                        </div>

                                        <div class="sub-total-btn">
                                            <div class="sub-total-btn-one">
                                                <button type="button" class="cancel-btn" data-toggle="modal"
                                                    data-target="#exampleModalLong-3">
                                                    {{ __('Cancel Order') }}
                                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="exampleModalLong-3" role="dialog"
                                                    aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">

                                                            </div>
                                                            <div class="modal-body modal-body-one">
                                                                <div class="modal-img text-center">
                                                                    <img src="{{ asset('backend/pos/assets/images/clear-cart.png') }}"
                                                                        alt="img">
                                                                </div>

                                                                <div class="modal-img-text">
                                                                    <h4>{{ __('Are you sure') }}</h4>
                                                                    <p>{{ __('You want to remove all items from cart!!') }}
                                                                    </p>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">

                                                                <button type="button" class="no-btn yes-btn"
                                                                    data-dismiss="modal">{{ __('No') }}</button>

                                                                <a class="no-btn"
                                                                    href="{{ route('admin.pos.cart.clear.product') }}">
                                                                    {{ __('Yes') }}
                                                                </a>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Modal -->
                                            </div>
                                            <div class="sub-total-btn-two">
                                                <!-- Button trigger modal -->
                                                <button type="button" class="place-order" data-toggle="modal"
                                                    data-target="#exampleModal-4" onclick="receiveSubmitView()">
                                                    {{ __('Place Order') }}
                                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="exampleModal-4" role="dialog"
                                                    aria-labelledby="exampleModal-4" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-two modal-dialog-seven ">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel-00">
                                                                    {{ __('Payment') }}
                                                                </h5>
                                                                <button type="button" class="close"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="modal-from">
                                                                    <div class="from-item-main">
                                                                        <form
                                                                            action="{{ route('admin.pos.order.submit') }}"
                                                                            method="post">
                                                                            @csrf
                                                                            <input type="hidden" name="sub_total"
                                                                                value="{{ $grandTotal }}">

                                                                            @if ($grandTotal == 0)
                                                                                <input type="hidden" name="cupon"
                                                                                    value="0">
                                                                                <input type="hidden" name="tax"
                                                                                    value="0">
                                                                                <input type="hidden" name="discount"
                                                                                    value="0">
                                                                            @else
                                                                                <input type="hidden" name="tax"
                                                                                    value="{{ $tax }}">
                                                                                <input type="hidden" name="cupon"
                                                                                    value="{{ $couponValue }}">
                                                                                <input type="hidden" name="discount"
                                                                                    value="{{ $discount }}">
                                                                            @endif

                                                                            <div class="form-group">
                                                                                <label
                                                                                    for="">{{ __('Select Customer') }}</label>
                                                                                <select name="customer_id" id=""
                                                                                    class="form-control select2" required>
                                                                                    <option value="" disabled
                                                                                        selected>
                                                                                        {{ __('Select a Customer') }}
                                                                                    </option>
                                                                                    @php
                                                                                        $CustomerCount = count(
                                                                                            $customers,
                                                                                        );
                                                                                    @endphp
                                                                                    @foreach ($customers as $key => $customer)
                                                                                        @if ($key < $CustomerCount - 0)
                                                                                            <option
                                                                                                value="{{ $customer->id }}">
                                                                                                {{ $customer->name }}
                                                                                            </option>
                                                                                        @endif
                                                                                    @endforeach
                                                                                </select>
                                                                            </div>


                                                                            <div class="form-group">
                                                                                <label
                                                                                    for="">{{ __('Add Shipping') }}</label>
                                                                                <select name="shipping_id" id=""
                                                                                    class="form-control select2" required>
                                                                                    <option value="" disabled
                                                                                        selected>
                                                                                        {{ __('Select a shipping rule') }}
                                                                                    </option>
                                                                                    @php
                                                                                        $shippingsCount = count(
                                                                                            $shippings,
                                                                                        );
                                                                                    @endphp
                                                                                    @foreach ($shippings as $key => $shipping)
                                                                                        @if ($key < $shippingsCount - 0)
                                                                                            <option
                                                                                                value="{{ $shipping->id }}">
                                                                                                {{ $shipping->shipping_rule }}
                                                                                            </option>
                                                                                        @endif
                                                                                    @endforeach
                                                                                </select>
                                                                            </div>

                                                                            <div class="from-select-main">
                                                                                <label
                                                                                    for="">{{ __('Payment Method') }}</label>
                                                                                <select name="payment_method"
                                                                                    id="" class="form-control"
                                                                                    required>
                                                                                    <option value="" disabled
                                                                                        selected>
                                                                                        {{ __('Select Payment Method') }}
                                                                                    </option>
                                                                                    <option value="Cash">
                                                                                        {{ __('Cash') }}</option>
                                                                                    <option value="Cash on Delivery">
                                                                                        {{ __('Cash on Delivery') }}
                                                                                    </option>
                                                                                </select>
                                                                            </div>

                                                                            <div class="form-group">
                                                                                <label
                                                                                    for="">{{ __('Order') }}</label>
                                                                                <select name="order_status" id=""
                                                                                    class="form-control" required>
                                                                                    <option value="" disabled
                                                                                        selected>
                                                                                        {{ __('Select Order Status') }}
                                                                                    </option>
                                                                                    <option value="0">
                                                                                        {{ __('Pending') }}</option>
                                                                                    <option value="1">
                                                                                        {{ __('In Progress') }}
                                                                                    </option>
                                                                                    <option value="2">
                                                                                        {{ __('Delivered') }}
                                                                                    </option>
                                                                                    <option value="3">
                                                                                        {{ __('Completed') }}
                                                                                    </option>
                                                                                    <option value="4">
                                                                                        {{ __('Declined') }}
                                                                                    </option>
                                                                                </select>
                                                                            </div>
                                                                            <button
                                                                                type="submit"class="modal-from-btm-btn">{{ __('Submit') }}</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-dialog modal-dialog-six">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel01">
                                                                    <span class="icon">
                                                                        <svg width="32" height="32"
                                                                            viewBox="0 0 32 32" fill="none"
                                                                            xmlns="http://www.w3.org/2000/svg">
                                                                            <path
                                                                                d="M28.6667 24H24.6667C24.2987 24 24 23.7014 24 23.3334C24 22.9654 24.2987 22.6667 24.6667 22.6667H28.6667C29.7694 22.6667 30.6667 21.7694 30.6667 20.6667V11.3333C30.6667 10.2307 29.7694 9.33334 28.6667 9.33334H3.33334C2.23067 9.33334 1.33334 10.2307 1.33334 11.3333V20.6667C1.33334 21.7694 2.23067 22.6667 3.33334 22.6667H7.33334C7.70135 22.6667 8.00001 22.9654 8.00001 23.3334C8.00001 23.7014 7.70135 24 7.33334 24H3.33334C1.49467 24 0 22.504 0 20.6667V11.3333C0 9.496 1.49467 8 3.33334 8H28.6667C30.5054 8 32 9.496 32 11.3333V20.6667C32 22.504 30.5054 24 28.6667 24Z"
                                                                                fill="black" />
                                                                            <path
                                                                                d="M19.3347 28.0003H11.3346C10.9666 28.0003 10.668 27.7017 10.668 27.3337C10.668 26.9657 10.9666 26.667 11.3346 26.667H19.3347C19.7027 26.667 20.0013 26.9657 20.0013 27.3337C20.0013 27.7017 19.7027 28.0003 19.3347 28.0003Z"
                                                                                fill="black" />
                                                                            <path
                                                                                d="M19.3347 25.3333H11.3346C10.9666 25.3333 10.668 25.0347 10.668 24.6667C10.668 24.2987 10.9666 24 11.3346 24H19.3347C19.7027 24 20.0013 24.2987 20.0013 24.6667C20.0013 25.0347 19.7027 25.3333 19.3347 25.3333Z"
                                                                                fill="black" />
                                                                            <path
                                                                                d="M14.0013 22.6663H11.3346C10.9666 22.6663 10.668 22.3677 10.668 21.9997C10.668 21.6317 10.9666 21.333 11.3346 21.333H14.0013C14.3693 21.333 14.668 21.6317 14.668 21.9997C14.668 22.3677 14.3693 22.6663 14.0013 22.6663Z"
                                                                                fill="black" />
                                                                            <path
                                                                                d="M24.668 9.33335C24.3 9.33335 24.0013 9.03468 24.0013 8.66668V3.33334C24.0013 2.23067 23.104 1.33334 22.0013 1.33334H10.0013C8.89864 1.33334 8.0013 2.23067 8.0013 3.33334V8.66668C8.0013 9.03468 7.70264 9.33335 7.33464 9.33335C6.96664 9.33335 6.66797 9.03468 6.66797 8.66668V3.33334C6.66797 1.496 8.16264 0 10.0013 0H22.0013C23.84 0 25.3347 1.496 25.3347 3.33334V8.66668C25.3347 9.03468 25.036 9.33335 24.668 9.33335Z"
                                                                                fill="black" />
                                                                            <path
                                                                                d="M22.0013 31.9997H10.0013C8.16264 31.9997 6.66797 30.5037 6.66797 28.6664V17.9997C6.66797 17.6317 6.96664 17.333 7.33464 17.333H24.668C25.036 17.333 25.3347 17.6317 25.3347 17.9997V28.6664C25.3347 30.5037 23.84 31.9997 22.0013 31.9997ZM8.0013 18.6663V28.6664C8.0013 29.769 8.89864 30.6664 10.0013 30.6664H22.0013C23.104 30.6664 24.0013 29.769 24.0013 28.6664V18.6663H8.0013Z"
                                                                                fill="black" />
                                                                        </svg>
                                                                    </span>
                                                                </h5>


                                                                <button type="button" class="close"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
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
        </section>
    </div>
    <script src="{{ asset('backend/pos/assets/js/custom.js') }}"></script>
    <script>
        const searchForm = document.getElementById('searchForm');
        const searchButton = document.getElementById('searchButton');

        searchButton.addEventListener('click', function() {
            searchForm.submit();
        });
    </script>

    <script>
        $(document).ready(function() {
            $('form').submit(function() {
                var selectedValues = {};
                $('.variant-select').each(function() {
                    var variantName = $(this).data('variant');
                    var selectedValue = $(this).val();
                    selectedValues[variantName] = selectedValue;
                });
                $('#selected_values').val(JSON.stringify(selectedValues));
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            var buttonPlus = $(".qty-btn-plus");
            var buttonMinus = $(".qty-btn-minus");

            buttonPlus.click(function() {
                var $n = $(this).parent(".qty-container").find(".input-qty");
                $n.val(Number($n.val()) + 1);
            });

            buttonMinus.click(function() {
                var $n = $(this).parent(".qty-container").find(".input-qty");
                var amount = Number($n.val());
                if (amount > 0) {
                    $n.val(amount - 1);
                }
            });

            // Ensure the quantity value is initially set
            var $initialQty = $(".input-qty");
            $initialQty.val(Number($initialQty.val()));
        });


        function addToCartInProductModal(productId) {
            $.ajax({
                type: 'get',
                data: $('#productModalFormId-' + productId).serialize(),
                url: "{{ route('add-to-cart') }}",
                success: function(response) {
                    if (response.status == 0) {
                        toastr.error(response.message)
                    }
                    if (response.status == 1) {
                        toastr.success(response.message)
                        $.ajax({
                            type: 'get',
                            url: "{{ route('load-sidebar-cart') }}",
                            success: function(response) {
                                $("#load_sidebar_cart").html(response)
                                $.ajax({
                                    type: 'get',
                                    url: "{{ route('get-cart-qty') }}",
                                    success: function(response) {
                                        $("#cartQty").text(response.qty);
                                        $("#productModalView-" + productId).modal(
                                            'hide');
                                    },
                                });
                            },
                        });
                    }
                },
                error: function(response) {

                }
            });
        }
    </script>

    <script>
        (function($) {
            "use strict";
            var specification = true;
            $(document).ready(function() {
                $("#name").on("focusout", function(e) {
                    $("#slug").val(convertToSlug($(this).val()));
                })

                $("#category").on("change", function() {
                    var categoryId = $("#category").val();
                    if (categoryId) {
                        $.ajax({
                            type: "get",
                            url: "{{ url('/admin/subcategory-by-category/') }}" + "/" +
                                categoryId,
                            success: function(response) {
                                $("#sub_category").html(response.subCategories);
                                var response =
                                    "<option value=''>{{ __('Select Child Category') }}</option>";
                                $("#child_category").html(response);
                            },
                            error: function(err) {
                                console.log(err);

                            }
                        })
                    } else {
                        var response =
                            "<option value=''>{{ __('Select Sub Category') }}</option>";
                        $("#sub_category").html(response);
                        var response =
                            "<option value=''>{{ __('Select Child Category') }}</option>";
                        $("#child_category").html(response);
                    }


                })

                $("#sub_category").on("change", function() {
                    var SubCategoryId = $("#sub_category").val();
                    if (SubCategoryId) {
                        $.ajax({
                            type: "get",
                            url: "{{ url('/admin/childcategory-by-subcategory/') }}" + "/" +
                                SubCategoryId,
                            success: function(response) {
                                $("#child_category").html(response.childCategories);
                            },
                            error: function(err) {
                                console.log(err);

                            }
                        })
                    } else {
                        var response =
                            "<option value=''>{{ __('Select Child Category') }}</option>";
                        $("#child_category").html(response);
                    }

                })

                $("#is_return").on('change', function() {
                    var returnId = $("#is_return").val();
                    if (returnId == 1) {
                        $("#policy_box").removeClass('d-none');
                    } else {
                        $("#policy_box").addClass('d-none');
                    }

                })

                $("#addNewSpecificationRow").on('click', function() {
                    var html = $("#hidden-specification-box").html();
                    $("#specification-box").append(html);
                })

                $(document).on('click', '.deleteSpeceficationBtn', function() {
                    $(this).closest('.delete-specification-row').remove();
                });


                $("#manageSpecificationBox").on("click", function() {
                    if (specification) {
                        specification = false;
                        $("#specification-box").addClass('d-none');
                    } else {
                        specification = true;
                        $("#specification-box").removeClass('d-none');
                    }


                })

            });
        })(jQuery);

        function convertToSlug(Text) {
            return Text
                .toLowerCase()
                .replace(/[^\w ]+/g, '')
                .replace(/ +/g, '-');
        }

        function previewThumnailImage(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('preview-img');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        };
    </script>
@endsection
