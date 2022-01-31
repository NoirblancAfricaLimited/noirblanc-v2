<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BookingResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'created_at' => $this->created_at,
            'description' => $this->description,
            'start_at' => $this->start_at,
            'amount' => $this->amount,
            'quantity' => $this->quantity,
            'service' => new ServiceResource($this->service),
            'status' => $this->status
        ];
    }
}
