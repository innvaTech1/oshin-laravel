<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BankDetails extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'account_name',
        'account_number',
        'bank_name',
        'branch_name',
        'routing_no',
        'image',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
