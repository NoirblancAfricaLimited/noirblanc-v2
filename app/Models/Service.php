<?php

namespace App\Models;

use BeyondCode\Vouchers\Traits\HasVouchers;
use Digikraaft\ReviewRating\Traits\HasReviewRating;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\ModelStatus\HasStatuses;

class Service extends Model implements HasMedia
{
    use HasFactory, HasStatuses, HasReviewRating, InteractsWithMedia, HasVouchers;

    protected $guarded = [];

    protected $with = [
        'sub_category'
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
}
