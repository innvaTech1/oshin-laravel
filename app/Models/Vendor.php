<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
    protected $fillable = [
        'user_id',
        'total_amount',
        'banner_image',
        'phone',
        'email',
        'shop_name',
        'open_at',
        'closed_at',
        'address',
        'seo_title',
        'seo_description',
        'status',
        'is_featured',
        'top_rated',
        'verified_token',
        'is_verified',
        'slug',
        'description',
        'greeting_msg',
    ];

    use HasFactory;

    public function socialLinks()
    {
        return $this->hasMany(VendorSocialLink::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function products()
    {
        return $this->hasMany(Product::class, 'vendor_id');
    }
}
