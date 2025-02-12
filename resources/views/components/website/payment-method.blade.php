<div class="mt-3 mb-5 position-relative">
    <div class="w-100">
        <div class="d-flex flex-column gap-3">
            @if ($bankInfo && $bankInfo->cash_on_delivery_status)
                <label
                    class="payment-item bg-light w-100 p-3 d-flex align-items-center gap-3 cursor-pointer rounded border border-secondary">
                    <input type="radio" name="payment_method" value="Cash on Delivery" class="payment-radio d-none"
                        onclick="setPaymentMethod('Cash on Delivery')">
                    <div class="custom-radio-icon d-flex justify-content-center align-items-center">
                        <span class="checkmark bg-white border border-secondary rounded-circle"></span>
                    </div>
                    <span class="text-dark font-weight-bold text-base">
                        {{ __('user.Cash On Delivery') }}
                    </span>
                </label>
            @endif

            @if ($aamarpay && $aamarpay->status)
                <label
                    class="payment-item bg-light w-100 p-3 d-flex align-items-center gap-3 cursor-pointer rounded border border-secondary">
                    <input type="radio" name="payment_method" value="aamarpay" class="payment-radio d-none"
                        onclick="setPaymentMethod('aamarpay')" data-method="aamarpay"
                        data-store-id="{{ 'aamarpay' }}"
                        data-signature-key="{{ '28c78bb1f45112f5d40b956fe104645a' }}"
                        data-currency="{{ $aamarpay->currency }}" data-country="{{ $aamarpay->country }}">
                    <div class="custom-radio-icon d-flex justify-content-center align-items-center">
                        <span class="checkmark bg-white border border-secondary rounded-circle"></span>
                    </div>
                    <span class="text-dark font-weight-bold text-base">Aamarpay</span>
                </label>
            @endif
        </div>
    </div>
</div>
