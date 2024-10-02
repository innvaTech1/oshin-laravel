<div class="modal fade" id="exampleModalLong{{ $product->id }}" role="dialog" aria-labelledby="exampleModalLongTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-three " role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">
                    {{ __('Product Details') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body modal-body-one">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="place-order-img">
                            <img src="{{ asset($product->thumb_image) }}" alt="img">

                            {{-- <div class="place-order-img-overlay">
                                                                <div class="icon">
                                                                    <h5>-50%</h5>
                                                                </div>
                                                            </div> --}}
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 raindo-pd">
                        <div class="place-order-text">
                            <span>{{ $product->short_name }}</span>
                            <h2>{{ $product->name }}</h2>
                        </div>

                        <div class="place-order-reviews">
                            <div class="icon">
                                <span>
                                    <svg width="80" height="16" viewBox="0 0 80 16" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8 0L9.79611 5.52786H15.6085L10.9062 8.94427L12.7023 14.4721L8 11.0557L3.29772 14.4721L5.09383 8.94427L0.391548 5.52786H6.20389L8 0Z"
                                            fill="#FFA800" />
                                        <path
                                            d="M24 0L25.7961 5.52786H31.6085L26.9062 8.94427L28.7023 14.4721L24 11.0557L19.2977 14.4721L21.0938 8.94427L16.3915 5.52786H22.2039L24 0Z"
                                            fill="#FFA800" />
                                        <path
                                            d="M40 0L41.7961 5.52786H47.6085L42.9062 8.94427L44.7023 14.4721L40 11.0557L35.2977 14.4721L37.0938 8.94427L32.3915 5.52786H38.2039L40 0Z"
                                            fill="#FFA800" />
                                        <path
                                            d="M56 0L57.7961 5.52786H63.6085L58.9062 8.94427L60.7023 14.4721L56 11.0557L51.2977 14.4721L53.0938 8.94427L48.3915 5.52786H54.2039L56 0Z"
                                            fill="#FFA800" />
                                        <path
                                            d="M72 0L73.7961 5.52786H79.6085L74.9062 8.94427L76.7023 14.4721L72 11.0557L67.2977 14.4721L69.0938 8.94427L64.3915 5.52786H70.2039L72 0Z"
                                            fill="#FFA800" />
                                    </svg>
                                </span>
                            </div>
                            {{-- <div class="text">
                                                                <p>6 Reviews</p>
                                                            </div> --}}
                        </div>

                        <div class="place-order-del">
                            @if ($product->offer_price)
                                <span>
                                    <del>{{ $setting->currency_icon }}{{ $product->offer_price }}</del>
                                </span>
                            @endif
                            <span>{{ $setting->currency_icon }}{{ $product->price }}</span>
                        </div>

                        <div class="place-order-p">
                            <p>
                                {!! $product->short_description !!}
                            </p>
                        </div>

                        <div class="availabillity">
                            <h2>
                                {{ __('Availabillity :') }}
                                @if ($product->qty == 0)
                                    <span style="color: red;">{{ __('Stock Out') }}</span>
                                @else
                                    <span>{{ $product->qty }}
                                        {{ __('Products Available') }}</span>
                                @endif


                            </h2>
                        </div>
                        <form action="{{ route('admin.pos.cart.order.detils', $product->id) }}" method="post">
                            @csrf
                            <input type="hidden" name="selected_values" id="selected_values">
                            <div class="pt-3">
                                <div class="row">
                                    @foreach ($product->activeVariants as $variant)
                                        <div class="col-md-6">
                                            <label for="size">{{ $variant->name }}</label>
                                            <select id="size" name="selectedValues[{{ $variant->id }}]"
                                                class="form-control variant-select">
                                                <option value="" disabled selected>{{ __('Select') }}
                                                </option>
                                                @if ($variant->variantItems)
                                                    @foreach ($variant->variantItems as $variantItem)
                                                        <option value="{{ $variantItem->id }}">
                                                            {{ $variantItem->name }}
                                                        </option>
                                                    @endforeach
                                                @endif
                                            </select>
                                        </div>
                                    @endforeach
                                </div>
                            </div>


                            <div class="add-to-cart">
                                <div class="col-md-4 mb-3 mt-1">
                                    <div class="qty-container">
                                        <button class="qty-btn-minus" type="button"><i
                                                class="fa fa-minus"></i></button>
                                        <input type="number" name="quantity" class="input-qty" value="1"
                                            readonly />
                                        <button class="qty-btn-plus" type="button"><i class="fa fa-plus"></i></button>
                                    </div>
                                </div>


                                <div class="add-to-cart-item-modal">
                                    <!-- Button trigger modal -->

                                    <button type="submit" class="btn-delete">
                                        <span>
                                            <svg width="14" height="14" viewBox="0 0 14 14" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <g clip-path="url(#clip0_1344_5144)">
                                                    <path
                                                        d="M8.25309 3.32575C8.25309 4.00929 8.25145 4.69283 8.25418 5.37583C8.25527 5.68424 8.31488 5.74439 8.62382 5.74439C9.96351 5.74603 11.3027 5.74275 12.6423 5.74603C13.2723 5.74767 13.7392 6.05663 13.9241 6.58104C14.2204 7.42098 13.6135 8.24232 12.6757 8.25052C11.5914 8.25982 10.507 8.25271 9.42271 8.25271C9.17665 8.25271 8.93058 8.25216 8.68452 8.25271C8.29082 8.2538 8.25363 8.29154 8.25363 8.69838C8.25309 10.0195 8.25637 11.3412 8.25199 12.6624C8.24981 13.2836 7.92555 13.7544 7.39842 13.9305C6.56399 14.2088 5.75799 13.6062 5.74814 12.6821C5.73776 11.7251 5.74596 10.7687 5.74541 9.81173C5.74541 9.41965 5.74705 9.02812 5.74486 8.63604C5.74322 8.30849 5.68964 8.2538 5.36155 8.25326C4.02186 8.25162 2.68272 8.25545 1.34304 8.25107C0.719125 8.24943 0.249414 7.93008 0.0706069 7.40348C-0.212641 6.57065 0.387757 5.75916 1.30968 5.74658C2.14794 5.73564 2.98620 5.74384 3.82446 5.74384C4.30730 5.74384 4.79013 5.74384 5.27351 5.74384C5.72135 5.74330 5.74541 5.71869 5.74541 5.25716C5.74541 3.95406 5.74268 2.65096 5.74650 1.34786C5.74814 0.720643 6.06201 0.253102 6.58750 0.0704598C7.40826 -0.213893 8.21754 0.370671 8.25199 1.27349C8.25254 1.29154 8.25254 1.31013 8.25254 1.32817C8.25309 1.99531 8.25309 2.66026 8.25309 3.32575Z"
                                                        fill="white" />
                                                </g>
                                            </svg>
                                        </span>
                                        {{ __('Add to Cart') }}
                                    </button>
                                </div>
                            </div>
                        </form>

                        <div class="catagory">
                            <p>{{ __('Category') }} <span>:
                                    {{ $product->category->name }}</span>
                            </p>
                            {{-- <p>{{__('Tags :')}}  <span>{{$product->tags}}</span></p> --}}
                            <p>{{ __('SKU :') }}
                                <span>{{ $product->sku }}</span>
                            </p>
                        </div>

                        <div class="social-icon">
                            <div class="social-icon-item">
                                <div class="text">
                                    <p>{{ __('Share This') }}</p>
                                </div>
                                <div class="icon">
                                    <a href="#" target="_blank">
                                        <span>
                                            <svg width="10" height="16" viewBox="0 0 10 16" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M3 16V9H0V6H3V4C3 1.3 4.7 0 7.1 0C8.3 0 9.2 0.1 9.5 0.1V2.9H7.8C6.5 2.9 6.2 3.5 6.2 4.4V6H10L9 9H6.3V16H3Z"
                                                    fill="#3E75B2" />
                                            </svg>
                                        </span>
                                    </a>
                                    <a href="#" target="_blank">
                                        <span>
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M8 0C3.6 0 0 3.6 0 8C0 11.4 2.1 14.3 5.1 15.4C5 14.8 5 13.8 5.1 13.1C5.2 12.5 6 9.1 6 9.1C6 9.1 5.8 8.7 5.8 8C5.8 6.9 6.5 6 7.3 6C8 6 8.3 6.5 8.3 7.1C8.3 7.8 7.9 8.8 7.6 9.8C7.4 10.6 8 11.2 8.8 11.2C10.2 11.2 11.3 9.7 11.3 7.5C11.3 5.6 9.9 4.2 8 4.2C5.7 4.2 4.4 5.9 4.4 7.7C4.4 8.4 4.7 9.1 5 9.5C5 9.7 5 9.8 5 9.9C4.9 10.2 4.8 10.7 4.8 10.8C4.8 10.9 4.7 11 4.5 10.9C3.5 10.4 2.9 9 2.9 7.8C2.9 5.3 4.7 3 8.2 3C11 3 13.1 5 13.1 7.6C13.1 10.4 11.4 12.6 8.9 12.6C8.1 12.6 7.3 12.2 7.1 11.7C7.1 11.7 6.7 13.2 6.6 13.6C6.4 14.3 5.9 15.2 5.6 15.7C6.4 15.9 7.2 16 8 16C12.4 16 16 12.4 16 8C16 3.6 12.4 0 8 0Z"
                                                    fill="#E12828" />
                                            </svg>
                                        </span>
                                    </a>
                                    <a href="#">
                                        <span class="pl">
                                            <svg width="18" height="14" viewBox="0 0 18 14" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M17.0722 1.60052C16.432 1.88505 15.7562 2.06289 15.0448 2.16959C15.7562 1.74278 16.3253 1.06701 16.5742 0.248969C15.8985 0.640206 15.1515 0.924742 14.3335 1.10258C13.6933 0.426804 12.7686 0 11.7727 0C9.85206 0 8.28711 1.56495 8.28711 3.48557C8.28711 3.7701 8.32268 4.01907 8.39382 4.26804C5.51289 4.12577 2.9165 2.73866 1.17371 0.604639C0.889175 1.13814 0.71134 1.70722 0.71134 2.34742C0.71134 3.5567 1.31598 4.62371 2.27629 5.26392C1.70722 5.22835 1.17371 5.08608 0.675773 4.83711V4.87268C0.675773 6.5799 1.88505 8.00258 3.48557 8.32268C3.20103 8.39382 2.88093 8.42938 2.56082 8.42938C2.34742 8.42938 2.09845 8.39382 1.88505 8.35825C2.34742 9.74536 3.62784 10.7768 5.15722 10.7768C3.94794 11.7015 2.45412 12.2706 0.818041 12.2706C0.533505 12.2706 0.248969 12.2706 0 12.2351C1.56495 13.2309 3.37887 13.8 5.37062 13.8C11.8082 13.8 15.3294 8.46495 15.3294 3.84124C15.3294 3.69897 15.3294 3.52113 15.3294 3.37887C16.0052 2.9165 16.6098 2.31186 17.0722 1.60052Z"
                                                    fill="#3FD1FF" />
                                            </svg>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
