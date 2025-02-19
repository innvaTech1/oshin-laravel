<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShippingMethod extends Model
{
    use HasFactory;

    protected $casts = [
        'fee' => 'integer',
        'is_free' => 'integer',
        'status' => 'integer',
        'minimum_order	' => 'integer'
    ];

    public function locations()
    {
        return $this->hasMany(ShippingLocation::class, 'shipping_id', 'id');
    }

    public function states()
    {
        return $this->hasManyThrough(
            CountryState::class,
            ShippingLocation::class,
            'shipping_id',
            'id',
            'id',
            'state_id'
        );
    }
}
