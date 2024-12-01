<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Route;

class Product extends Model
{
    protected $fillable = [
        "name",
        "slug",
        "category_id",
        "sub_category_id",
        "child_category_id",
        "thumb_image",
        "delivery_id",
        "brand_id",
        "sku",
        "price",
        "offer_price",
        "qty",
        "weight",
        "short_description",
        "long_description",
        "is_top",
        "new_product",
        "is_best",
        "is_featured",
        "is_flash_deal",
        "status",
        "seo_title",
        "seo_description",
        "type",
        "vendor_id",
    ];

    use HasFactory;

    protected $appends = ['averageRating'];

    public static function boot()
    {
        parent::boot();

        if (Route::is('pre-order')) {
            static::addGlobalScope('preorder', function (Builder $builder) {
                $builder->where('is_pre_order', 1);
            });
        } else if (!str_contains(Route::getFacadeRoot()?->current()?->uri(), 'admin')) {
            static::addGlobalScope('preorder', function (Builder $builder) {
                $builder->where('is_pre_order', 0);
            });
        }

        if (Route::is('wholesale')) {
            static::addGlobalScope('wholesale', function (Builder $builder) {
                $builder->where('is_wholesale', 1);
            });
        } else if (!str_contains(Route::getFacadeRoot()?->current()?->uri(), 'admin')) {
            static::addGlobalScope('wholesale', function (Builder $builder) {
                $builder->where('is_wholesale', 0);
            });
        }
    }


    public function getAverageRatingAttribute()
    {
        return $this->avgReview()->avg('rating') ?: '0';
    }

    public function getShortNameAttribute()
    {
        return $this->name;
    }


    public function category()
    {
        return $this->belongsTo(Category::class)->withDefault();
    }
    public function subCategory()
    {
        return $this->belongsTo(SubCategory::class)->withDefault();
    }
    public function childCategory()
    {
        return $this->belongsTo(ChildCategory::class)->withDefault();
    }

    public function deliveryCharge()
    {
        $charge = 0;
        if ($this->category()) {
            $charge = $this->category->delivery_charge;
        }

        return (float) $charge;
    }

    public function wholesales()
    {
        return $this->hasMany(Wholesell::class)->orderBy('minimum_product', 'asc');
    }

    public function seller()
    {
        return $this->belongsTo(Vendor::class, 'vendor_id');
    }

    public function getNewImagesAttribute()
    {
        return ProductGallery::where('product_id', $this->id)->pluck('image')?->toArray();
    }

    public function getLocationAttribute()
    {
        $delivery = $this->attributes['delivery_id'];

        if ($delivery) {
            $delivery = json_decode($delivery);
            $cities = City::whereIn('id', $delivery)->with('countryState')->get();

            $result = [];
            foreach ($cities as $city) {
                $result[] = $city->countryState->name . '=' . $city->name;
            }
            return $result;
        }
        return null;
    }

    public function getVariantValAttribute()
    {
        $values = $this->variantItems()->get();
        $result = [];
        foreach ($values as $value) {
            $result[] = $value->product_variant_name . ':' . $value->name;
        }
        return $result;
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function gallery()
    {
        return $this->hasMany(ProductGallery::class);
    }

    public function specifications()
    {
        return $this->hasMany(ProductSpecification::class);
    }

    public function reviews()
    {
        return $this->hasMany(ProductReview::class);
    }

    public function getAvgReviewAttribute()
    {
        // Return the average review for the menu item
        return $this->reviews()->where('status', 1)->avg('rating');
    }
    public function totalReviews()
    {
        return $this->reviews->count();
    }


    public function variants()
    {
        return $this->hasMany(ProductVariant::class);
    }

    public function activeVariants()
    {

        return $this->hasMany(ProductVariant::class)->select(['id', 'name', 'product_id']);
    }

    public function returnPolicy()
    {
        return $this->belongsTo(ReturnPolicy::class);
    }

    public function tax()
    {
        return $this->belongsTo(ProductTax::class);
    }

    public function variantItems()
    {
        return $this->hasMany(ProductVariantItem::class);
    }


    public function activeReview()
    {
        return $this->hasMany(ProductReview::class)->where('status', 1);
    }

    public function avgReview()
    {
        return $this->hasMany(ProductReview::class)->where('status', 1);
    }


    protected $casts = [
        'vendor_id' => 'integer',
        'category_id' => 'integer',
        'sub_category_id' => 'integer',
        'child_category_id' => 'integer',
        'brand_id' => 'integer',
        'qty' => 'integer',
        'price' => 'integer',
        'offer_price' => 'integer',
        'tax_id' => 'integer',
        'is_cash_delivery' => 'integer',
        'is_return' => 'integer',
        'return_policy_id' => 'integer',
        'is_warranty' => 'integer',
        'show_homepage' => 'integer',
        'is_undefine' => 'integer',
        'is_featured' => 'integer',
        'is_wholesale' => 'integer',
        'new_product' => 'integer',
        'is_top' => 'integer',
        'is_best' => 'integer',
        'is_flash_deal' => 'integer',
        'buyone_getone' => 'integer',
        'status' => 'integer',
        'is_specification' => 'integer',
        'delivery_id' => 'array',
    ];
}
