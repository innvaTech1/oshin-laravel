<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShippingLocation extends Model
{
    use HasFactory;

    protected $fillable = [
        'shipping_id',
        'state_id',
    ];

    public function shipping()
    {
        return $this->belongsTo(ShippingMethod::class, 'shipping_id', 'id');
    }

    public function state()
    {
        return $this->belongsTo(CountryState::class, 'state_id', 'id');
    }
}
