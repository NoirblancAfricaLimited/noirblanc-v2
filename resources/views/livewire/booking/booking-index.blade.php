
<div class="row">
    <div class="col-lg-12">
        <button class="btn btn-primary font-weight-bolder font-size-sm mb-5" data-toggle="modal"
                data-target="#booking-add">
            Add
        </button>
    </div>

    <div class="col-lg-12">
        <div id="kt_calendar"></div>

    </div>
</div>

<div class="modal fade" id="booking-add" data-backdrop="static" tabindex="-1" role="dialog"
     aria-labelledby="staticBackdrop" aria-hidden="true" xmlns:wire="http://www.w3.org/1999/xhtml">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <livewire:booking.booking-add :service="$service"/>
    </div>
</div>


@push('scripts')
    <script type="text/javascript" wire:ignore>
        var bookings;
        var KTCalendarListView = function() {
            return {
                //main function to initiate the module
                init: function() {
                    var todayDate = moment().startOf('day');
                    var YM = todayDate.format('YYYY-MM');
                    var YESTERDAY = todayDate.clone().subtract(1, 'day').format('YYYY-MM-DD');
                    var TODAY = todayDate.format('YYYY-MM-DD');
                    var TOMORROW = todayDate.clone().add(1, 'day').format('YYYY-MM-DD');

                    var calendarEl = document.getElementById('kt_calendar');
                    var calendar = new FullCalendar.Calendar(calendarEl, {
                        plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],

                        isRTL: KTUtil.isRTL(),
                        header: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                        },

                        // height: 800,
                        // contentHeight: 750,
                        aspectRatio: 3,  // see: https://fullcalendar.io/docs/aspectRatio

                        views: {
                            dayGridMonth: { buttonText: 'month' },
                            timeGridWeek: { buttonText: 'week' },
                            timeGridDay: { buttonText: 'day' },
                            listDay: { buttonText: 'list' },
                            listWeek: { buttonText: 'list' }
                        },

                        defaultView: 'listWeek',
                        defaultDate: TODAY,

                        editable: false,
                        eventLimit: true, // allow "more" link when too many events
                        navLinks: true,
                        events: [
                            {
                                id: 999,
                                title: 'Repeating Event',
                                start: YM + '-09T16:00:00',
                                description: 'Lorem ipsum dolor sit ncididunt ut labore',
                                className: "fc-event-danger"
                            }
                        ],

                        eventRender: function(info) {
                            var element = $(info.el);

                            if (info.event.extendedProps && info.event.extendedProps.description) {
                                if (element.hasClass('fc-day-grid-event')) {
                                    element.data('content', info.event.extendedProps.description);
                                    element.data('placement', 'top');
                                    KTApp.initPopover(element);
                                } else if (element.hasClass('fc-time-grid-event')) {
                                    element.find('.fc-title').append('<div class="fc-description">' + info.event.extendedProps.description + '</div>');
                                } else if (element.find('.fc-list-item-title').lenght !== 0) {
                                    element.find('.fc-list-item-title').append('<div class="fc-description">' + info.event.extendedProps.description + '</div>');
                                }
                            }
                        }
                    });

                    calendar.render();
                }
            };
        }();

        jQuery(document).ready(function() {
            Livewire.emit('bookingLoaded')

            Livewire.on('bookingLoaded', b => {
                bookings = b;
                KTCalendarListView.init();
            })

        });



    </script>
@endpush
