<div class="wsus__pro_details_text">
    <a class="title" href="{{ route('product-detail', $product->slug) }}">{{ $product->name }}</a>

    @if ($product->qty == 0)
        <p class="wsus__stock_area"><span class="in_stock">{{ __('user.Out of Stock') }}</span></p>
    @else
        <p class="wsus__stock_area"><span class="in_stock">{{ __('user.In stock') }}
                @if ($setting->show_product_qty == 1)
            </span> ({{ $product->qty }} {{ __('user.item') }})
    @endif
    </p>
    @endif
    @php
        $variantPrice = 0;
        $variants = $product->variants->where('status', 1);
        if ($variants->count() != 0) {
            foreach ($variants as $variants_key => $variant) {
                if ($variant->variantItems->where('status', 1)->count() != 0) {
                    $item = $variant->variantItems->where('is_default', 1)->first();
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
            if ($campaign->start_date <= $today && $today <= $campaign->end_date) {
                $isCampaign = true;
            }
            $campaignOffer = $campaign->offer;
            $productPrice = $product->price;
            $campaignOfferPrice = ($campaignOffer / 100) * $productPrice;
            $totalPrice = $product->price;
            $campaignOfferPrice = $totalPrice - $campaignOfferPrice;
        }

        $totalPrice = $product->price;
        if ($product->offer_price != null) {
            $offerPrice = $product->offer_price;
            $offer = $totalPrice - $offerPrice;
            $percentage = ($offer * 100) / $totalPrice;
            $percentage = round($percentage);
        }

    @endphp

    @if ($isCampaign)
        <h4>{{ currency_icon() }} <span
                id="mainProductModalPrice-{{ $product->id }}">{{ sprintf('%.2f', $campaignOfferPrice + $variantPrice) }}</span>
            <del>{{ currency_icon() }}{{ sprintf('%.2f', $totalPrice) }}</del>
        </h4>
    @else
        @if ($product->offer_price == null)
            <h4>{{ currency_icon() }}<span
                    id="mainProductModalPrice-{{ $product->id }}">{{ sprintf('%.2f', $totalPrice + $variantPrice) }}</span>
            </h4>
        @else
            <h4>{{ currency_icon() }}<span
                    id="mainProductModalPrice-{{ $product->id }}">{{ sprintf('%.2f', $product->offer_price + $variantPrice) }}</span>
                <del>{{ currency_icon() }}{{ sprintf('%.2f', $totalPrice) }}</del>
            </h4>
        @endif
    @endif

    <p class="wsus__pro_rating">
        @for ($i = 1; $i <= 5; $i++)
            @if ($i <= $product->avgReview)
                <i class="fas fa-star"></i>
            @elseif($i - $product->avgReview == 0.5)
                <i class="fas fa-star-half-alt"></i>
            @else
                <i class="far fa-star"></i>
            @endif
        @endfor
        <span>({{ $product->totalReviews() }} {{ __('user.review') }})</span>
    </p>

    @php
        $productPrice = 0;
        if ($isCampaign) {
            $productPrice = $campaignOfferPrice + $variantPrice;
        } else {
            if ($product->offer_price == null) {
                $productPrice = $totalPrice + $variantPrice;
            } else {
                $productPrice = $product->offer_price + $variantPrice;
            }
        }
    @endphp
    <form id="productModalFormId-{{ $product->id }}">


        @php
            $productVariants = App\Models\ProductVariant::where([
                'status' => 1,
                'product_id' => $product->id,
            ])->get();
        @endphp

        @include('components.website.product-variation')
        <div class="wsus__quentity">
            <h5>{{ __('user.quantity') }} :</h5>
            <div class="modal_btn">
                <button onclick="productModalDecrement('{{ $product->id }}')" type="button"
                    class="btn btn-danger btn-sm">-</button>
                <input id="productModalQty-{{ $product->id }}" name="quantity" readonly class="form-control"
                    type="text" min="1" max="100" value="1" />
                <button onclick="productModalIncrement('{{ $product->id }}','{{ $product->qty }}')" type="button"
                    class="btn btn-success btn-sm">+</button>
            </div>
            <h3 class="d-none">{{ currency_icon() }}<span
                    id="productModalPrice-{{ $product->id }}">{{ sprintf('%.2f', $productPrice) }}</span>
            </h3>

            <input type="hidden" name="product_id" value="{{ $product->id }}">
            <input type="hidden" name="image" value="{{ $product->thumb_image }}">
            <input type="hidden" name="slug" value="{{ $product->slug }}">

        </div>

        <ul class="wsus__button_area">
            <li><button type="button" onclick="addToCartInProductModal('{{ $product->id }}')"
                    class="add_cart">{{ __('user.add to cart') }}</button></li>
            <li><a class="buy_now" href="javascript:;"
                    onclick="addToBuyNow('{{ $product->id }}')">{{ __('user.Order Now') }}
                </a></li>

        </ul>
    </form>
    @if ($product->sku)
        <p class="brand_model"><span>{{ __('user.Model') }} :</span> {{ $product->sku }}</p>
    @endif

    @if ($product->brand)
        <p class="brand_model"><span>{{ __('user.Brand') }} :</span> <a
                href="{{ route('product', ['brand' => $product->brand->slug]) }}">{{ $product->brand->name }}</a>
        </p>
    @endif
    <p class="brand_model"><span>{{ __('user.Category') }} :</span> <a
            href="{{ route('product', ['category' => $product->category->slug]) }}">{{ $product->category->name }}</a>
    </p>
    <div class="wsus__pro_det_share d-none">
        <h5>{{ __('user.share') }} :</h5>
        <ul class="d-flex">
            <li><a class="facebook"
                    href="https://www.facebook.com/sharer/sharer.php?u={{ route('product-detail', $product->slug) }}&t={{ $product->name }}"><i
                        class="fab fa-facebook-f"></i></a></li>
            <li><a class="twitter"
                    href="https://twitter.com/share?text={{ $product->name }}&url={{ route('product-detail', $product->slug) }}"><i
                        class="fab fa-twitter"></i></a></li>
            <li><a class="linkedin"
                    href="https://www.linkedin.com/shareArticle?mini=true&url={{ route('product-detail', $product->slug) }}&title={{ $product->name }}"><i
                        class="fab fa-linkedin"></i></a></li>
            <li><a class="pinterest"
                    href="https://www.pinterest.com/pin/create/button/?description={{ $product->name }}&media=&url={{ route('product-detail', $product->slug) }}"><i
                        class="fab fa-pinterest-p"></i></a></li>
        </ul>
    </div>
</div>
