<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\ModelStatus\HasStatuses;

class Category extends Model
{
    use HasFactory,HasStatuses;

    protected $fillable = ['name'];


}
