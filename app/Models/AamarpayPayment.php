<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AamarpayPayment extends Model
{
    use HasFactory;

    protected $table = 'aamarpay_payments';
    protected $fillable = [
        'store_id',
        'mode',
        'signature_key',
        'currency_id',
        'status',
    ];
}
