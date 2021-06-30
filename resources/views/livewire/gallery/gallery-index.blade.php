<div class="row">
    <div class="col-lg-12">

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form wire:submit.prevent="save">
            <input type="file" wire:model="photos" multiple/>
            <button type="submit" class="btn btn-primary mr-2" wire:target='save' wire:loading.attr="disable" wire:loading.class="spinner spinner-right spinner-white">Add Photos</button>
        </form>

{{--        <div class="separator separator-dashed mb-20"></div>--}}
    </div>

    <div class="col-lg-12">
        <div class="row mt-10">
            @foreach($gallery as $media)
                <livewire:gallery.gallery-index-item :media="$media" :key="$media->id"/>
            @endforeach
        </div>
    </div>
</div>

@push('scripts')
    <script type="text/javascript">
        $(document).on('click', '[data-toggle="lightbox"]', function (event) {
            event.preventDefault();
            $(this).ekkoLightbox();
        });
    </script>
@endpush
