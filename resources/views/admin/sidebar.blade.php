@php
    $setting = App\Models\Setting::first();
@endphp

<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="{{ route('admin.dashboard') }}">{{ $setting->sidebar_lg_header }}</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="{{ route('admin.dashboard') }}">{{ $setting->sidebar_sm_header }}</a>
        </div>
        <ul class="sidebar-menu">
            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li class="{{ Route::is('admin.dashboard') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin.dashboard') }}"><i class="fas fa-home"></i>
                        <span>{{ __('Dashboard') }}</span></a></li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.all-order') || Route::is('admin.order-show') || Route::is('admin.pending-order') || Route::is('admin.pregress-order') || Route::is('admin.delivered-order') || Route::is('admin.completed-order') || Route::is('admin.declined-order') || Route::is('admin.cash-on-delivery') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-shopping-cart"></i><span>{{ __('Orders') }}</span></a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.all-order') || Route::is('admin.order-show') ? 'active' : '' }}">
                            <a class="nav-link" href="{{ route('admin.all-order') }}">{{ __('All Orders') }}</a>
                        </li>
                        <li class="{{ Route::is('admin.pending-order') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.pending-order') }}">{{ __('Pending Orders') }}</a></li>
                        <li class="{{ Route::is('admin.pregress-order') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.pregress-order') }}">{{ __('Progress Orders') }}</a></li>
                        <li class="{{ Route::is('admin.delivered-order') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.delivered-order') }}">{{ __('Delivered Orders') }}</a></li>
                        <li class="{{ Route::is('admin.completed-order') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.completed-order') }}">{{ __('Completed Orders') }}</a></li>
                        <li class="{{ Route::is('admin.declined-order') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.declined-order') }}">{{ __('Declined Orders') }}</a></li>
                        <li class="{{ Route::is('admin.cash-on-delivery') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.cash-on-delivery') }}">{{ __('Cash On Delivery') }}</a></li>
                    </ul>
                </li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.product-category.*') || Route::is('admin.product-sub-category.*') || Route::is('admin.product-child-category.*') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-th-large"></i><span>{{ __('Manage Categories') }}</span></a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.product-category.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.product-category.index') }}">{{ __('Categories') }}</a></li>

                        <li class="{{ Route::is('admin.product-sub-category.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.product-sub-category.index') }}">{{ __('Sub Categories') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.product-child-category.*') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.product-child-category.index') }}">{{ __('Child Categories') }}</a>
                        </li>
                    </ul>
                </li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.product.*') || Route::is('admin.product-brand.*') || Route::is('admin.product-variant') || Route::is('admin.create-product-variant') || Route::is('admin.edit-product-variant') || Route::is('admin.product-gallery') || Route::is('admin.product-variant-item') || Route::is('admin.create-product-variant-item') || Route::is('admin.edit-product-variant-item') || Route::is('admin.product-review') || Route::is('admin.show-product-review') || Route::is('admin.seller-product') || Route::is('admin.seller-pending-product') || Route::is('admin.wholesale') || Route::is('admin.create-wholesale') || Route::is('admin.edit-wholesale') || Route::is('admin.product-highlight') || Route::is('admin.product-report') || Route::is('admin.show-product-report') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-th-large"></i><span>{{ __('Manage Products') }}</span></a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.product-brand.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.product-brand.index') }}">{{ __('Brands') }}</a></li>

                        <li><a class="nav-link"
                                href="{{ route('admin.product-import-page') }}">{{ __('Product Bulk Import') }}</a>
                        </li>
                        <li><a class="nav-link"
                                href="{{ route('admin.product.create') }}">{{ __('Create Product') }}</a>
                        </li>

                        <li
                            class="{{ Route::is('admin.product.*') || Route::is('admin.product-variant') || Route::is('admin.create-product-variant') || Route::is('admin.edit-product-variant') || Route::is('admin.product-gallery') || Route::is('admin.product-variant-item') || Route::is('admin.create-product-variant-item') || Route::is('admin.edit-product-variant-item') || Route::is('admin.wholesale') || Route::is('admin.create-wholesale') || Route::is('admin.edit-wholesale') || Route::is('admin.product-highlight') ? 'active' : '' }}">
                            <a class="nav-link" href="{{ route('admin.product.index') }}">{{ __('Products') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.stockout-product') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.stockout-product') }}">{{ __('Stock out') }}</a></li>
                        <li class="{{ Route::is('admin.seller-product') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.seller-product') }}">{{ __('Seller Products') }}</a></li>
                        <li
                            class="{{ Route::is('admin.product-review') || Route::is('admin.show-product-review') ? 'active' : '' }}">
                            <a class="nav-link"
                                href="{{ route('admin.product-review') }}">{{ __('Product Reviews') }}</a>
                        </li>

                        <li
                            class="{{ Route::is('admin.product-report') || Route::is('admin.show-product-report') ? 'active' : '' }}">
                            <a class="nav-link"
                                href="{{ route('admin.product-report') }}">{{ __('Product Report') }}</a>
                        </li>
                    </ul>
                </li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li class="{{ Route::is('admin.inventory') || Route::is('admin.stock-history') ? 'active' : '' }}"><a
                        class="nav-link" href="{{ route('admin.inventory') }}"><i class="fas fa-th-large"></i>
                        <span>{{ __('Inventory') }}</span></a></li>
            @endif

            {{-- <li
                class="nav-item dropdown {{ Route::is('admin.pos.index') || Route::is('admin.pos.bulk.order') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown">
                    <div class="icon">
                        <i class="fas fa-th-large"></i>
                    </div>
                    <span>{{ __('Pos') }}</span>
                </a>
                <ul class="dropdown-menu">

                    <li class="{{ Route::is('admin.pos.index') ? 'active' : '' }}"><a class="nav-link"
                            href="{{ route('admin.pos.index') }}">{{ __('Add New Order') }}</a></li>

                    <li class="{{ Route::is('admin.pos.bulk.order') ? 'active' : '' }}"><a class="nav-link"
                            href="{{ route('admin.pos.bulk.order') }}">{{ __('Bulk Order Accept') }}</a></li>
                </ul>

            </li> --}}

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.state.*') || Route::is('admin.city.*') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-map-marker-alt"></i><span>{{ __('Locations') }}</span></a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.state.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.state.index') }}">{{ __('State') }}</a></li>
                        <li class="{{ Route::is('admin.city.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.city.index') }}">{{ __('City') }}</a></li>
                    </ul>
                </li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.product-tax.*') || Route::is('admin.return-policy.*') || Route::is('admin.specification-key.*') || Route::is('admin.campaign.*') || Route::is('admin.campaign-product') || Route::is('admin.currency.*') || Route::is('admin.shipping.*') || Route::is('admin.coupon.*') || Route::is('admin.payment-method') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-shopping-cart"></i><span>{{ __('Ecommerce') }}</span></a>
                    <ul class="dropdown-menu">
                        <li
                            class="{{ Route::is('admin.campaign.*') || Route::is('admin.campaign-product') ? 'active' : '' }}">
                            <a class="nav-link" href="{{ route('admin.campaign.index') }}">{{ __('Campaign') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.coupon.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.coupon.index') }}">{{ __('Coupon') }}</a></li>

                        <li class="{{ Route::is('admin.product-tax.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.product-tax.index') }}">{{ __('Tax') }}</a></li>

                        <li class="{{ Route::is('admin.return-policy.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.return-policy.index') }}">{{ __('Return Policy') }}</a></li>

                        <li class="{{ Route::is('admin.specification-key.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.specification-key.index') }}">{{ __('Specification Key') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.shipping.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.shipping.index') }}">{{ __('Shipping') }}</a></li>
                        <li class="{{ Route::is('admin.payment-method') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.payment-method') }}">{{ __('Payment Method') }}</a></li>
                    </ul>
                </li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li class="{{ Route::is('admin.advertisement') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin.advertisement') }}"><i class="fas fa-ad"></i>
                        <span>{{ __('Advertisement') }}</span></a></li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.withdraw-method.*') || Route::is('admin.seller-withdraw') || Route::is('admin.pending-seller-withdraw') || Route::is('admin.show-seller-withdraw') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="far fa-newspaper"></i><span>{{ __('Withdraw Payment') }}</span></a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.withdraw-method.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.withdraw-method.index') }}">{{ __('Withdraw Method') }}</a>
                        </li>

                        <li
                            class="{{ Route::is('admin.seller-withdraw') || Route::is('admin.show-seller-withdraw') ? 'active' : '' }}">
                            <a class="nav-link"
                                href="{{ route('admin.seller-withdraw') }}">{{ __('Seller Withdraw') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.pending-seller-withdraw') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.pending-seller-withdraw') }}">{{ __('Pending Seller Withdraw') }}</a>
                        </li>
                    </ul>
                </li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.customer-list') || Route::is('admin.customer-show') || Route::is('admin.pending-customer-list') || Route::is('admin.seller-list') || Route::is('admin.seller-show') || Route::is('admin.pending-seller-list') || Route::is('admin.seller-shop-detail') || Route::is('admin.seller-reviews') || Route::is('admin.show-seller-review-details') || Route::is('admin.send-email-to-seller') || Route::is('admin.email-history') || Route::is('admin.product-by-seller') || Route::is('admin.send-email-to-all-seller') || Route::is('admin.send-email-to-all-customer') || Route::is('admin.seller-create') || Route::is('admin.deleted-user-list') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-user"></i><span>{{ __('Users') }}</span></a>
                    <ul class="dropdown-menu">
                        <li
                            class="{{ Route::is('admin.customer-list') || Route::is('admin.customer-show') || Route::is('admin.send-email-to-all-customer') ? 'active' : '' }}">
                            <a class="nav-link"
                                href="{{ route('admin.customer-list') }}">{{ __('Customer List') }}</a>
                        </li>
                        <li class="{{ Route::is('admin.deleted-user-list') ? 'active' : '' }}">
                            <a class="nav-link"
                                href="{{ route('admin.deleted-user-list') }}">{{ __('Deleted User') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.pending-customer-list') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.pending-customer-list') }}">{{ __('Pending Customers') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.seller-create') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.seller-create') }}">{{ __('Create Seller') }}</a></li>

                        <li
                            class="{{ Route::is('admin.seller-list') || Route::is('admin.seller-show') || Route::is('admin.seller-shop-detail') || Route::is('admin.seller-reviews') || Route::is('admin.show-seller-review-details') || Route::is('admin.send-email-to-seller') || Route::is('admin.email-history') || Route::is('admin.product-by-seller') || Route::is('admin.send-email-to-all-seller') ? 'active' : '' }}">
                            <a class="nav-link"
                                href="{{ route('admin.seller-list') }}">{{ __('Seller List') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.pending-seller-list') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.pending-seller-list') }}">{{ __('Pending Sellers') }}</a>
                        </li>

                    </ul>
                </li>
            @endif


            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.service.*') || Route::is('admin.maintainance-mode') || Route::is('admin.announcement') || Route::is('admin.mega-menu-category.*') || Route::is('admin.mega-menu-sub-category') || Route::is('admin.create-mega-menu-sub-category') || Route::is('admin.edit-mega-menu-sub-category') || Route::is('admin.mega-menu-banner') || Route::is('admin.slider.*') || Route::is('admin.home-page') || Route::is('admin.banner-image.index') || Route::is('admin.topbar-contact') || Route::is('admin.homepage-one-visibility') || Route::is('admin.cart-bottom-banner') || Route::is('admin.shop-page') || Route::is('admin.seo-setup') || Route::is('admin.menu-visibility') || Route::is('admin.product-detail-page') || Route::is('admin.default-avatar') || Route::is('admin.seller-conditions') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-globe"></i><span>{{ __('Manage Website') }}</span></a>

                    <ul class="dropdown-menu">

                        <li class="{{ Route::is('admin.seo-setup') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.seo-setup') }}">{{ __('SEO Setup') }}</a></li>

                        <li class="{{ Route::is('admin.topbar-contact') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.topbar-contact') }}">{{ __('Topbar Contact') }}</a></li>

                        <li class="{{ Route::is('admin.slider.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.slider.index') }}">{{ __('Slider') }}</a></li>

                        <li class="{{ Route::is('admin.home-page') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.home-page') }}">{{ __('Home Page') }}</a></li>

                        <li class="{{ Route::is('admin.homepage-one-visibility') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.homepage-one-visibility') }}">{{ __('Home Page Visibility') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.menu-visibility') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.menu-visibility') }}">{{ __('Menu Visibility') }}</a></li>

                        <li class="{{ Route::is('admin.shop-page') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.shop-page') }}">{{ __('Shop Page') }}</a></li>

                        <li class="{{ Route::is('admin.service.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.service.index') }}">{{ __('Service') }}</a></li>

                        <li class="{{ Route::is('admin.seller-conditions') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.seller-conditions') }}">{{ __('Seller Conditions') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.product-detail-page') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.product-detail-page') }}">{{ __('Product Detail Page') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.maintainance-mode') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.maintainance-mode') }}">{{ __('Maintainance Mode') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.announcement') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.announcement') }}">{{ __('Announcement') }}</a></li>
                        <li
                            class="{{ Route::is('admin.mega-menu-category.*') || Route::is('admin.mega-menu-sub-category') || Route::is('admin.create-mega-menu-sub-category') || Route::is('admin.edit-mega-menu-sub-category') || Route::is('admin.mega-menu-banner') ? 'active' : '' }}">
                            <a class="nav-link"
                                href="{{ route('admin.mega-menu-category.index') }}">{{ __('Mega Menu') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.banner-image.index') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.banner-image.index') }}">{{ __('Banner Image') }}</a></li>

                        <li class="{{ Route::is('admin.default-avatar') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.default-avatar') }}">{{ __('Default Avatar') }}</a></li>
                    </ul>
                </li>
            @endif


            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.footer.*') || Route::is('admin.social-link.*') || Route::is('admin.footer-link.*') || Route::is('admin.second-col-footer-link') || Route::is('admin.third-col-footer-link') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-th-large"></i><span>{{ __('Website Footer') }}</span></a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.footer.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.footer.index') }}">{{ __('Footer') }}</a></li>

                        <li class="{{ Route::is('admin.social-link.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.social-link.index') }}">{{ __('Social Link') }}</a></li>

                        <li class="{{ Route::is('admin.footer-link.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.footer-link.index') }}">{{ __('First Column Link') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.second-col-footer-link') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.second-col-footer-link') }}">{{ __('Second Column Link') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.third-col-footer-link') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.third-col-footer-link') }}">{{ __('Third Column Link') }}</a>
                        </li>
                    </ul>
                </li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.about-us.*') || Route::is('admin.custom-page.*') || Route::is('admin.terms-and-condition.*') || Route::is('admin.privacy-policy.*') || Route::is('admin.faq.*') || Route::is('admin.error-page.*') || Route::is('admin.contact-us.*') || Route::is('admin.login-page') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-columns"></i><span>{{ __('Pages') }}</span></a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.about-us.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.about-us.index') }}">{{ __('About Us') }}</a></li>

                        <li class="{{ Route::is('admin.contact-us.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.contact-us.index') }}">{{ __('Contact Us') }}</a></li>

                        <li class="{{ Route::is('admin.custom-page.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.custom-page.index') }}">{{ __('Custom Page') }}</a></li>

                        <li class="{{ Route::is('admin.terms-and-condition.*') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.terms-and-condition.index') }}">{{ __('Terms And Conditions') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.privacy-policy.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.privacy-policy.index') }}">{{ __('Privacy Policy') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.faq.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.faq.index') }}">{{ __('FAQ') }}</a></li>

                        <li class="{{ Route::is('admin.error-page.*') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.error-page.index') }}">{{ __('Error Page') }}</a></li>

                        <li class="{{ Route::is('admin.login-page') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.login-page') }}">{{ __('Login Page') }}</a></li>
                    </ul>
                </li>
            @endif


            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.admin-language') || Route::is('admin.admin-validation-language') || Route::is('admin.website-language') || Route::is('admin.website-validation-language') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i
                            class="fas fa-th-large"></i><span>{{ __('Language') }}</span></a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.admin-language') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.admin-language') }}">{{ __('Admin Language') }}</a></li>

                        <li class="{{ Route::is('admin.admin-validation-language') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.admin-validation-language') }}">{{ __('Admin Validation') }}</a>
                        </li>

                        <li class="{{ Route::is('admin.website-language') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin.website-language') }}">{{ __('Frontend Language') }}</a>
                        </li>
                        <li class="{{ Route::is('admin.website-validation-language') ? 'active' : '' }}"><a
                                class="nav-link"
                                href="{{ route('admin.website-validation-language') }}">{{ __('Frontend Validation') }}</a>
                        </li>
                    </ul>
                </li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li class="{{ Route::is('admin.general-setting') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin.general-setting') }}"><i class="fas fa-cog"></i>
                        <span>{{ __('Setting') }}</span></a></li>
            @endif

            @php
                $logedInAdmin = Auth::guard('admin')->user();
            @endphp

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li class="{{ Route::is('admin.subscriber') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin.subscriber') }}"><i class="fas fa-fire"></i>
                        <span>{{ __('Subscribers') }}</span></a></li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li class="{{ Route::is('admin.contact-message') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin.contact-message') }}"><i class="fas fa-fa fa-envelope"></i>
                        <span>{{ __('Contact Message') }}</span></a></li>
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                @if ($logedInAdmin->admin_type == 1)
                    <li class="{{ Route::is('admin.admin.index') ? 'active' : '' }}"><a class="nav-link"
                            href="{{ route('admin.admin.index') }}"><i class="fas fa-user"></i>
                            <span>{{ __('Admin list') }}</span></a></li>
                @endif
            @endif

            @if (auth()->guard('admin')->user() &&
                    (auth()->guard('admin')->user()->hasRole('dev') ||
                        auth()->guard('admin')->user()->hasRole('admin') ||
                        auth()->guard('admin')->user()->hasRole('super admin')))
                <li
                    class="nav-item dropdown {{ Route::is('admin.role.*') || Route::is('admin.permission.*') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown">
                        <i class="fas fa-user-shield"></i><span>{{ __('Role & Permissions') }}</span>
                    </a>

                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin.role.*') ? 'active' : '' }}">
                            <a class="nav-link" href="{{ route('admin.role.index') }}">{{ __('Roles') }}</a>
                        </li>
                        <li class="{{ Route::is('admin.permission.*') ? 'active' : '' }}">
                            <a class="nav-link"
                                href="{{ route('admin.permission.index') }}">{{ __('Permissions') }}</a>
                        </li>
                    </ul>
                </li>
            @endif
        </ul>

    </aside>
</div>
