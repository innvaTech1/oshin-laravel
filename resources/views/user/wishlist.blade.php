@extends('user.layout')

@section('title')
    <title>{{ __('user.Wishlist') }}</title>
@endsection

@section('user-content')
    <div class="row">
        <div class="col-xl-9 col-xxl-10 col-lg-9 ms-auto">
            <div class="dashboard_content mt-2 mt-md-0">
                <h3><i class="far fa-heart"></i> {{ __('user.Wishlist') }}</h3>
                <div class="wsus__dashboard_wishlist">
                    <div class="row">
                        <div class="col-12">
                            <form action="{{ route('user.add-selected-to-cart') }}" method="POST" id="wishlistForm">
                                @csrf
                                <div class="wsus__cart_list wishlist">
                                    <div class="table-responsive">
                                        <table>
                                            <tbody>
                                                <tr class="d-flex">
                                                    <th class="wsus__pro_select">
                                                        <input type="checkbox" id="selectAll" class="form-check-input">
                                                    </th>
                                                    <th class="wsus__pro_img">
                                                        {{ __('user.Image') }}
                                                    </th>
                                                    <th class="wsus__pro_name">
                                                        {{ __('user.product') }}
                                                    </th>
                                                    <th class="wsus__pro_tk">
                                                        {{ __('user.price') }}
                                                    </th>
                                                    <th class="wsus__pro_icon">
                                                        {{ __('user.action') }}
                                                    </th>
                                                </tr>
                                                @foreach ($wishlists as $wishlist)
                                                    @php
                                                        $product = $wishlist->product;
                                                    @endphp
                                                    <tr class="d-flex">
                                                        <td class="wsus__pro_select">
                                                            <input type="checkbox" name="selected_items[]"
                                                                value="{{ $wishlist->id }}"
                                                                class="form-check-input wishlist-checkbox">
                                                        </td>
                                                        <td class="wsus__pro_img"><img
                                                                src="{{ asset($product->thumb_image) }}" alt="product"
                                                                class="img-fluid w-100">
                                                            <a href="{{ route('user.remove-wishlist', $wishlist->id) }}"><i
                                                                    class="far fa-times"></i></a>
                                                        </td>
                                                        <td class="wsus__pro_name">
                                                            <p><a
                                                                    href="{{ route('product-detail', $product->slug) }}">{{ $product->short_name }}</a>
                                                            </p>
                                                        </td>

                                                        @php
                                                            $variantPrice = 0;
                                                            $variants = $product->variants->where('status', 1);
                                                            if ($variants->count() != 0) {
                                                                foreach ($variants as $variants_key => $variant) {
                                                                    if (
                                                                        $variant->variantItems
                                                                            ->where('status', 1)
                                                                            ->count() != 0
                                                                    ) {
                                                                        $item = $variant->variantItems
                                                                            ->where('is_default', 1)
                                                                            ->first();
                                                                        if ($item) {
                                                                            $variantPrice += $item->price;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            $isCampaign = false;
                                                            $today = date('Y-m-d H:i:s');
                                                            $campaign = App\Models\CampaignProduct::where([
                                                                'status' => 1,
                                                                'product_id' => $product->id,
                                                            ])->first();
                                                            if ($campaign) {
                                                                $campaign = $campaign->campaign;
                                                                if (
                                                                    $campaign->start_date <= $today &&
                                                                    $today <= $campaign->end_date
                                                                ) {
                                                                    $isCampaign = true;
                                                                }
                                                                $campaignOffer = $campaign->offer;
                                                                $productPrice = $product->price;
                                                                $campaignOfferPrice =
                                                                    ($campaignOffer / 100) * $productPrice;
                                                                $totalPrice = $product->price;
                                                                $campaignOfferPrice = $totalPrice - $campaignOfferPrice;
                                                            } else {
                                                                $totalPrice = $product->price;
                                                                if ($product->offer_price != null) {
                                                                    $offerPrice = $product->offer_price;
                                                                    $offer = $totalPrice - $offerPrice;
                                                                    $percentage = ($offer * 100) / $totalPrice;
                                                                    $percentage = round($percentage);
                                                                }
                                                            }
                                                        @endphp

                                                        <td class="wsus__pro_tk">
                                                            @if ($isCampaign)
                                                                <h6>{{ currency_icon() }}{{ $campaignOfferPrice + $variantPrice }}
                                                                </h6>
                                                            @else
                                                                @if ($product->offer_price == null)
                                                                    <h6>{{ currency_icon() }}{{ $totalPrice + $variantPrice }}
                                                                    </h6>
                                                                @else
                                                                    <h6>{{ currency_icon() }}{{ $product->offer_price + $variantPrice }}
                                                                    </h6>
                                                                @endif
                                                            @endif
                                                        </td>

                                                        <td class="">
                                                            <a class="custom-button"
                                                                href="{{ route('product-detail', $product->slug) }}"></span>{{ __('user.View Product') }}</span></a>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div id="pagination">
                                    {{ $wishlists->links('custom_paginator') }}
                                </div>
                                <div class="wishlist-actions mt-3">
                                    <button type="submit"
                                        class="custom-button">{{ __('user.Add Selected to Cart') }}</button>
                                    <a class="custom-button" href="{{ route('cart') }}">{{ __('user.View Cart') }}</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('user_js')
    <script>
        $(document).ready(function() {
            // Select all checkbox functionality
            $("#selectAll").change(function() {
                $(".wishlist-checkbox").prop('checked', $(this).prop('checked'));
            });

            // Update "Select All" checkbox when individual checkboxes change
            $(".wishlist-checkbox").change(function() {
                if ($(".wishlist-checkbox:checked").length == $(".wishlist-checkbox").length) {
                    $("#selectAll").prop('checked', true);
                } else {
                    $("#selectAll").prop('checked', false);
                }
            });

            // Checkout button functionality
            $("#checkoutBtn").click(function(e) {
                e.preventDefault();
                if ($(".wishlist-checkbox:checked").length > 0) {
                    // Add a hidden input to indicate checkout
                    $("<input>").attr({
                        type: "hidden",
                        name: "checkout",
                        value: "1"
                    }).appendTo("#wishlistForm");

                    $("#wishlistForm").submit();
                } else {
                    alert("{{ __('user.Please select at least one item') }}");
                }
            });
        });
    </script>
@endsection
