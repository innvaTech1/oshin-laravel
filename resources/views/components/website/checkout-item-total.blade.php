<ul class="wsus__order_details_item">
    @php
        $subTotal = 0;
        $productsId = [];
    @endphp
    @foreach ($cartContents as $cartContent)
        @php
            $variantPrice = 0;
            $productsId[] = $cartContent->id;
        @endphp
        <li>
            <div class="wsus__order_details_img">
                <img src="{{ asset($cartContent->options->image) }}" alt="blazer" class="img-fluid w-100">
                <span>{{ $cartContent->qty }}</span>
            </div>
            <div class="wsus__order_details_text">
                <p>{{ $cartContent->name }}</p>
                <span>
                    @php
                        $totalVariant = count($cartContent->options->variants);
                    @endphp
                    @foreach ($cartContent->options->variants as $indx => $variant)
                        @php
                            $variantPrice += $cartContent->options->prices[$indx];
                        @endphp
                        {{ $cartContent->options->values[$indx] }}{{ $totalVariant == ++$indx ? '' : ',' }}
                    @endforeach
                </span>
            </div>
            @php
                $productPrice = $cartContent->price;
                $total = $productPrice * $cartContent->qty;
                $subTotal += $total;
            @endphp
            <div class="wsus__order_details_tk total_amount" data-total="{{ $total }}">
                <p>{{ currency_icon() }}{{ $total }}</p>
            </div>
        </li>

        @php
            $totalVariant = 0;
        @endphp
    @endforeach

</ul>

@php
    $deliveryCharge = [];
    $productsList = \App\Models\Product::whereIn('id', $productsId)->get();
    $shipCharge = $charge ?? 0;

    foreach ($productsList as $key => $prod) {
        $vendorId = $prod->vendor_id;
        $deliveryCharge["$vendorId"] = $shipCharge;
    }

    $totalVendorShippingCharge = array_sum($deliveryCharge);

    // check if  take shipping charge for multiple vendor
    $multiShippingCharge = $setting->shipping_charge_multiple;

    $diffShippingCharge = $shipCharge;
    if (!$multiShippingCharge) {
        $diffShippingCharge = $totalVendorShippingCharge - $shipCharge;
        $totalVendorShippingCharge = $shipCharge;
    }

    $deliveryCharge = $totalVendorShippingCharge;
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

{{-- <p class="wsus__product">{{ __('user.shipping Methods') }}</p>
    @foreach ($shippingMethods as $shippingMethod)
        <input type="hidden" value="{{ $shippingMethod->fee }}"
            id="shipping_price-{{ $shippingMethod->id }}">
        @if ($shippingMethod->id == 1)
            @if ($shippingMethod->minimum_order <= $total_price)
                <div class="form-check">
                    <input checked required class="form-check-input shipping_method"
                        type="radio" name="shipping_method"
                        id="shipping_method-{{ $shippingMethod }}"
                        value="{{ $shippingMethod->id }}">
                    <label class="form-check-label"
                        for="shipping_method-{{ $shippingMethod }}">
                        {{ $shippingMethod->title }}
                        <span>{{ $shippingMethod->description }}</span>
                    </label>
                </div>
            @endif
        @else
            <div class="form-check">
                <input required class="form-check-input shipping_method" type="radio"
                    name="shipping_method" id="shipping_method-{{ $shippingMethod }}"
                    value="{{ $shippingMethod->id }}">
                <label class="form-check-label" for="shipping_method-{{ $shippingMethod }}">
                    {{ $shippingMethod->title }}
                    <span>{{ $shippingMethod->description }}</span>
                </label>
            </div>
        @endif
    @endforeach --}}




<div class="wsus__order_details_summery">
    <p>{{ __('user.subtotal') }}:
        <span>{{ currency_icon() }}{{ $subTotal }}</span>
    </p>
    <p>{{ __('user.Tax') }}(+):
        <span>{{ currency_icon() }}{{ $tax_amount }}</span>
    </p>
    <p>{{ __('user.Shipping') }}(+): <span>{{ currency_icon() }}<span
                id="shipping_amount">{{ $deliveryCharge }}</span></span></p>
    @if ($multiShippingCharge == 0 && $diffShippingCharge > 0)
        <p>{{ __('Shipping Discount') }} :
            <span>
                {{ $diffShippingCharge ? currency_icon() . $diffShippingCharge : currency_icon() . 0 }} </span>
        </p>
    @endif
    <p>{{ __('user.Coupon') }}(-):
        <span>{{ currency_icon() }}{{ $coupon_price }}</span>
    </p>
    <p class="total"><span>{{ __('user.total') }}:</span>
        <span>{{ currency_icon() }}<span id="total_price">{{ $total_price + $deliveryCharge }}</span></span>
    </p>
    <input type="hidden" value="{{ $total_price + $deliveryCharge }}" id="hidden_total_price" name="amount">
    <input type="hidden" name="delivery_fee" id="delivery_fee" value="{{ $deliveryCharge }}">
    <input type="hidden" name="payment_method" value="Cash on Delivery">
</div>
