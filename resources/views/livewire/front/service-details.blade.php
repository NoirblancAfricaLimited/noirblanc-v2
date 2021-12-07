<div class="row">
    <div class="col-lg-4">
        <div class="gallery-item">
            <a href="{{$service->getFirstMediaUrl('gallery')}}">
                <img src="{{$service->getFirstMediaUrl('gallery')}}" alt=""/>
            </a>
        </div>

        <div class="row">

            @foreach($service->getMedia('gallery') as $media)
                <div class="col-lg-3">
                    <div class="gallery-item">
                        <a href="{{$media->getUrl()}}">
                            <img src="{{$media->getUrl()}}" alt=""/>
                        </a>
                    </div>
                </div>
            @endforeach

        </div>
    </div>

    <div class="col-lg-8">
        <img src="{{$service->business->avatar->getUrl()}}"/>
        <h3 class="section-title"> {{$service->business->name}}</h3>
        <p class="text-muted">{{$service->sub_category->name}}</p>
        <p class="text-muted">{{money($service->price)}}</p>
        <p class="text-muted">{{$service->description}}</p>
        <a class="button large" href="{{route('service.book',$service)}}">Book Now</a>
    </div>
</div>
