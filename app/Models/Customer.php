<?php

namespace App\Models;

use BeyondCode\Vouchers\Traits\CanRedeemVouchers;
use Digikraaft\ReviewRating\Traits\HasReviewRating;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory,CanRedeemVouchers;

    protected $fillable = [
        'firstname',
        'lastname',
        'email',
        'password',
        'mobile',
    ];

    function getFullnameAttribute(){
        return "{$this->firstname}, {$this->lastname}";
    }
}
