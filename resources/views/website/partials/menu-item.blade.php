<ul class="wsus_menu_cat_item">
    @foreach ($productCategories as $productCategory)
        @if ($productCategory->subCategories->count() == 0)
            <li><a href="{{ route('product', ['category' => $productCategory->slug]) }}"><i
                        class="{{ $productCategory->icon }}"></i>
                    {{ $productCategory->name }}</a></li>
        @else
            <li><a class="wsus__droap_arrow" href="{{ route('product', ['category' => $productCategory->slug]) }}"><i
                        class="{{ $productCategory->icon }}"></i> {{ $productCategory->name }}
                </a>
                <ul class="wsus_menu_cat_droapdown">
                    @foreach ($productCategory->subCategories as $subCategory)
                        @if ($subCategory->childCategories->count() == 0)
                            <li><a
                                    href="{{ route('product', ['sub_category' => $subCategory->slug]) }}">{{ $subCategory->name }}</a>
                            </li>
                        @else
                            <li><a href="{{ route('product', ['sub_category' => $subCategory->slug]) }}">{{ $subCategory->name }}
                                    <i class="fas fa-angle-right"></i></a>
                                <ul class="wsus__sub_category">
                                    @foreach ($subCategory->childCategories as $childCategory)
                                        <li><a
                                                href="{{ route('product', ['child_category' => $childCategory->slug]) }}">{{ $childCategory->name }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </li>
                        @endif
                    @endforeach
                </ul>
            </li>
        @endif
    @endforeach
</ul>
