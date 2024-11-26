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
        if (!trim($row[1])) {
            return null;
        }
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


        // category
        $category = Category::where('name', trim($row[3]))->first();





        if (!$category) {
            $category = Category::create([
                'name' => trim($row[3]),
                'slug' => Str::slug(trim($row[3])),
                'status' => 1
            ]);
        }
        $data['category_id'] = $category->id;


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

        if (trim($row[6])) {
            $data['thumb_image'] = trim($row[6]);
        }


        // location

        if (trim($row[13])) {
            $dataString = trim($row[13]); // Extract the data from $row[13]

            // Step 1: Remove the square brackets if necessary
            $dataString = trim($dataString, '[]');

            // Step 2: Separate by commas
            $pairs = explode(',', $dataString);

            // Step 3: Separate each pair into key and value
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

                $data['delivery_id'] = [];

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
                    $data['delivery_id'][] = $city->id;
                }
            }
        }


        // brand

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

        // sku


        if (trim($row[15])) {
            $data['sku'] = trim($row[15]);
        } else {
            $data['sku'] = mt_rand(10000000, 99999999);
        }

        // price
        if (trim($row[16])) {
            $data['price'] = trim($row[16]);
        }


        // offer price
        if (trim($row[17])) {
            $data['offer_price'] = trim($row[17]);
        }

        // stock quantity
        if (trim($row[18])) {
            $data['qty'] = trim($row[18]);
        }

        // weight
        if (trim($row[19])) {
            $data['weight'] = trim($row[19]);
        }


        // short description
        if (trim($row[20])) {
            $data['short_description'] = trim($row[20]);
        }


        // long description
        if (trim($row[21])) {
            $data['long_description'] = trim($row[21]);
        }


        // highlights

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
        if (trim($row[25])) {
            $data['is_partial'] = $row[25];
        }


        // status
        if (trim($row[26])) {
            $data['status'] = trim($row[26]);
        }

        // seo title

        if (trim($row[27])) {
            $data['seo_title'] = trim($row[27]);
        }



        // seo description

        if (trim($row[28])) {
            $data['seo_description'] = trim($row[28]);
        }

        if (trim($row[29])) {
            $data['type'] = trim($row[29]);
        }


        if (auth('admin')->check()) {
            $data['vendor_id'] = 0;
        } else {
            $data['vendor_id'] = auth('web')->user()->id;
            $data['status'] = 0;
        }


        $product = Product::create($data);



        // multiple images

        if (trim($row[7])) {
            $dataString = trim($row[7]);

            // Step 1: Remove the square brackets
            $dataString = trim($dataString, '[]');

            // Step 2: Split the string by commas
            $images = explode(',', $dataString);

            // Step 3: Trim each item to remove any extra spaces
            $images = array_map('trim', $images);

            // Output or process the data

            foreach ($images as $image) {

                $gallery = new ProductGallery();
                $gallery->product_id = $product->id;
                $gallery->image = $image;
                $gallery->save();
            }
        }



        // product Variant
        if (trim($row[8])) {
            $dataString = trim($row[8]); // Extract the data from $row[13]


            // Step 1: Remove the square brackets
            $dataString = trim($dataString, '[]');

            // Step 2: Split the string by commas
            $pairs = explode(',', $dataString);


            // Step 3: Process each pair into key-value structure
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
