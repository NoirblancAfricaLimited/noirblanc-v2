<!--end::Demo Panel-->


<!--end::Global Config-->
<!--begin::Global Theme Bundle(used by all pages)-->
<script src="{{asset('')}}plugins/global/plugins.bundle.js"></script>
<script src="{{asset('')}}plugins/custom/prismjs/prismjs.bundle.js"></script>
<script src="{{asset('')}}js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-timepicker/0.5.2/js/bootstrap-timepicker.min.js"/>

<!--end::Global Theme Bundle-->

<!--begin::Page Vendors(used by this page)-->
<script src="{{asset('')}}plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
{{--<script src="//maps.google.com/maps/api/js?key=AIzaSyBTGnKT7dt597vo9QgeQ7BFhvSRP4eiMSM"></script>--}}
<script src="{{asset('')}}plugins/custom/gmaps/gmaps.js"></script>
<script src="{{asset('')}}js/pages/crud/forms/editors/summernote.js"></script>
<!--end::Page Vendors-->
<script src="{{asset('')}}/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
<!--begin::Page Scripts(used by this page)-->
<script src="{{asset('')}}js/pages/widgets.js"></script>
{{--<script src="{{asset('')}}js/pages/crud/forms/widgets/bootstrap-timepicker.js"></script>--}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js" ></script>
<script src="{{asset('')}}js/pages/crud/forms/widgets/bootstrap-datetimepicker.js" ></script>
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.2/dist/alpine.min.js" defer></script>
<script src="{{asset('')}}js/add-user.js"></script>

@livewireScripts

<script>

    jQuery(document).ready(function() {

        arrows = {
            leftArrow: '<i class="la la-angle-left"></i>',
            rightArrow: '<i class="la la-angle-right"></i>'
        }

        $('.date-picker').datepicker({
            todayHighlight: true,
            orientation: "bottom left",
            templates: arrows
        });

        $('.time-picker').timepicker({
            minuteStep: 1,
            defaultTime: '',
            showSeconds: false,
            showMeridian: false,
            snapToStep: true,
            icons: {
                up: 'fa fa-arrow-up',
                down: 'fa fa-arrow-down'
            }
        })

        $('.datetimepicker').datetimepicker({
            // format: 'LT',
            inline: true,
            sideBySide: true,
            minDate: moment().seconds(0).minutes(0),
            showSeconds: false,

        });

    });

    Livewire.on('message', (type, message) => {
        toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": true,
            "progressBar": false,
            "positionClass": "toast-top-right",
            "preventDuplicates": true,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };



        toastr.info(message);
    })

</script>
@stack('scripts')
