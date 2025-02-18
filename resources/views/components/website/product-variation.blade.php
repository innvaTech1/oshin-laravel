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

<style>
    /* Add these CSS rules */
    .parent-variant {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        gap: 8px;
        margin-bottom: 15px;
    }

    .variant-header {
        display: flex;
        align-items: center;
        gap: 4px;
        min-width: 120px;
        /* Adjust based on your longest variant name */
    }

    .variant-colon {
        flex-shrink: 0;
    }

    .parent-variant ul {
        display: flex;
        flex-wrap: wrap;
        gap: 8px;
        margin: 0;
        padding: 0;
        list-style: none;
    }

    .parent-variant li {
        flex-shrink: 0;
    }

    .variant-item-text {
        display: inline-block;
        max-width: 150px;
        /* Adjust as needed */
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .wsus_pro_det_color ul {
        align-items: center;
    }
</style>
