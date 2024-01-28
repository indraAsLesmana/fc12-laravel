<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    use HasFactory;
    protected $table = 'address';

    protected $fillable = [
        'name',
        'full_address',
        'phone',
        'prov_id',
        'city_id',
        'district_id',
        'postal_code',
        'is_default',
        'user_id',
    ];
}
