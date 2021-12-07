<div class="row">
    <div class="col-12">

        <div class="text-center">
            <div class="filter-links filterable-nav mt-5">
                {{--                <select class="mobile-filter">--}}
                {{--                    <option value="">Show all</option>--}}
                {{--                    @foreach($categories as $category)--}}
                {{--                        <option value="*">Show all</option>--}}
                {{--                    @endforeach--}}
                {{--                </select>--}}
                <a href="#" class="current wow fadeInRight">All</a>

                @foreach($categories as $category)
                    {{--                <a href="#" class="wow fadeInRight" data-wow-delay=".2s" data-filter=".hair">{{$category->name}}</a>--}}
                    <a href="javascript:void();" class="wow fadeInRight" data-wow-delay=".2s">{{$category->name}}</a>
                    {{--                <a href="#" class="wow fadeInRight" data-wow-delay=".4s" data-filter=".manicure">manicure</a>--}}
                    {{--                <a href="#" class="wow fadeInRight" data-wow-delay=".6s" data-filter=".pedicure">pedicure</a>--}}
                    {{--                <a href="#" class="wow fadeInRight" data-wow-delay=".8s" data-filter=".face">face</a>--}}
                    {{--                <a href="#" class="wow fadeInRight" data-wow-delay="1s" data-filter=".makeup">makeup</a>--}}
                @endforeach

            </div>
        </div>

        <div class="filterable-items">
            @foreach($services as $service)
                <div class="gallery-item filterable-item">
                    {{--                    <a href="{{$service->getFirstMediaUrl('gallery')}}">--}}
                    <figure class="featured-image">
                        <img src="{{$service->getFirstMediaUrl('gallery')}}" class="img-fluid" height="100" alt="">
                        <figcaption>
                            <a href="{{route('service.details',$service)}}" class="gallery-title">{{$service->sub_category->name}} - {{money($service->price)}}</a>
                            <p>{{$service->business->name}}</p>
                        </figcaption>
                    </figure>
                    {{--                    </a>--}}
                </div>
            @endforeach

        </div>
    </div>
</div>
