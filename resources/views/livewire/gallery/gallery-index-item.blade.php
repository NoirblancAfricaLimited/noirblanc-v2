<div class="col-lg-3">
    <a href="{{$media->getUrl()}}" data-toggle="lightbox"
       data-gallery="example-gallery">
        <img src="{{$media->getUrl()}}" class="img-fluid img-thumbnail m-2">
    </a>
    <button class="btn btn-transparent-danger font-weight-bold m-2" wire:click="remove" wire:loading.attr="disable" wire:loading.class="spinner spinner-white spinner-right">delete</button>

</div>
