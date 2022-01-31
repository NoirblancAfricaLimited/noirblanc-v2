<?php

namespace App\Models;

use Bavix\Wallet\Interfaces\Customer;
use Bavix\Wallet\Interfaces\Product;
use Bavix\Wallet\Interfaces\Taxable;
use Bavix\Wallet\Traits\CanPay;
use Bavix\Wallet\Traits\HasWallet;
use BeyondCode\Vouchers\Traits\HasVouchers;
use Digikraaft\ReviewRating\Traits\HasReviewRating;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\ModelStatus\HasStatuses;

class Service extends Model implements HasMedia, Product,Taxable
{
    use HasFactory, HasStatuses, HasReviewRating, InteractsWithMedia, HasVouchers, HasWallet;

    protected static $defaultImage = '/images/default/event.png';

    protected $guarded = [];

    protected $casts = [
        'price' => 'double'
    ];

    protected $with = [
        'sub_category.category',
        'business'
    ];

    public function getNameAttribute()
    {
        return $this->sub_category->name;
    }

    public function sub_category()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function business()
    {
        return $this->belongsTo(Business::class);
    }

    public function bookings()
    {
        return $this->hasMany(Booking::class);
    }


    public function canBuy(Customer $customer, int $quantity = 1, bool $force = false): bool
    {
        return true;
    }

    public function getAmountProduct(Customer $customer)
    {
        return $this->booking->amount;
    }

    public function getMetaProduct(): ?array
    {
        return [
            'id' => $this->booking->id,
            'start_at' => $this->booking->start_at,
            'service_id' => $this->booking->service_id,
            'amount' => $this->booking->amount,
            'quantity' => $this->booking->quantity,
        ];
    }

    public function getFeePercent()
    {
        return 0.125;
    }
}
