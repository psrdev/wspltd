<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Loan extends Model
{
    use HasFactory;
    protected $fillable=[
        'first_name',
        'last_name',
        'email',
        'mobile_no',
        'address',
        'amount_needed',
        'business_type',
        'business_duration',
        'business_photo',
        'aadhar_front',
        'aadhar_back',
        'pan',
        'gst',
    ];

}
