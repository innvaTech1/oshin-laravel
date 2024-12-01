<?php

namespace App\Exports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class ProductExport implements FromCollection, WithHeadings, WithMapping
{
    protected $is_dummy = false;
    protected $products;

    public function __construct($is_dummy, $products = null)
    {
        $this->is_dummy = $is_dummy;
        $this->products = $products;
    }


    public function headings(): array
    {
        return [
            "Sl No",
            "Name",
            "Slug",
            "Category ",
            "Sub Category ",
            "Child Category ",
            "Thumnail Image",
            "New Image (Multiple)",
            "Product Variant 1",
            "Product Variant 2",
            "Product Variant 3",
            "Product Variant 4",
            "Product Variant 5",
            "Location",
            "Brand",
            "SKU",
            "Price ",
            "Offer Price",
            "Stock Quantity",
            "Weight",
            "Short Description",
            "Long Description",
            "Highlight",
            "Product Highlight",
            "Take Pre Order?",
            "Has Partial Payment?",
            "Status ",
            "SEO Title",
            "SEO Description",
            "Product Type",
        ];
    }


    public function collection()
    {
        // $select = [
        //     "name",
        //     "slug",
        //     "category_id",
        //     "sub_category_id",
        //     "child_category_id",
        //     "thumb_image",
        //     "delivery_id",
        //     "brand_id",
        //     "sku",
        //     "price",
        //     "offer_price",
        //     "qty",
        //     "weight",
        //     "short_description",
        //     "long_description",
        //     "is_top",
        //     "new_product",
        //     "is_best",
        //     "is_featured",
        //     "is_flash_deal",
        //     "status",
        //     "seo_title",
        //     "seo_description",
        //     "type",
        // ];

        return $this->products;
    }

    public function map($product): array
    {
        dd($product->location);

        $data['is_top'] = 0;
        $data['new_product'] = 0;
        $data['is_best'] = 0;
        $data['is_featured'] = 0;
        $data['is_flash_deal'] = 0;

        $highlights = [];
        return [
            $product->name,
            $product->slug,
            $product->category->name,
            $product->subCategory->name,
            $product->childCategory->name,
            $product->thumb_image,
            "[$product->new_images]",
            "[$product->variantVal]",
            null,
            null,
            null,
            null,
            "[$product->location]",
            $product->brand->name,
            $product->sku,
            $product->price,
            $product->offer_price,
            $product->qty,
            $product->weight,
            $product->short_description,
            $product->long_description,
            $product->is_top,
            $product->new_product,
            $product->is_best,
            $product->is_featured,
            $product->is_flash_deal,
            $product->status,
            $product->seo_title,
            $product->seo_description,
            $product->type
        ];
    }
}
