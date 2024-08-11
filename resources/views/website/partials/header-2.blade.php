
<header>
    <div class="header__wrapper">
        <div class="container">
            <div class="row">
                <div class="col-2 col-md-1 d-none">
                    <div class="wsus__mobile_menu_area">
                        <span class="wsus__mobile_menu_icon"><i class="fal fa-bars"></i></span>
                    </div>
                </div>
                
            </div>
            <div class="header__content">
                <div class="row">
                    <div class="col-xl-2 col-3 col-md-3 col-lg-3 d-none d-md-block">
                        <div class="wsus_logo_area">
                            <a class="wsus__header_logo" href="{{ route('home') }}">
                                <img src="{{ asset($setting->logo) }}" alt="logo" class="img-fluid w-100">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6 col-lg-6 d-block">
                        <div class="wsus__search">
                            <form action="{{ route('product') }}">
                                <input type="text" placeholder="{{ __('Search in Oshin...') }}" name="search"
                                    value="{{ request()->has('search') ? request()->get('search') : '' }}">
                                <button type="submit"><i class="far fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-xl-3 col-3 col-md-3 col-lg-3 d-none d-md-block">
                        <div class="wsus__call_icon_area">
                            <div class="wsus__call_area">
                                <div class="wsus__call">
                                    <i class="fas fa-user-alt"></i>
                                </div>
                                <div class="wsus__call_text">
                                    @auth
                                        <a href="{{ route('user.dashboard') }}">{{ __('user.Account') }}</a>
                                    @else
                                        <a href="{{ route('login') }}">{{ __('user.Login/Register') }}</a>
                                    @endauth
                                </div>
                            </div>
                            <ul class="wsus__icon_area">
                                <li><a href="{{ route('user.wishlist') }}"><i class="fal fa-heart"></i>
                                        @auth
                                            @php
                                                $user = Auth::guard('web')->user();
                                                $wishlist = App\Models\Wishlist::where('user_id', $user->id)->count();
                                            @endphp
                                            <span id="wishlistQty">{{ $wishlist }}</span>
                                        @endauth
                                    </a>
                                </li>
                                {{-- <li>
                                    <a href="{{ route('compare') }}">
                                        <i class="fal fa-random"></i>
                                        <span id="compareQty">{{ Cart::instance('compare')->count() }}</span>
                                    </a>
                                </li> --}}
                                @if ($menus->where('id', 19)->first()->status == 1)
                                    <li><a class="wsus__cart_icon" href="javascript:;">
                                            <i class="fal fa-shopping-bag"></i>
                                            <span id="cartQty">{{ Cart::instance('default')->count() }}</span>
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wsus__mini_cart">
            <h4>{{ __('user.Shopping Cart') }} <span class="wsus_close_mini_cart"><i class="far fa-times"></i></span>
            </h4>
            <div id="load_sidebar_cart">
                @if (Cart::instance('default')->count() == 0)
                    <h5 class="text-danger text-center">{{ __('user.Your Cart is empty') }}</h5>
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
                        <a class="common_btn" href="{{ route('checkout.checkout') }}">{{ __('user.Checkout') }}</a>
                    </div>
                @endif
            </div>
    </div>
    <nav class="wsus__main_menu d-none d-md-block">
        <div class="container">
            <div class="row">
                <div class="col-3 col-sm-3 col-md-3 col-lg-2">
                    <div class="wsus_header_cate_wra d-none d-md-block">
                        <div class="wsus_header_cate">
                            <div class="wsus_header_icon">
                                <p> <i class="far fa-bars"></i> {{ __('user.All Categories') }}</p>
                            </div>
                            <span><i class="fas fa-caret-down"></i></span>
                        </div>
                        <div class="dropdown_menu">
                            {{-- wsus_menu_cat_item show_home toggle_menu --}}
                             @include('website.partials.menu-item')
                        </div>
                    </div>
                </div>
                <div class="col-9 col-sm-9 col-md-9 col-lg-10">
                    <div class="wsus_header_menu relative_contect d-flex justify-content-between">
                        <ul class="wsus__menu_item">
                            <li><a href="{{ route('product') }}">{{ __('user.Shop') }}</a></li>
                            <li><a href="{{ route('brand') }}">{{ __('Brands') }}</a></li>
                            <li><a href="">{{ __('Gift Corner') }}</a></li>
                            <li><a href="">{{ __('Wholesale') }}</a></li>
                            <li><a href="">{{ __('Pre-Order') }}</a></li>
                            <li><a href="">{{ __('Campaign') }}</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>    
</header>

