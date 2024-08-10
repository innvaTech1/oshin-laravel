<div class="wsus__product_item">
    {{-- @if ($product->new_arrival == 1)
        <span class="wsus__new">{{ __('user.Sales') }}</span>
    @elseif ($product->is_featured == 1)
        <span class="wsus__new">{{ __('user.Featured') }}</span>
    @elseif ($product->is_best == 1)
        <span class="wsus__new">{{ __('user.Best') }}</span>
    @endif --}}

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
        <span class="wsus__minus">-{{ $campaignOffer }}%</span>
    @else
        @if ($product->offer_price != null)
            <span class="wsus__minus">-{{ $percentage }}%</span>
        @endif
    @endif
    <a class="wsus__pro_link" href="{{ route('product-detail', $product->slug) }}">
        <img src="{{ asset($product->thumb_image) }}" alt="product" class="img-fluid w-100 img_1" />
        <img src="{{ asset($product->thumb_image) }}" alt="product" class="img-fluid w-100 img_2" />
    </a>
    <ul class="wsus__single_pro_icon">
        <li><a href="#" data-bs-toggle="modal" data-bs-target="#productModalView-{{ $product->id }}"><i
                    class="far fa-eye"></i></a>
        </li>
        <li><a href="javascript:;" onclick="addToWishlist('{{ $product->id }}')"><i class="far fa-heart"></i></a></li>
        <li><a href="javascript:;" onclick="addToCompare('{{ $product->id }}')"><i class="far fa-random"></i></a>
        </li>
    </ul>
    <div class="wsus__product_details">
        {{-- <a class="wsus__category"
            href="{{ route('product', ['category' => $product->category->slug]) }}">{{ $product->category->name }}
        </a> --}}
        
        <a class="wsus__pro_name" href="{{ route('product-detail', $product->slug) }}">{{ $product->short_name }}</a>
        @if ($isCampaign)
            <p class="wsus__price">
                {{ currency_icon() }}{{ sprintf('%.2f', $campaignOfferPrice + $variantPrice) }}
                <del>{{ currency_icon() }}{{ sprintf('%.2f', $totalPrice) }}</del>
            </p>
        @else
            @if ($product->offer_price == null)
                <p class="wsus__price">
                    {{ currency_icon() }}{{ sprintf('%.2f', $totalPrice + $variantPrice) }}
                </p>
            @else
                <p class="wsus__price">
                    {{ currency_icon() }}{{ sprintf('%.2f', $product->offer_price + $variantPrice) }}
                    <del>{{ currency_icon() }}{{ sprintf('%.2f', $totalPrice) }}</del>
                </p>
            @endif
        @endif
        <p class="wsus__pro_rating">
            @include('components.website.review')
        </p>
        {{-- <a class="add_cart" onclick="addToCartMainProduct('{{ $product->id }}')" href="javascript:;"><i
                class="far fa-shopping-basket"></i> {{ __('user.ADD TO CART') }}</a> --}}
    </div>
</div>
