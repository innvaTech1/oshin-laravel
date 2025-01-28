<?php

namespace App\Imports;

use App\Models\Brand;
use App\Models\Product;
use App\Models\Category;
use App\Models\ChildCategory;
use App\Models\City;
use App\Models\CountryState;
use App\Models\ProductGallery;
use App\Models\ProductVariant;
use App\Models\ProductVariantItem;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class ProductImport implements ToModel, WithStartRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        // Product Name
        if (!trim($row[1])) {
            return null;
        }

        // Product Name Slug
        $findProductWithSlug = Product::where('slug', trim($row[2]))->first();

        if ($findProductWithSlug) {
            // make slug unique
            $slug = $findProductWithSlug->slug;
            $randomString = Str::random(5);
            $slug = $slug . '-' . $randomString;
        } else {
            $slug = trim($row[2]);
        }

        $data = [
            'name' => trim($row[1]),
            'slug' => $slug,
        ];

        // Category
        $category = Category::where('name', trim($row[3]))->first();

        if (!$category) {
            $category = Category::create([
                'name' => trim($row[3]),
                'slug' => Str::slug(trim($row[3])),
                'status' => 1
            ]);
        }

        $data['category_id'] = $category->id;

        // Sub Category
        if (trim($row[4])) {
            $subCategory = SubCategory::where('name', trim($row[4]))->first();

            if (!$subCategory) {
                $subCategory = SubCategory::create([
                    'name' => trim($row[4]),
                    'slug' => Str::slug(trim($row[4])),
                    'category_id' => $category->id,
                    'status' => 1
                ]);
            }
            $data['sub_category_id'] = $subCategory->id;
        }

        // Child Category
        if (trim($row[5])) {
            $childCategory = ChildCategory::where('name', trim($row[5]))->first();

            if (!$childCategory) {
                $childCategory = ChildCategory::create([
                    'name' => trim($row[5]),
                    'slug' => Str::slug(trim($row[5])),
                    'category_id' => $category->id,
                    'sub_category_id' => $subCategory->id,
                    'status' => 1
                ]);
            }
            $data['child_category_id'] = $childCategory->id;
        }

        // Thumbnail Image
        if (trim($row[6])) {
            $imagePathFromExcel = trim($row[6]);

            $data['thumb_image'] = $imagePathFromExcel;
        }

        // location
        if (trim($row[13])) {
            $dataString = trim($row[13]);

            $dataString = trim($dataString, '[]');

            $pairs = explode(',', $dataString);

            $result = [];

            foreach ($pairs as $pair) {
                list($key, $value) = explode('=', $pair);
                $result[trim($key)][] = trim($value);
            }

            foreach ($result as $key => $cities) {
                $state = CountryState::where('name', 'like', "%$key%")->first();

                if (!$state) {
                    $state = CountryState::create([
                        'name' => $key,
                        'slug' => Str::slug($key),
                        'status' => 1
                    ]);
                }

                $data['city_id'] = [];

                foreach ($cities as $city) {
                    $city = City::where('name', 'like', "%$city%")->first();

                    if (!$city) {
                        $city = City::create([
                            'name' => $city,
                            'slug' => Str::slug($city),
                            'country_state_id' => $state->id,
                            'status' => 1
                        ]);
                    }
                    $data['city_id'][] = $city->id;
                }
            }
        }

        // Brand
        if (trim($row[14])) {
            $name = trim($row[14]);
            $brand = Brand::where('name', 'like', "%$name%")->first();

            if (!$brand) {
                $brand = Brand::create([
                    'name' => $row[14],
                    'slug' => Str::slug($row[14]),
                    'status' => 1
                ]);
            }
            $data['brand_id'] = $brand->id;
        }

        // SKU
        if (trim($row[15])) {
            $data['sku'] = trim($row[15]);
        } else {
            $data['sku'] = mt_rand(10000000, 99999999);
        }

        // Price
        if (trim($row[16])) {
            $data['price'] = trim($row[16]);
        }

        // Price Offer
        if (trim($row[17])) {
            $data['offer_price'] = trim($row[17]);
        }

        // Stock Quantity
        if (trim($row[18])) {
            $data['qty'] = trim($row[18]);
        }

        // Weight
        if (trim($row[19])) {
            $data['weight'] = trim($row[19]);
        }

        // Short Description
        if (trim($row[20])) {
            $data['short_description'] = trim($row[20]);
        }

        // Long Description
        if (trim($row[21])) {
            $data['long_description'] = trim($row[21]);
        }

        // Highlight
        if (trim($row[22])) {
            $dataString = trim($row[22]); // Extract the data from $row[13]

            // Step 1: Remove the square brackets if necessary
            $dataString = trim($dataString, '[]');

            // Step 2: Split the string by commas
            $items = explode(',', $dataString);

            // Step 3: Trim each item to remove any extra spaces
            $items = array_map('trim', $items);

            // Output or process the data
            $data['is_top'] = 0;
            $data['new_product'] = 0;
            $data['is_best'] = 0;
            $data['is_featured'] = 0;
            $data['is_flash_deal'] = 0;

            foreach ($items as $item) {
                if ($item == 'Just for You') {
                    $data['is_top'] = 1;
                } elseif ($item == 'Sale Products') {
                    $data['new_product'] = 1;
                } elseif ($item == 'Best Selling Product') {
                    $data['is_best'] = 1;
                } elseif ($item == 'Featured Product') {
                    $data['is_featured'] = 1;
                } elseif ($item == 'Flash Deal') {
                    $data['is_flash_deal'] = 1;
                }
            }
        }

        // Take Pre Order
        if (trim($row[24])) {
            $data['is_pre_order'] = $row[24];
        }

        // Has Partial Payment
        if (trim($row[25])) {
            $data['is_partial'] = $row[25];
        }

        // Status
        if (trim($row[26])) {
            $data['status'] = trim($row[26]);
        }

        // SEO Title
        if (trim($row[27])) {
            $data['seo_title'] = trim($row[27]);
        }

        // SEO Description
        if (trim($row[28])) {
            $data['seo_description'] = trim($row[28]);
        }

        // Product Type
        if (trim($row[29])) {
            $data['type'] = trim($row[29]);
        }

        // Vendor ID
        if (trim($row[30])) {
            $data['vendor_id'] = trim($row[30]);
            // $data['status'] = 0;
        } else {
            $data['vendor_id'] = 0;
        }

        // if (auth('admin')->check()) {
        //     $data['vendor_id'] = 0;
        // } else {
        //     $data['vendor_id'] = auth('web')->user()?->seller->id;
        //     $data['status'] = 0;
        // }

        try {
            $product = Product::create($data);
            // \Log::info('Product created successfully', ['product_id' => $product->id]);
        } catch (\Exception $e) {
            \Log::error('Product creation failed', ['error' => $e->getMessage(), 'data' => $data]);
        }

        // Multiple Images Process
        if (trim($row[7])) {
            $dataString = trim($row[7], '[]');
            $images = explode(',', $dataString);
            $images = array_map('trim', $images);
            $images = array_filter($images);

            foreach ($images as $image) {
                $gallery = new ProductGallery();
                $gallery->product_id = $product->id;
                $gallery->image = $image;
                $gallery->save();
            }
        }

        // Product Variant 1
        if (trim($row[8])) {
            $dataString = trim($row[8]);

            $dataString = trim($dataString, '[]');

            $pairs = explode(',', $dataString);

            // Remove duplicates
            $pairs = collect($pairs)->unique()->values()->all();

            $result = [];

            foreach ($pairs as $pair) {
                list($key, $value) = explode(':', $pair);

                $variant = ProductVariant::firstOrCreate(
                    ['name' => $key, 'product_id' => $product->id],
                    ['name' => $key, 'product_id' => $product->id, 'status' => 1]
                );

                $variantItemCheck = ProductVariantItem::where([
                    'name' => $value,
                    'product_id' => $product->id,
                    'product_variant_id' => $variant->id,
                ])->first();

                if ($variantItemCheck) {
                    continue;
                }

                $variantItemDefaultCheck = ProductVariantItem::where([
                    'is_default' => 1,
                    'product_id' => $product->id,
                    'product_variant_id' => $variant->id,
                ])->exists();

                ProductVariantItem::create([
                    'product_id' => $product->id,
                    'product_variant_id' => $variant->id,
                    'name' => $value,
                    'price' => 0,
                    'status' => 1,
                    'is_default' => $variantItemDefaultCheck ? 0 : 1,
                    'product_variant_name' => $variant->name,
                ]);
            }
        }
    }

    public function startRow(): int
    {
        return 2; // Skip the first 1 rows (headers and/or other data)
    }
}
