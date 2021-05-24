<div class="d-flex align-items-center mb-10">
    <!--begin::Symbol-->
    <div class="symbol symbol-60 symbol-2by3 flex-shrink-0 mr-4">
        <div class="symbol-label" style="background-image: url('{{asset('')}}media/users/default.jpg')"></div>
    </div>
    <!--end::Symbol-->

    <!--begin::Section-->
    <div class="d-flex flex-column flex-grow-1">
        <!--begin::Title-->
        <span class="font-weight-bolder font-size-lg text-primary mb-1">{{$customer->fullname}}</span>
        <!--end::Title-->

        <!--begin::Desc-->
        <span class="text-dark-50 font-weight-normal font-size-sm text-justify">
                    {{$review->review}}
         </span>

        <span class="text-muted">{{$review->created_at->diffForHumans()}}</span>
        <!--begin::Desc-->
    </div>
    <!--end::Section-->
</div>
