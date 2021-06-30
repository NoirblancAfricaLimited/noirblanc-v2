<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\ModelStatus\HasStatuses;

class Category extends Model
{
    use HasFactory,HasStatuses,SoftDeletes;

    protected $fillable = ['name'];

    public function sub_categories(){
        return $this->hasMany(SubCategory::class);
    }

}
