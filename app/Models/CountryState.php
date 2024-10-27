<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CountryState extends Model
{
    use HasFactory;


    protected $casts = [
        'status' => 'integer',
        'country_id' => 'integer'
    ];
    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    public function cities()
    {
        return $this->hasMany(City::class);
    }

    public function shipping()
    {
        return $this->hasOneThrough(
            ShippingMethod::class,
            ShippingLocation::class,
            'state_id',       // Foreign key on ShippingLocation table
            'id',             // Foreign key on ShippingMethod table
            'id',             // Local key on CountryState table
            'shipping_id'     // Local key on ShippingLocation table
        );
    }
}
