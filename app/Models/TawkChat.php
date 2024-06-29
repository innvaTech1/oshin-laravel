<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TawkChat extends Model
{
    use HasFactory;

    protected $casts = [
        'status' => 'integer'
    ];
}
