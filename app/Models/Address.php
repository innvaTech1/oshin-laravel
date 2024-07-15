<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;
    protected $fillable = ['state_id', 'city_id', 'address', 'type', 'name', 'phone', 'email', 'additional_info', 'user_id', 'default_address'];

    protected $append = [
        'full_address',
    ];


    public function state()
    {
        return $this->belongsTo(CountryState::class)->withDefault();
    }

    public function city()
    {
        return $this->belongsTo(City::class)->withDefault();
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
