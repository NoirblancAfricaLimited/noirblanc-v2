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
    use HasFactory, HasStatuses, HasReviewRating, InteractsWithMedia,HasVouchers ;

    protected $guarded = [];

    protected $with = [
        'category'
    ];

    public function getNameAttribute()
    {
        return $this->category->name;
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function business()
    {
        return $this->belongsTo(Business::class);
    }
}
