<?php

namespace App\Models;

use App\Enums\BusinessCategory;
use BenSampo\Enum\Traits\CastsEnums;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Mpociot\Teamwork\TeamworkTeam;
use Mpociot\Teamwork\Traits\UsedByTeams;
use Spatie\ModelStatus\HasStatuses;

class Business extends Model
{
    use HasFactory, HasStatuses;

    protected $fillable = [
        'name',
        'address',
        'city_id',
        'latitude',
        'longitude',
        'phone',
        'email',
    ];

    public function provider()
    {
        return $this->hasOne(Provider::class);
    }

    public function getImageAttribute()
    {
        return $this->logo ? $this->logo : 'img/business_placeholder.png';
    }

    public function city()
    {
        return $this->belongsTo(City::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function services()
    {
        return $this->hasMany(Service::class);
    }
}
