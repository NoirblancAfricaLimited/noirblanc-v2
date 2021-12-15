<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BusinessResource extends JsonResource
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
            'name' => $this->name,
            'address' => $this->address,
            'city' => $this->city->name,
            'category' => $this->category->name,
            'logo' => $this->avatar->getUrl(),
            'lat' => 0,
            "lng" => 0
        ];

        //int? id;
        //  String? address;
        //  String? city;
        //  num? lat;
        //  num? lng;
        //  String? category;
        //  String? logo;
    }
}
