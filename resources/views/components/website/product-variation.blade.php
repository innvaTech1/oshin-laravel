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
            <div class="{{ $variName == 'color' ? 'wsus_pro_det_color' : 'wsus_pro__det_size' }}">
                <h5>{{ $productVariant->name }} :</h5>
                <ul>
                    @foreach ($items as $item)
                        @if ($item->is_default == 1)
                            @php
                                array_push($selected, $item->id);
                            @endphp
                        @endif
                        <li>
                            @if ($variName == 'color')
                                <a href="javascript:;" style="background:{{ strtolower($item->name) }}"
                                    data-id = "{{ $item->id }}" data-parent-variant="{{ $productVariant->id }}"
                                    class="variant {{ $item->is_default == 1 ? 'select-variant' : '' }}">
                                    <i class="far fa-check"
                                        @if ($item->is_default == 1) style="opacity:1" @endif></i>
                                </a>
                            @else
                                <a href="javascript:;" data-id = "{{ $item->id }}"
                                    class="variant {{ $item->is_default == 1 ? 'active-variant select-variant' : '' }}"
                                    data-parent-variant="{{ $productVariant->id }}">{{ $item->name }}</a>
                            @endif
                        </li>
                    @endforeach
                </ul>
            </div>
        @endif
    @endforeach
    <input type="hidden" name="items" value="{{ join(',', $selected) }}">
@endif
