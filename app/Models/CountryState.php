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

    public function shippings()
    {
        return $this->belongsToMany(ShippingMethod::class, 'shipping_locations', 'state_id', 'shipping_id');
    }
}
