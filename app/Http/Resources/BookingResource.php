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
            'id' => $request->id,
            'title' => $request->customer->fullname,
            'description' => $request->service->sub_category->name,
            'date' => $request->start_at,
        ];
    }
}
