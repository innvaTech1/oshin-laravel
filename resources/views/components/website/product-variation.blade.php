@if ($productVariants->count() != 0)
    @php
        $selected = [];
    @endphp
    @foreach ($productVariants as $productVariant)
        @php
            $items = App\Models\ProductVariantItem::orderBy('is_default', 'desc')
                ->where([
                    'product_variant_id' => $productVariant->id,
                    'product_id' => $product->id,
                ])
                ->get();
            $variName = strtolower($productVariant->name);
        @endphp
        @if ($items->count() != 0)
            <input type="hidden" name="variants[]" value="{{ $productVariant->id }}">
            <input type="hidden" name="variantNames[]" value="{{ $productVariant->name }}">
            <input type="hidden" name="variantItems" value="">
            <input type="hidden" name="variantItemNames" value="">
            <div class="parent-variant {{ $variName == 'color' ? 'wsus_pro_det_color' : 'wsus_pro__det_size' }}">
                <!-- Modified heading container -->
                <div class="variant-header">
                    <h5>{{ $productVariant->name }}</h5>
                    <span class="variant-colon">:</span>
                </div>
                <ul>
                    @foreach ($items as $item)
                        @if ($item->is_default == 1)
                            @php
                                $selected["$productVariant->id"] = $item->id;
                            @endphp
                        @endif
                        <li>
                            @if ($variName == 'color')
                                <a href="javascript:;" style="background:{{ strtolower($item->name) }}"
                                    data-id="{{ $item->id }}" data-parent-variant="{{ $productVariant->id }}"
                                    class="variant {{ $item->is_default == 1 ? 'select-variant' : '' }}">
                                    <div class="checkmark-container">
                                        <i class="far fa-check"
                                            @if ($item->is_default == 1) style="opacity:1" @endif></i>
                                    </div>
                                </a>
                            @else
                                <a href="javascript:;" data-id="{{ $item->id }}"
                                    class="variant {{ $item->is_default == 1 ? 'active-variant select-variant' : '' }}"
                                    data-parent-variant="{{ $productVariant->id }}">
                                    <span class="variant-item-text">{{ $item->name }}</span>
                                </a>
                            @endif
                        </li>
                    @endforeach
                </ul>
            </div>
        @endif
    @endforeach
    <input type="hidden" name="items" value="{{ join(',', $selected) }}"
        data-parent-variant="{{ join(',', array_keys($selected)) }}">
@endif
