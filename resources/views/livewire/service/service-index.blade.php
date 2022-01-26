<div class="card card-custom gutter-b">
    <div class="card-body">
        <div class="d-flex">
            <!--begin: Pic-->
            <div class="flex-shrink-0 mr-7 mt-lg-0 mt-3">
                <div class="symbol symbol-50 symbol-lg-120">
                    <img alt="Pic" src="{{$business->avatar->getUrl('thumb')}}"/>
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
                        <a href="{{route('business.edit',$business)}}"
                           class="btn btn-sm btn-primary font-weight-bolder text-uppercase mr-3">Edit</a>
                        @if($business->status == 'active')
                            <button class="btn btn-sm btn-danger font-weight-bolder text-uppercase mr-3" wire:click="deactivate">De-activate
                            </button>
                        @elseif($business->status == 'pending')
                            <button class="btn btn-sm btn-success font-weight-bolder text-uppercase mr-3" wire:click="verify">Verify
                            </button>
                        @elseif($business->status == 'inactive')
                            <button class="btn btn-sm btn-success font-weight-bolder text-uppercase mr-3" wire:click="activate">
                                Activate
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

        <div class="separator separator-solid my-7"></div>
        <div class="d-flex align-items-center flex-wrap">
            <!--begin: Item-->
            <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">
												<span class="mr-4">
													<i class="flaticon-piggy-bank icon-2x text-muted font-weight-bold"></i>
												</span>
                <div class="d-flex flex-column text-dark-75">
                    <span class="font-weight-bolder font-size-sm">Total Sales</span>
                    <span class="font-weight-bolder font-size-h5">{{money($total_sales)}}</span></div>
            </div>
            <!--end: Item-->
            <!--begin: Item-->
            <div class="d-flex align-items-center flex-lg-fill mr-5 my-1">
												<span class="mr-4">
													<i class="flaticon-confetti icon-2x text-muted font-weight-bold"></i>
												</span>
                <div class="d-flex flex-column text-dark-75">
                    <span class="font-weight-bolder font-size-sm">Total Bookings</span>
                    <span class="font-weight-bolder font-size-h5">{{$total_bookings ?? 0}}</span>
                </div>
            </div>

        </div>
    </div>
</div>
<!--end::Card-->

<!--begin::Row-->
<div class="row">
    <div class="col-lg-12">
        <div class="card card-custom card-stretch gutter-b">
            <!--begin::Header-->
            <div class="card-header border-0 py-5">
                <h3 class="card-title align-items-start flex-column">
                    <span class="card-label font-weight-bolder text-dark">Services</span>
                </h3>
                <div class="card-toolbar">
                    <button class="btn btn-primary font-weight-bolder font-size-sm" data-toggle="modal"
                            data-target="#exampleModalCenter">
                    <span
                        class="svg-icon svg-icon-md svg-icon-white"><!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Add-user.svg--><svg
                            xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                            height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <polygon points="0 0 24 0 24 24 0 24"/>
        <path
            d="M18,8 L16,8 C15.4477153,8 15,7.55228475 15,7 C15,6.44771525 15.4477153,6 16,6 L18,6 L18,4 C18,3.44771525 18.4477153,3 19,3 C19.5522847,3 20,3.44771525 20,4 L20,6 L22,6 C22.5522847,6 23,6.44771525 23,7 C23,7.55228475 22.5522847,8 22,8 L20,8 L20,10 C20,10.5522847 19.5522847,11 19,11 C18.4477153,11 18,10.5522847 18,10 L18,8 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z"
            fill="#000000" fill-rule="nonzero" opacity="0.3"/>
        <path
            d="M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z"
            fill="#000000" fill-rule="nonzero"/>
    </g>
                        </svg><!--end::Svg Icon--></span>Add New Service
                    </button>
                </div>
            </div>
            <!--end::Header-->

            <!--begin::Body-->
            <div class="card-body pt-0 pb-3">
                <!--begin::Table-->
                <div class="table-responsive">
                    <table class="table table-head-custom table-head-bg table-borderless table-vertical-center">
                        <thead>
                        <tr class="text-uppercase">
                            <th style="min-width: 250px" class="pl-7"><span
                                    class="text-dark-75">Name</span></th>
                            <th  style="min-width: 100px">Price</th>
                            <th style="min-width: 100px">Bookings</th>
                            <th  style="min-width: 100px">Total Sales</th>
                            <th style="min-width: 130px">status</th>
                            <th style="min-width: 120px"></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($services as $service)
                            <livewire:service.service-index-table-item :service="$service" :key="$service->id"/>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <!--end::Table-->
            </div>
            <!--end::Body-->
        </div>


        <div class="modal fade" id="exampleModalCenter" data-backdrop="static" tabindex="-1" role="dialog"
             aria-labelledby="staticBackdrop" aria-hidden="true" xmlns:wire="http://www.w3.org/1999/xhtml">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <livewire:service.service-add :business="$business"/>
            </div>
        </div>
    </div>
</div>

