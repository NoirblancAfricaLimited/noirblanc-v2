<?php

namespace App\Http\Livewire\Gallery;

use App\Models\Service;
use Livewire\Component;
use Livewire\WithFileUploads;

class GalleryIndex extends Component
{
    use WithFileUploads;

    public $photos;

    public Service $service;

    protected $listeners = [
        'mediaDeleted' => 'render'
    ];

    public function render()
    {
        $gallery = $this->service->getMedia('gallery');
        return view('livewire.gallery.gallery-index',compact('gallery'));
    }

    public function save()
    {
        $this->validate([
            'photos.*' => 'image|max:1024', // 1MB Max
        ]);

        foreach ($this->photos as $photo) {
            $this->service->addMedia($photo->getRealPath())->toMediaCollection('gallery');
        }

    }
}
