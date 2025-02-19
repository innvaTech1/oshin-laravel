<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChildCategory extends Model
{
    protected $fillable = [
        'name',
        'slug',
        'category_id',
        'sub_category_id',
        'status',
    ];
    use HasFactory;

    public function subCategory()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function products()
    {
        return $this->hasMany(Product::class);
    }

    protected $casts = [
        'status' => 'integer',
        'category_id' => 'integer',
        'sub_category_id' => 'integer'
    ];
}
