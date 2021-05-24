<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\ModelStatus\HasStatuses;

class Booking extends Model
{
    use HasFactory, HasStatuses;

    protected $casts = [
        'start_at' => 'datetime:Y-m-d',
        'end_at' => 'datetime:Y-m-d',
    ];

}
