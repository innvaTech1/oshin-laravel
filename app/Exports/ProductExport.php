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
    protected $index = 1; // Track row index

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
            "Category",
            "Sub Category",
            "Child Category",
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
            "Price",
            "Offer Price",
            "Stock Quantity",
            "Weight",
            "Short Description",
            "Long Description",
            "Highlight",
            "Product Highlight",
            "Take Pre Order",
            "Has Partial Payment",
            "Status",
            "SEO Title",
            "SEO Description",
            "Product Type",
            "Vendor ID" // Added Vendor ID
        ];
    }

    public function collection()
    {
        return $this->products ?? Product::all();
    }

    public function map($product): array
    {
        // Use optional() to avoid null relationship errors
        $category = optional($product->category)->name ?? '';
        $subCategory = optional($product->subCategory)->name ?? '';
        $childCategory = optional($product->childCategory)->name ?? '';
        $brand = optional($product->brand)->name ?? '';

        // Format location (assuming state/city relationships exist)
        if (!$product->state || !$product->city) {
            $location = '';
        } elseif ($product->state && $product->city) {
            $location = optional($product->state)->name . ', ' . optional($product->city)->name;
        }

        // Handle variants (customize based on your variant structure)
        $variants = $product->variants->pluck('name')->toArray();
        $variantColumns = array_pad($variants, 5, null); // Fill 5 columns

        // Format new images (adjust if stored as JSON/array)
        $newImages = $product->new_images ?? [];
        $formattedImages = implode(', ', (array) $newImages);

        return [
            // Sl No (index + 1)
            $this->index++,

            $product->name,
            $product->slug,
            $category, // Assuming "Slug Category" is a typo, adjust to ->slug if needed
            $subCategory,
            $childCategory,
            $product->thumb_image,
            $formattedImages,
            ...$variantColumns, // Spread variants into 5 columns
            $location,
            $brand,
            $product->sku,
            $product->price,
            $product->offer_price,
            $product->qty,
            $product->weight,
            $product->short_description,
            $product->long_description,
            $product->is_top ? 'Yes' : 'No',       // Highlight
            $product->is_featured ? 'Yes' : 'No',  // Product Highlight
            $product->is_pre_order ? 'Yes' : 'No',
            $product->is_partial ? 'Yes' : 'No',
            (string) $product->status,
            $product->seo_title,
            $product->seo_description,
            $product->type,
            (string) $product->vendor_id // Added Vendor ID
        ];
    }
}
