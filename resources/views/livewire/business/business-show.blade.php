<div class="card card-custom gutter-b">
    <div class="card-body">
        <div class="d-flex">
            <!--begin: Pic-->
            <div class="flex-shrink-0 mr-7 mt-lg-0 mt-3">
                <div class="symbol symbol-50 symbol-lg-120">
                    <img alt="Pic" src="{{asset('')}}/media/project-logos/3.png"/>
                </div>

                <div class="symbol symbol-50 symbol-lg-120 symbol-primary d-none">
                    <span class="font-size-h3 symbol-label font-weight-boldest">JM</span>
                </div>
            </div>
            <!--end: Pic-->

            <!--begin: Info-->
            <div class="flex-grow-1">
                <!--begin: Title-->
                <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div class="mr-3">
                        <!--begin::Name-->
                        <a href="#"
                           class="d-flex align-items-center text-dark text-hover-primary font-size-h5 font-weight-bold mr-3">
                            {{$business->name}} <i
                                class="flaticon2-correct text-primary icon-md ml-2"></i>
                        </a>
                        <!--end::Name-->

                        <!--begin::Contacts-->
                        <div class="d-flex flex-wrap my-2">
                            <a href="#"
                               class="text-muted text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                <span class="svg-icon svg-icon-md svg-icon-gray-500 mr-1"><!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Mail-notification.svg--><svg
                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                        width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path
            d="M21,12.0829584 C20.6747915,12.0283988 20.3407122,12 20,12 C16.6862915,12 14,14.6862915 14,18 C14,18.3407122 14.0283988,18.6747915 14.0829584,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,8 C3,6.8954305 3.8954305,6 5,6 L19,6 C20.1045695,6 21,6.8954305 21,8 L21,12.0829584 Z M18.1444251,7.83964668 L12,11.1481833 L5.85557487,7.83964668 C5.4908718,7.6432681 5.03602525,7.77972206 4.83964668,8.14442513 C4.6432681,8.5091282 4.77972206,8.96397475 5.14442513,9.16035332 L11.6444251,12.6603533 C11.8664074,12.7798822 12.1335926,12.7798822 12.3555749,12.6603533 L18.8555749,9.16035332 C19.2202779,8.96397475 19.3567319,8.5091282 19.1603533,8.14442513 C18.9639747,7.77972206 18.5091282,7.6432681 18.1444251,7.83964668 Z"
            fill="#000000"/>
        <circle fill="#000000" opacity="0.3" cx="19.5" cy="17.5" r="2.5"/>
    </g>
</svg><!--end::Svg Icon--></span> {{$business->email}}
                            </a>
                            <a href="#"
                               class="text-muted text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                <span class="svg-icon svg-icon-md svg-icon-gray-500 mr-1"><!--begin::Svg Icon | path:assets/media/svg/icons/General/Lock.svg--><svg
                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                        width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <mask fill="white">
            <use xlink:href="#path-1"/>
        </mask>
        <g/>
        <path
            d="M7,10 L7,8 C7,5.23857625 9.23857625,3 12,3 C14.7614237,3 17,5.23857625 17,8 L17,10 L18,10 C19.1045695,10 20,10.8954305 20,12 L20,18 C20,19.1045695 19.1045695,20 18,20 L6,20 C4.8954305,20 4,19.1045695 4,18 L4,12 C4,10.8954305 4.8954305,10 6,10 L7,10 Z M12,5 C10.3431458,5 9,6.34314575 9,8 L9,10 L15,10 L15,8 C15,6.34314575 13.6568542,5 12,5 Z"
            fill="#000000"/>
    </g>
</svg><!--end::Svg Icon--></span> {{$business->category->name}}
                            </a>
                            <a href="#" class="text-muted text-hover-primary font-weight-bold">
                                <span class="svg-icon svg-icon-md svg-icon-gray-500 mr-1"><!--begin::Svg Icon | path:assets/media/svg/icons/Map/Marker2.svg--><svg
                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                        width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path
            d="M9.82829464,16.6565893 C7.02541569,15.7427556 5,13.1079084 5,10 C5,6.13400675 8.13400675,3 12,3 C15.8659932,3 19,6.13400675 19,10 C19,13.1079084 16.9745843,15.7427556 14.1717054,16.6565893 L12,21 L9.82829464,16.6565893 Z M12,12 C13.1045695,12 14,11.1045695 14,10 C14,8.8954305 13.1045695,8 12,8 C10.8954305,8 10,8.8954305 10,10 C10,11.1045695 10.8954305,12 12,12 Z"
            fill="#000000"/>
    </g>
</svg><!--end::Svg Icon--></span> {{$business->city->name}}
                            </a>
                        </div>
                        <!--end::Contacts-->
                    </div>
                    <div class="my-lg-0 my-1">
                        <a href="#"
                           class="btn btn-sm btn-primary font-weight-bolder text-uppercase mr-3">Edit</a>
                        @if($business->status == 'active')
                            <button class="btn btn-sm btn-danger font-weight-bolder text-uppercase mr-3">De-activate
                            </button>
                        @else
                            <button class="btn btn-sm btn-success font-weight-bolder text-uppercase mr-3">Activate
                            </button>
                        @endif
                    </div>
                </div>
                <!--end: Title-->

                <!--begin: Content-->
                <div class="d-flex align-items-center flex-wrap justify-content-between">
                    <div class="flex-grow-1 font-weight-bold text-dark-50 py-5 py-lg-2 mr-5">
                        {{$business->address}}<br>
                        {{$business->city->name}}
                    </div>


                </div>
                <!--end: Content-->
            </div>
            <!--end: Info-->
        </div>

    {{--        <div class="separator separator-solid my-7"></div>--}}

    {{--        <!--begin: Items-->--}}
    {{--        <div class="d-flex align-items-center flex-wrap">--}}
    {{--            <!--begin: Item-->--}}
    {{--            <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">--}}
    {{--                <span class="mr-4">--}}
    {{--                    <i class="flaticon-piggy-bank icon-2x text-muted font-weight-bold"></i>--}}
    {{--                </span>--}}
    {{--                <div class="d-flex flex-column text-dark-75">--}}
    {{--                    <span class="font-weight-bolder font-size-sm">Earnings</span>--}}
    {{--                    <span class="font-weight-bolder font-size-h5"><span--}}
    {{--                            class="text-dark-50 font-weight-bold">$</span>249,500</span>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--            <!--end: Item-->--}}

    {{--            <!--begin: Item-->--}}
    {{--            <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">--}}
    {{--                <span class="mr-4">--}}
    {{--                    <i class="flaticon-confetti icon-2x text-muted font-weight-bold"></i>--}}
    {{--                </span>--}}
    {{--                <div class="d-flex flex-column text-dark-75">--}}
    {{--                    <span class="font-weight-bolder font-size-sm">Expenses</span>--}}
    {{--                    <span class="font-weight-bolder font-size-h5"><span--}}
    {{--                            class="text-dark-50 font-weight-bold">$</span>164,700</span>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--            <!--end: Item-->--}}

    {{--            <!--begin: Item-->--}}
    {{--            <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">--}}
    {{--                <span class="mr-4">--}}
    {{--                    <i class="flaticon-pie-chart icon-2x text-muted font-weight-bold"></i>--}}
    {{--                </span>--}}
    {{--                <div class="d-flex flex-column text-dark-75">--}}
    {{--                    <span class="font-weight-bolder font-size-sm">Net</span>--}}
    {{--                    <span class="font-weight-bolder font-size-h5"><span--}}
    {{--                            class="text-dark-50 font-weight-bold">$</span>782,300</span>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--            <!--end: Item-->--}}

    {{--        </div>--}}
    <!--begin: Items-->
    </div>
</div>
<!--end::Card-->

<!--begin::Row-->
<div class="row">
    <div class="col-lg-3">
        <div class="card card-custom card-stretch gutter-b">


            <!--begin::Body-->
            <div class="card-body pt-8">

                <!--begin::Item-->
                <div class="d-flex align-items-center mb-10">
                    <!--begin::Symbol-->
                    <div class="symbol symbol-40 symbol-primary mr-5">
                <span class="symbol-label">
                    <span class="svg-icon svg-icon-xl svg-icon-white"><!--begin::Svg Icon | path:assets/media/svg/icons/Home/Library.svg--><svg
                            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                            height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path
            d="M5,3 L6,3 C6.55228475,3 7,3.44771525 7,4 L7,20 C7,20.5522847 6.55228475,21 6,21 L5,21 C4.44771525,21 4,20.5522847 4,20 L4,4 C4,3.44771525 4.44771525,3 5,3 Z M10,3 L11,3 C11.5522847,3 12,3.44771525 12,4 L12,20 C12,20.5522847 11.5522847,21 11,21 L10,21 C9.44771525,21 9,20.5522847 9,20 L9,4 C9,3.44771525 9.44771525,3 10,3 Z"
            fill="#000000"/>
        <rect fill="#000000" opacity="0.3"
              transform="translate(17.825568, 11.945519) rotate(-19.000000) translate(-17.825568, -11.945519) "
              x="16.3255682" y="2.94551858" width="3" height="18" rx="1"/>
    </g>
</svg><!--end::Svg Icon--></span>                </span>
                    </div>
                    <!--end::Symbol-->

                    <!--begin::Text-->
                    <div class="d-flex flex-column font-weight-bold">
                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Services</a>
                        <span class="text-muted">{{$business->services->count()}}</span>
                    </div>
                    <!--end::Text-->
                </div>
                <!--end::Item-->

                <!--begin::Item-->
                <div class="d-flex align-items-center mb-10">
                    <!--begin::Symbol-->
                    <div class="symbol symbol-40 symbol-light-warning mr-5">
                <span class="symbol-label">
                    <span class="svg-icon svg-icon-lg svg-icon-warning"><!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Write.svg--><svg
                            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                            height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path
            d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z"
            fill="#000000" fill-rule="nonzero"
            transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953) "/>
        <path
            d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z"
            fill="#000000" fill-rule="nonzero" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span>                </span>
                    </div>
                    <!--end::Symbol-->

                    <!--begin::Text-->
                    <div class="d-flex flex-column font-weight-bold">
                        <a href="#" class="text-dark-75 text-hover-primary mb-1 font-size-lg">Bookings</a>
                        <span class="text-muted">0</span>
                    </div>
                    <!--end::Text-->
                </div>
                <!--end::Item-->

                <!--begin::Item-->
                <div class="d-flex align-items-center mb-10">
                    <!--begin::Symbol-->
                    <div class="symbol symbol-40 symbol-light-success mr-5">
                <span class="symbol-label">
                    <span class="svg-icon svg-icon-lg svg-icon-success"><!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg--><svg
                            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                            height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path
            d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
            fill="#000000"/>
        <path
            d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
            fill="#000000" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span>                </span>
                    </div>
                    <!--end::Symbol-->

                    <!--begin::Text-->
                    <div class="d-flex flex-column font-weight-bold">
                        <a href="#" class="text-dark text-hover-primary mb-1 font-size-lg">Promos</a>
                        <span class="text-muted">0</span>
                    </div>
                    <!--end::Text-->
                </div>
                <!--end::Item-->

            </div>
            <!--end::Body-->
        </div>
    </div>

    <div class="col-lg-9">
        @yield('business-content')
    </div>
</div>
