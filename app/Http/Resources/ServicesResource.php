<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ServicesResource extends JsonResource
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
            'description' => $this->description,
            'price' => $this->price,
            'business' => new BusinessResource($this->business),
            'subCategory' => $this->sub_category->name,
            'imageUrl' => $this->getFirstMediaUrl('gallery') != ""? $this->getFirstMediaUrl('gallery') : asset('media/users/blank.png'),
            'gallery' => $this->getMedia('gallery')->map(function ($item) {
                return $item->getUrl();
            })->all()
        ];
    }
}
