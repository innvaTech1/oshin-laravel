<header>
    <div class="container">
        <div class="row">
            <div class="col-2 d-lg-none">
                <div class="wsus__mobile_menu_area">
                    <span class="wsus__mobile_menu_icon"><i class="fal fa-bars"></i></span>
                </div>
            </div>
            <div class="col-xl-2 col-7 col-lg-2">
                <div class="wsus_logo_area">
                    <a class="wsus__header_logo" href="{{ route('home') }}">
                        <img src="{{ asset($setting->logo) }}" alt="logo" class="img-fluid w-100">
                    </a>
                </div>
            </div>
            <div class="col-xl-6 col-lg-5 d-none d-lg-block">
                @if ($menus->where('id', 25)->first()->status == 1)
                    <div class="wsus__search">
                        <form action="{{ route('product') }}">
                            <div class="wsus__category_search">
                                <select class="select_2" name="category">
                                    <option value="">{{ __('user.All Category') }}</option>
                                    @if (request()->has('category'))
                                        @foreach ($productCategories as $productCategory)
                                            <option
                                                {{ request()->get('category') == $productCategory->slug ? 'selected' : '' }}
                                                value="{{ $productCategory->slug }}">{{ $productCategory->name }}
                                            </option>
                                        @endforeach
                                    @else
                                        @foreach ($productCategories as $productCategory)
                                            <option value="{{ $productCategory->slug }}">
                                                {{ $productCategory->name }}</option>
                                        @endforeach
                                    @endif

                                </select>
                            </div>
                            <input type="text" placeholder="{{ __('user.Search...') }}" name="search"
                                value="{{ request()->has('search') ? request()->get('search') : '' }}">
                            <button type="submit"><i class="far fa-search"></i></button>
                        </form>
                    </div>
                @endif
            </div>
            <div class="col-xl-4 col-3 col-lg-5">
                <div class="wsus__call_icon_area">
                    @if ($menus->where('id', 23)->first()->status == 1)
                        <div class="wsus__call_area">
                            <div class="wsus__call">
                                <i class="far fa-phone-alt"></i>
                            </div>
                            <div class="wsus__call_text">
                                <p>{{ __('user.Call Us Now') }} :</p>
                                <a href="callto:+{{ $setting->menu_phone }}">{{ $setting->menu_phone }}</a>
                            </div>
                        </div>
                    @endif
                    <ul class="wsus__icon_area">
                        @if ($menus->where('id', 21)->first()->status == 1)
                            <li><a href="{{ route('user.wishlist') }}"><i class="far fa-heart"></i>
                                    @auth
                                        @php
                                            $user = Auth::guard('web')->user();
                                            $wishlist = App\Models\Wishlist::where('user_id', $user->id)->count();
                                        @endphp
                                        <span id="wishlistQty">{{ $wishlist }}</span>
                                    @endauth

                                </a></li>
                        @endif
                        @if ($menus->where('id', 20)->first()->status == 1)
                            <li><a href="{{ route('compare') }}"><i class="far fa-random"></i>
                                    <span id="compareQty">{{ Cart::instance('compare')->count() }}</span>

                                </a></li>
                        @endif

                        @if ($menus->where('id', 19)->first()->status == 1)
                            <li><a class="wsus__cart_icon" href="javascript:;"><i class="fal fa-shopping-bag"></i><span
                                        id="cartQty">{{ Cart::instance('default')->count() }}</span></a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="wsus__mini_cart">
        <h4>{{ __('user.SHOPPING CART') }} <span class="wsus_close_mini_cart"><i class="far fa-times"></i></span>
        </h4>
        <div id="load_sidebar_cart">
            @if (Cart::instance('default')->count() == 0)
                <h5 class="text-danger text-center">{{ 'Your Cart is empty' }}</h5>
            @else
                <ul>
                    @php
                        $sidebarCartSubTotal = 0;
                        $sidebar_cart_contents = Cart::instance('default')->content();
                    @endphp
                    @foreach ($sidebar_cart_contents as $sidebar_cart_content)
                        <li>
                            <div class="wsus__cart_img">
                                <a href="#"><img src="{{ asset($sidebar_cart_content->options->image) }}"
                                        alt="product" class="img-fluid w-100"></a>
                                <a class="wsis__del_icon"
                                    onclick="sidebarCartItemRemove('{{ $sidebar_cart_content->rowId }}')"
                                    href="javascript:;"><i class="fas fa-minus-circle"></i></a>
                            </div>
                            <div class="wsus__cart_text">
                                <a class="wsus__cart_title"
                                    href="{{ route('product-detail', $sidebar_cart_content->options->slug) }}">{{ $sidebar_cart_content->name }}</a>
                                <p><span>{{ $sidebar_cart_content->qty }} x</span>
                                    {{ $currencySetting->currency_icon }}{{ $sidebar_cart_content->price }}</p>
                            </div>
                        </li>

                        @php
                            $productPrice = $sidebar_cart_content->price;
                            $total = $productPrice * $sidebar_cart_content->qty;
                            $sidebarCartSubTotal += $total;
                        @endphp
                    @endforeach
                </ul>
                <h5>{{ __('user.Sub Total') }}
                    <span>{{ $currencySetting->currency_icon }}{{ $sidebarCartSubTotal }}</span>
                </h5>
                <div class="wsus__minicart_btn_area">
                    <a class="common_btn" href="{{ route('cart') }}">{{ __('user.View Cart') }}</a>
                    <a class="common_btn"
                        href="{{ route('user.checkout.billing-address') }}">{{ __('user.Checkout') }}</a>
                </div>
            @endif
        </div>
    </div>
</header>
