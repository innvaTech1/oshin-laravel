<ul class="wsus_mobile_menu_category">
    @foreach ($productCategories as $productCategory)
        @if ($productCategory->subCategories->count() == 0)
        
    <li><a href="{{ route('product', ['category' => $productCategory->slug]) }}" class="accordion-button collapsed" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseThreew" aria-expanded="false"
            aria-controls="flush-collapseThreew"><i
            class="{{ $productCategory->icon }}"></i>
        {{ $productCategory->name }}</a>        
    </li>
    @else
            <li><a class="accordion-button collapsed" data-bs-toggle="collapse"
                data-bs-target="#flush-collapseThreer" aria-expanded="false"
                aria-controls="flush-collapseThreer" href="{{ route('product', ['category' => $productCategory->slug]) }}"><i
                        class="{{ $productCategory->icon }}"></i> {{ $productCategory->name }}
                </a>
                <div id="flush-collapseThreer" class="accordion-collapse collapse"
            data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">
                <ul>
                    @foreach ($productCategory->subCategories as $subCategory)
                        @if ($subCategory->childCategories->count() == 0)
                            <li><a
                                    href="{{ route('product', ['sub_category' => $subCategory->slug]) }}" class="accordion-button collapsed" data-bs-toggle="collapse"
                                    data-bs-target="#flush-collapseFourw" aria-expanded="false"
                                    aria-controls="flush-collapseFourw"><i
                                    class="{{ $productCategory->icon }}"></i> {{ $subCategory->name }}</a>
                            </li>
                        @else
                            <li><a class="accordion-button collapsed" data-bs-toggle="collapse"
                                data-bs-target="#flush-collapseFour" aria-expanded="false"
                                aria-controls="flush-collapseFour" href="{{ route('product', ['sub_category' => $subCategory->slug]) }}">{{ $subCategory->name }}
                                    </a>
                                    <div id="flush-collapseFour" class="accordion-collapse collapse"
            data-bs-parent="#collapseFour">
            <div class="accordion-body">
                                <ul>
                                    @foreach ($subCategory->childCategories as $childCategory)
                                        <li><a
                                                href="{{ route('product', ['child_category' => $childCategory->slug]) }}">{{ $childCategory->name }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                            </li>
                        @endif
                    @endforeach
                </ul>
            </div>
        </div>
                
            </li>
        @endif
    @endforeach
    {{-- <li><a href="#" class="accordion-button collapsed" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseThreer" aria-expanded="false"
            aria-controls="flush-collapseThreer"><i class="fas fa-tv"></i> electronics</a>
        <div id="flush-collapseThreer" class="accordion-collapse collapse"
            data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">
                <ul>
                    <li><a href="#">Consumer Electronic</a></li>
                    <li><a href="#">Accessories & Parts</a></li>
                    <li><a href="#">other brands</a></li>
                </ul>
            </div>
        </div>
    </li>
    <li><a href="#" class="accordion-button collapsed" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseThreerrp" aria-expanded="false"
            aria-controls="flush-collapseThreerrp"><i class="fas fa-chair-office"></i>
            furnicture</a>
        <div id="flush-collapseThreerrp" class="accordion-collapse collapse"
            data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">
                <ul>
                    <li><a href="#">home</a></li>
                    <li><a href="#">office</a></li>
                    <li><a href="#">restaurent</a></li>
                </ul>
            </div>
        </div>
    </li>
    <li><a href="#" class="accordion-button collapsed" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseThreerrw" aria-expanded="false"
            aria-controls="flush-collapseThreerrw"><i class="fal fa-mobile"></i> Smart
            Phones</a>
        <div id="flush-collapseThreerrw" class="accordion-collapse collapse"
            data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">
                <ul>
                    <li><a href="#">apple</a></li>
                    <li><a href="#">xiaomi</a></li>
                    <li><a href="#">oppo</a></li>
                    <li><a href="#">samsung</a></li>
                    <li><a href="#">vivo</a></li>
                    <li><a href="#">others</a></li>
                </ul>
            </div>
        </div>
    </li>
    <li><a href="#"><i class="fas fa-home-lg-alt"></i> Home & Garden</a></li>
    <li><a href="#"><i class="far fa-camera"></i> Accessories</a></li>
    <li><a href="#"><i class="fas fa-heartbeat"></i> healthy & Beauty</a></li>
    <li><a href="#"><i class="fal fa-gift-card"></i> Gift Ideas</a></li>
    <li><a href="#"><i class="fal fa-gamepad-alt"></i> Toy & Games</a></li>
    <li><a href="#"><i class="fal fa-gem"></i> View All Categories</a></li> --}}
</ul>