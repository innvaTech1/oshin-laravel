<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

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
