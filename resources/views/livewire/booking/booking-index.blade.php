<div class="row">
    <div class="col-lg-12">
        <div class="card card-custom ">
            <!--begin::Header-->
            <div class="card-header border-0 py-5">
                <h3 class="card-title align-items-start flex-column">
                    <span class="card-label font-weight-bolder text-dark">All Businesses</span>
                    {{--                    <span class="text-muted mt-3 font-weight-bold font-size-sm">More than 400+ new members</span>--}}
                </h3>
                <div class="card-toolbar">
                    <button class="btn btn-primary font-weight-bolder font-size-sm mb-5" data-toggle="modal"
                            data-target="#booking-add">
                        Add
                    </button>
                </div>
            </div>
            <!--end::Header-->

            <!--begin::Body-->
            <div class="card-body py-0">

            {{--                <x-message/>--}}

            <!--begin::Table-->
                <div class="table-responsive">
                    <table class="table table-head-custom table-vertical-center" id="kt_advance_table_widget_4">
                        <thead>
                        <tr class="text-left">
                            <th>Customer Name</th>
                            <th>Mobile</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Appointment Date</th>
                            <th>Date Booked</th>
                            <th class="pr-0 text-right">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse($bookings as $booking)
                            <livewire:booking.booking-index-item :booking="$booking" :key="$booking->id"/>
                        @empty
                            <tr>
                                <td colspan="6">
                                    <div class="alert alert-custom alert-outline-info fade show mb-5" role="alert">
                                        <div class="alert-icon"><i class="flaticon-warning"></i></div>
                                        <div class="alert-text">You currently have no Bookings</div>
                                        <div class="alert-close">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true"><i class="ki ki-close"></i></span>
                                            </button>
                                        </div>
                                    </div>
                                    @endforelse
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--end::Table-->
            </div>
            <!--end::Body-->
        </div>
    </div>
    <div class="modal fade" id="booking-add" data-backdrop="static" tabindex="-1" role="dialog"
         aria-labelledby="staticBackdrop" aria-hidden="true" xmlns:wire="http://www.w3.org/1999/xhtml">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <livewire:booking.booking-add :service="$service"/>
        </div>
    </div>
</div>
