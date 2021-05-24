<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;


class Admin extends Authenticatable
{
    use HasFactory,Notifiable;
    protected $fillable = [
        'firstname','lastname','email','mobile','password'
    ];

    function getFullnameAttribute(){
        return "{$this->firstname}, {$this->lastname}";
    }

    function getAvatarAttribute(){
        return sprintf("%s%s",substr($this->firstname,0,1),substr($this->lastname,0,1));
    }
}
