@extends('layout')
@section('title')
    <title>{{ __('user.Shopping Cart') }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ __('user.Shopping Cart') }}">
@endsection

@section('public-content')


    <div id="CartResponse">
        @if ($cartContents->count() != 0)
            {{-- <!--============================
                    CART VIEW PAGE START
            ==============================--> --}}
            <section id="wsus__cart_view">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9">
                            <div class="wsus__cart_list">
                                <div class="table-responsive" id="response_cart_view">
                                    <form id="cartUpdateForm">
                                        <table>
                                            <tbody>
                                                <tr class="d-flex">
                                                    <th class="wsus__pro_img">
                                                        {{ __('user.Image') }}
                                                    </th>

                                                    <th class="wsus__pro_name">
                                                        {{ __('user.Product details') }}
                                                    </th>

                                                    <th class="wsus__pro_status">
                                                        {{ __('user.Price') }}
                                                    </th>

                                                    <th class="wsus__pro_select">
                                                        {{ __('user.quantity') }}
                                                    </th>

                                                    <th class="wsus__pro_tk">
                                                        {{ __('user.Sub Total') }}
                                                    </th>

                                                    <th class="wsus__pro_icon">
                                                        <a href="javascript:;" id="cartClear"
                                                            class="common_btn"> <span>{{ __('user.clear cart') }}</span></a>
                                                    </th>
                                                </tr>


                                                @csrf
                                                @php
                                                    $subTotal = 0;
                                                @endphp
                                                @foreach ($cartContents as $cartContent)
                                                    @php
                                                        $variantPrice = 0;
                                                    @endphp
                                                    <tr class="d-flex">
                                                        <td class="wsus__pro_img"><img
                                                                src="{{ asset($cartContent->options->image) }}"
                                                                alt="product" class="img-fluid w-100">
                                                        </td>

                                                        <td class="wsus__pro_name">
                                                            <p><a
                                                                    href="{{ route('product-detail', $cartContent->options->slug) }}">{{ $cartContent->name }}</a>
                                                            </p>
                                                            @foreach ($cartContent->options->variants as $indx => $variant)
                                                                <span>
                                                                    {{ $cartContent->options->values[$indx] }}</span>

                                                                @php
                                                                    $variantPrice +=
                                                                        $cartContent->options->prices[$indx];
                                                                @endphp
                                                            @endforeach

                                                        </td>

                                                        @php
                                                            $productPrice = $cartContent->price;
                                                            $total = $productPrice * $cartContent->qty;
                                                            $subTotal += $total;
                                                        @endphp

                                                        <td class="wsus__pro_status">
                                                            <p>{{ currency_icon() }}{{ $productPrice }}</p>
                                                        </td>

                                                        <td class="wsus__pro_select">
                                                            <div class="modal_btn">
                                                                <button
                                                                    onclick="shppingCartDecrement('{{ $cartContent->rowId }}')"
                                                                    type="button" class="btn btn-danger btn-sm ">-</button>
                                                                <input id="qty-{{ $cartContent->rowId }}"
                                                                    name="quantities[]" readonly type="text"
                                                                    min="1" max="100"
                                                                    value="{{ $cartContent->qty }}" />
                                                                <button
                                                                    onclick="shppingCartIncrement('{{ $cartContent->rowId }}')"
                                                                    type="button"
                                                                    class="btn btn-success btn-sm ">+</button>
                                                            </div>

                                                            <input type="hidden" name="rowIds[]"
                                                                value="{{ $cartContent->rowId }}">
                                                            <input type="hidden" name="ids[]"
                                                                value="{{ $cartContent->id }}">
                                                        </td>
                                                        <td class="wsus__pro_tk">
                                                            <h6>{{ currency_icon() }}{{ $total }} </h6>
                                                        </td>
                                                        <td class="wsus__pro_icon">
                                                            <a href="javascript:;"
                                                                onclick="cartItemRemove('{{ $cartContent->rowId }}')"><i
                                                                    class="far fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3">
                            {{-- wsus__cart_list_footer --}}
                            @php
                                $tax_amount = 0;
                                $total_price = 0;
                                $coupon_price = 0;

                                foreach ($cartContents as $key => $content) {
                                    $tax = $content->options->tax * $content->qty;
                                    $tax_amount = $tax_amount + $tax;
                                }

                                $total_price = $tax_amount + $subTotal;

                                if (Session::get('coupon_price') && Session::get('offer_type')) {
                                    if (Session::get('offer_type') == 1) {
                                        $coupon_price = Session::get('coupon_price');
                                        $coupon_price = ($coupon_price / 100) * $total_price;
                                    } else {
                                        $coupon_price = Session::get('coupon_price');
                                    }
                                }

                                $total_price = $total_price - $coupon_price;
                            @endphp
                            <div class="wsus__cart_list_footer_button">
                                <h6>{{ __('user.total cart') }}</h6>
                                <p>{{ __('user.subtotal') }}:
                                    <span>{{ currency_icon() }}{{ $subTotal }}</span>
                                </p>
                                <p>{{ __('user.Tax') }}(+):
                                    <span>{{ currency_icon() }}{{ $tax_amount }}</span>
                                </p>
                                <p>{{ __('user.Coupon') }}(-):
                                    <span>{{ currency_icon() }}{{ $coupon_price }}</span>
                                </p>
                                <p class="total"><span>{{ __('user.total') }}:</span>
                                    <span>{{ currency_icon() }}{{ $total_price }}</span>
                                </p>

                                <form id="couponFormId">
                                    <input type="text" name="coupon" placeholder="{{ __('Enter Coupon') }}">
                                    <button type="submit" class="common_btn"><span>{{ __('user.apply') }}</span></button>
                                </form>
                                <a class="common_btn mt-4 w-100 text-center"
                                    href="{{ route('checkout.checkout') }}"> <span>{{ __('user.checkout') }}</span></a>
                                <a class="common_btn mt-4 w-100 text-center" href="{{ route('product') }}"> <span><i
                                        class="fab fa-shopify"></i> {{ __('user.go to shop') }}</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            @php
                $bannerOne = $banners->where('id', 9)->first();
                $bannerTwo = $banners->where('id', 10)->first();
            @endphp
            @if ($bannerOne->status == 1)
                <section id="wsus__single_banner">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6">
                                <div class="wsus__single_banner_content">
                                    <div class="wsus__single_banner_img">
                                        <img src="{{ asset($bannerOne->image) }}" alt="banner" class="img-fluid w-100">
                                    </div>
                                    <div class="wsus__single_banner_text">
                                        <h6>{{ $bannerOne->description }}</h6>
                                        <h3>{{ $bannerOne->title }}</h3>
                                        <a class="shop_btn" href="{{ $bannerOne->link }}"><span>{{ __('user.shop now') }}</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6">
                                <div class="wsus__single_banner_content single_banner_2">
                                    <div class="wsus__single_banner_img">
                                        <img src="{{ asset($bannerTwo->image) }}" alt="banner" class="img-fluid w-100">
                                    </div>
                                    <div class="wsus__single_banner_text">
                                        <h6>{{ $bannerTwo->description }}</h6>
                                        <h3>{{ $bannerTwo->title }}</h3>
                                        <a class="shop_btn" href="{{ $bannerTwo->link }}"> <span>{{ __('user.shop now') }}</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            @endif
            {{-- <!--============================
                    CART VIEW PAGE END
            ==============================--> --}}
        @else
            {{-- <!--============================
                CART VIEW PAGE START
            ==============================--> --}}
            <section id="wsus__cart_view">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="wsus__cart_list cart_empty p-3 p-sm-5 text-center">
                                <p class="mb-4">{{ __('user.your shopping cart is empty') }}</p>
                                <a href="{{ route('product') }}" class="common_btn"><span><i
                                        class="fal fa-store me-2"></i>{{ __('user.Go to Shop') }}</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            {{-- <!--============================
                    CART VIEW PAGE END
            ==============================--> --}}
        @endif

    </div>


    <script>
        (function($) {
            "use strict";
            $(document).ready(function() {
                $(".shoppingDecrementId").on("click", function(e) {
                    cartItemIncrement();
                })
                $(".shoppingIncrementId").on("click", function(e) {
                    cartItemIncrement();
                })

                $("#cartClear").on("click", function(e) {
                    $.ajax({
                        type: 'get',
                        url: "{{ route('cart-clear') }}",
                        success: function(response) {
                            $("#CartResponse").html(response)
                            toastr.success(
                                "{{ __('user.Your shopping cart is cleared') }}");
                            $.ajax({
                                type: 'get',
                                url: "{{ route('load-sidebar-cart') }}",
                                success: function(response) {
                                    $("#load_sidebar_cart").html(response)
                                    $.ajax({
                                        type: 'get',
                                        url: "{{ route('get-cart-qty') }}",
                                        success: function(response) {
                                            $("#cartQty").text(
                                                response.qty);
                                        },
                                    });
                                },
                            });
                        },
                        error: function(err) {
                            toastr.error("{{ __('user.Something went wrong') }}");

                        }
                    });
                })

                $("#couponFormId").on("submit", function(e) {
                    e.preventDefault();
                    $.ajax({
                        type: 'get',
                        data: $('#couponFormId').serialize(),
                        url: "{{ route('apply-coupon') }}",
                        success: function(response) {
                            if (response.status == 0) {
                                toastr.error(response.message);
                            } else {
                                $("#CartResponse").html(response)
                                toastr.success(
                                    "{{ __('Coupon applied successfully') }}");
                            }

                        },
                        error: function(err) {
                            toastr.error("{{ __('user.Something went wrong') }}");

                        }
                    });
                })


            });
        })(jQuery);

        function shppingCartDecrement(id) {
            let qty = $("#qty-" + id).val();
            if (qty > 1) {
                qty = qty - 1;
                $("#qty-" + id).val(qty);
                cartItemIncrement();
            }
        }

        function shppingCartIncrement(id) {
            let qty = $("#qty-" + id).val();
            qty = qty * 1 + 1 * 1;
            $("#qty-" + id).val(qty);
            cartItemIncrement();
        }

        function cartItemIncrement() {
            $.ajax({
                type: 'POST',
                data: $('#cartUpdateForm').serialize(),
                url: "{{ route('cart-update') }}",
                success: function(response) {
                    if (response.status == 0) {
                        toastr.error(response.message);
                        return;
                    }

                    $("#CartResponse").html(response)
                    toastr.success("{{ __('user.Item Updated Successfully') }}");
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
                                },
                            });
                        },
                    });
                },
                error: function(err) {
                    toastr.error("{{ __('user.Something went wrong') }}");

                }
            });
        }


        function cartItemRemove(rowId) {
            $.ajax({
                type: 'get',
                url: "{{ url('cart-item-remove') }}" + "/" + rowId,
                success: function(response) {
                    $("#CartResponse").html(response)
                    toastr.success("{{ __('user.Item Removed Successfully') }}");
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
                                },
                            });
                        },
                    });
                },
                error: function(err) {
                    toastr.error("{{ __('user.Something went wrong') }}");

                }
            });
        }
    </script>
@endsection
