<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\ModelStatus\HasStatuses;

class Booking extends Model
{
    use HasFactory, HasStatuses;

    protected $fillable = [
        'description',
        'start_at',
//        'end_at',
        'service_id',
        'customer_id',
        'quantity',
        'amount'
    ];

    protected $appends = [
        'status'
    ];
    protected $dates = [
        'start_at',
        'end_at',
    ];

    public function Customer(){
        return $this->belongsTo(Customer::class);
    }

    public function service(){
        return $this->belongsTo(Service::class);
    }

}
