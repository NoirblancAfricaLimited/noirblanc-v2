<?php

namespace App\Http\Livewire\Gallery;

use Livewire\Component;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class GalleryIndexItem extends Component
{
    public Media $media;
    public function render()
    {
        return view('livewire.gallery.gallery-index-item');
    }

    public function remove(){
        $this->media->delete();
        $this->emitUp('mediaDeleted');
    }
}
