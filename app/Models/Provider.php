<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Provider extends Authenticatable implements HasMedia
{
    use HasFactory, Notifiable, InteractsWithMedia;

    protected $fillable = [
        'firstname', 'lastname', 'email', 'mobile', 'password'
    ];


    public function registerMediaCollections(): void
    {
        $this
            ->addMediaCollection('nrc')
            ->singleFile();

        $this
            ->addMediaCollection('certificates')
            ->singleFile();

        $this
            ->addMediaCollection('avatar')
            ->singleFile();

        $this->addMediaConversion('thumb')
            ->width(200)
            ->height(200);
    }

    public function getNrcAttribute()
    {
        return $this->getFirstMedia('nrc');
    }

    public function getCertificatesAttribute()
    {
        return $this->getFirstMedia('certificates');
    }


    function getFullnameAttribute()
    {
        return "{$this->firstname}, {$this->lastname}";
    }

    function getAvatarAttribute()
    {
        return sprintf("%s%s", substr($this->firstname, 0, 1), substr($this->lastname, 0, 1));
    }
}
