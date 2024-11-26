<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $fillable = [
        'name',
        'slug',
        'country_state_id',
        'status',
    ];
    use HasFactory;

    public function countryState()
    {
        return $this->belongsTo(CountryState::class);
    }

    protected $casts = [
        'status' => 'integer',
        'country_state_id' => 'integer'
    ];
}
