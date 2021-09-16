<?php

namespace App\Models;

use BeyondCode\Vouchers\Traits\CanRedeemVouchers;
use Digikraaft\ReviewRating\Traits\HasReviewRating;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Customer extends  Authenticatable
{
    use HasFactory,CanRedeemVouchers,Notifiable,HasApiTokens;

    protected $fillable = [
        'firstname',
        'lastname',
        'email',
        'password',
        'mobile',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    function getFullnameAttribute(){
        return "{$this->firstname}, {$this->lastname}";
    }

    public function bookings(){
        return $this->hasMany(Booking::class);
    }
}
