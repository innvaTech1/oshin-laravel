<div class="mt-3 mb-5 position-relative">
    <div class="w-100">
        <div class="d-flex flex-column gap-3">
            @if ($bankInfo && $bankInfo->cash_on_delivery_status)
                <div onclick="setPaymentMethod('Cash on Delivery')"
                    class="payment-item bg-light text-center w-100 h-50px text-sm d-flex justify-content-center align-items-center px-3 text-uppercase cursor-pointer">
                    <div class="w-100">
                        <span class="text-dark font-weight-bold text-base">
                            {{ __('user.Cash On Delivery') }}
                        </span>
                    </div>

                    <span data-aos="zoom-in"
                        class="position-absolute text-white z-index-10 w-6 h-6 rounded-circle bg-warning"
                        style="right: -10px; top: -10px;">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd"
                                d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                                clip-rule="evenodd" />
                        </svg>
                    </span>

                </div>
            @endif
            @if ($aamarpay && $aamarpay->status)
                <div onclick="setPaymentMethod('aamarpay')"
                    class="payment-item text-center bg-light  w-100 h-50px font-weight-bold text-sm text-white d-flex justify-content-center align-items-center px-3 text-uppercase cursor-pointer">
                    <div class="w-100">
                        <span class="text-dark font-weight-bold text-base">
                            Aamarpay
                        </span>
                    </div>

                    <span data-aos="zoom-in"
                        class="position-absolute text-white z-index-10 w-6 h-6 rounded-circle bg-warning"
                        style="right: -10px; top: -10px;">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd"
                                d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                                clip-rule="evenodd" />
                        </svg>
                    </span>

                </div>
            @endif
        </div>
    </div>
</div>
