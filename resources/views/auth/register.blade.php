<!DOCTYPE html>
<html lang="en">
@include('layouts.header')


<!--begin::Body-->
<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled page-loading">

<div class="container">
    <div class="row p-10">
        <div class="col-lg-12">
            <div class="card card-custom card-transparent" xmlns:wire="http://www.w3.org/1999/xhtml">
                <div class="card-body p-0">

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
                        </div>
                    </div>
                    <!--begin::Wizard-->
                    <div class="wizard wizard-4" id="kt_wizard" data-wizard-state="step-first"
                         data-wizard-clickable="true" wire:ignore>
                        <!--begin::Wizard Nav-->
                        <div class="wizard-nav">
                            <div class="wizard-steps">
                                <div class="wizard-step" data-wizard-type="step" data-wizard-state="current">
                                    <div class="wizard-wrapper">
                                        <div class="wizard-number">
                                            1
                                        </div>
                                        <div class="wizard-label">
                                            <div class="wizard-title">
                                                Business
                                            </div>
                                            <div class="wizard-desc">
                                                business information
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="wizard-step" data-wizard-type="step">
                                    <div class="wizard-wrapper">
                                        <div class="wizard-number">
                                            2
                                        </div>
                                        <div class="wizard-label">
                                            <div class="wizard-title">
                                                Account Details
                                            </div>
                                            <div class="wizard-desc">
                                                Provider account details
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!--end::Wizard Nav-->

                        <!--begin::Card-->
                        <div class="card card-custom card-shadowless rounded-top-0">
                            <!--begin::Body-->
                            <div class="card-body p-0">


                                <div class="row justify-content-center py-8 px-8 py-lg-15 px-lg-10">


                                    <div class="col-xl-12 col-xxl-10">
                                        <!--begin::Wizard Form-->
                                        <form class="form" id="kt_form" wire:submit.prevent="save">
                                            <div class="row justify-content-center">
                                                <div class="col-xl-9">
                                                    <!--begin::Wizard Step 1-->
                                                    <div class="my-5 step" data-wizard-type="step-content"
                                                         data-wizard-state="current">

                                                        <div class="form-group row">
                                                            <label
                                                                class="col-form-label col-xl-3 col-lg-3">Category</label>
                                                            <div class="col-xl-9 col-lg-9">
                                                                <select
                                                                    class="form-control form-control-lg form-control-solid"
                                                                    wire:model.defer="business.category_id">
                                                                    <option value="">--Select Category--</option>
                                                                    @foreach($categories as $category)
                                                                        <option
                                                                            value="{{$category->id}}">{{$category->name}}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Name</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <input
                                                                    class="form-control form-control-solid form-control-lg"
                                                                    type="text" wire:model.defer="business.name"/>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-form-label col-xl-3 col-lg-3">City</label>
                                                            <div class="col-xl-9 col-lg-9">
                                                                <select
                                                                    class="form-control form-control-lg form-control-solid"
                                                                    wire:model.defer="business.city_id">
                                                                    <option value="">--Select City--</option>
                                                                    @foreach($cities as $city)
                                                                        <option
                                                                            value="{{$city->id}}">{{$city->name}}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label
                                                                class="col-xl-3 col-lg-3 col-form-label">Address</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                    <textarea class="form-control form-control-solid form-control-lg"
                                                              wire:model.defer="business.address"></textarea>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Contact
                                                                Phone</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <div
                                                                    class="input-group input-group-solid input-group-lg">
                                                                    <div class="input-group-prepend"><span
                                                                            class="input-group-text"><i
                                                                                class="la la-phone"></i></span></div>
                                                                    <input type="text"
                                                                           class="form-control form-control-solid form-control-lg"
                                                                           wire:model.defer="business.phone"/>
                                                                </div>
                                                                <span class="form-text text-muted">Contact phone for the business</span>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Email
                                                                Address</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <div
                                                                    class="input-group input-group-solid input-group-lg">
                                                                    <div class="input-group-prepend"><span
                                                                            class="input-group-text"><i
                                                                                class="la la-at"></i></span></div>
                                                                    <input type="email"
                                                                           class="form-control form-control-solid form-control-lg"
                                                                           wire:model.defer="business.email"/>

                                                                </div>
                                                                <span class="form-text text-muted">Contact E-mail for the business</span>

                                                            </div>

                                                        </div>

                                                    </div>
                                                    <!--end::Wizard Step 1-->


                                                    <!--begin::Wizard Step 3-->
                                                    <div class="my-5 step" data-wizard-type="step-content">
                                                        <h5 class="text-dark font-weight-bold mb-10 mt-5">Create main
                                                            user account for Business</h5>

                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">First
                                                                name</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <input
                                                                    class="form-control form-control-solid form-control-lg"
                                                                    type="text" wire:model.defer="provider.firstname"/>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Last
                                                                name</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <input
                                                                    class="form-control form-control-solid form-control-lg"
                                                                    type="text" wire:model.defer="provider.lastname"/>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Contact
                                                                Phone</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <div
                                                                    class="input-group input-group-solid input-group-lg">
                                                                    <div class="input-group-prepend"><span
                                                                            class="input-group-text"><i
                                                                                class="la la-phone"></i></span></div>
                                                                    <input type="text"
                                                                           class="form-control form-control-solid form-control-lg"
                                                                           wire:model.defer="provider.mobile"/>
                                                                </div>
                                                                <span class="form-text text-muted">Contact phone for the business</span>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-xl-3 col-lg-3 col-form-label">Email
                                                                Address</label>
                                                            <div class="col-lg-9 col-xl-9">
                                                                <div
                                                                    class="input-group input-group-solid input-group-lg">
                                                                    <div class="input-group-prepend"><span
                                                                            class="input-group-text"><i
                                                                                class="la la-at"></i></span></div>
                                                                    <input type="email"
                                                                           class="form-control form-control-solid form-control-lg"
                                                                           wire:model.defer="provider.email"/>

                                                                </div>
                                                                <span class="form-text text-muted">Contact E-mail for the business</span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <!--end::Wizard Step 3-->

                                                    <!--begin::Wizard Actions-->
                                                    <div class="d-flex justify-content-between border-top pt-10 mt-15">
                                                        <div class="mr-2">
                                                            <button type="button" id="prev-step"
                                                                    class="btn btn-light-primary font-weight-bolder px-9 py-4"
                                                                    data-wizard-type="action-prev">
                                                                Previous
                                                            </button>
                                                        </div>
                                                        <div>
                                                            <button type="submit"
                                                                    class="btn btn-primary font-weight-bolder py-4"
                                                                    data-wizard-type="action-prev"
                                                                    wire:loading.class="spinner spinner-right spinner-white"
                                                            >
                                                                Save
                                                            </button>

                                                            <button type="button" id="next-step"
                                                                    class="btn btn-primary font-weight-bolder px-9 py-4"
                                                                    data-wizard-type="action-next">
                                                                Next
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <!--end::Wizard Form-->
                                    </div>
                                </div>
                            </div>
                            <!--end::Body-->
                        </div>
                        <!--end::Card-->
                    </div>
                    <!--end::Wizard-->
                </div>
            </div>

        </div>
    </div>
</div>


<script>var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";</script>
<!--begin::Global Config(global config for global JS scripts)-->
<script>
    var KTAppSettings = {
        "breakpoints": {
            "sm": 576,
            "md": 768,
            "lg": 992,
            "xl": 1200,
            "xxl": 1200
        },
        "colors": {
            "theme": {
                "base": {
                    "white": "#ffffff",
                    "primary": "#6993FF",
                    "secondary": "#E5EAEE",
                    "success": "#1BC5BD",
                    "info": "#8950FC",
                    "warning": "#FFA800",
                    "danger": "#F64E60",
                    "light": "#F3F6F9",
                    "dark": "#212121"
                },
                "light": {
                    "white": "#ffffff",
                    "primary": "#E1E9FF",
                    "secondary": "#ECF0F3",
                    "success": "#C9F7F5",
                    "info": "#EEE5FF",
                    "warning": "#FFF4DE",
                    "danger": "#FFE2E5",
                    "light": "#F3F6F9",
                    "dark": "#D6D6E0"
                },
                "inverse": {
                    "white": "#ffffff",
                    "primary": "#ffffff",
                    "secondary": "#212121",
                    "success": "#ffffff",
                    "info": "#ffffff",
                    "warning": "#ffffff",
                    "danger": "#ffffff",
                    "light": "#464E5F",
                    "dark": "#ffffff"
                }
            },
            "gray": {
                "gray-100": "#F3F6F9",
                "gray-200": "#ECF0F3",
                "gray-300": "#E5EAEE",
                "gray-400": "#D6D6E0",
                "gray-500": "#B5B5C3",
                "gray-600": "#80808F",
                "gray-700": "#464E5F",
                "gray-800": "#1B283F",
                "gray-900": "#212121"
            }
        },
        "font-family": "Poppins"
    };
</script>
<!--end::Global Config-->
@include('layouts.footer')
<!--begin::Global Theme Bundle(used by all pages)-->
<script src="assets/plugins/global/plugins.bundle.js"></script>
<script src="assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
<script src="assets/js/scripts.bundle.js"></script>
<!--end::Global Theme Bundle-->


<!--begin::Page Scripts(used by this page)-->
<script src="assets/js/pages/custom/login/login-general.js"></script>
<!--end::Page Scripts-->
</body>
<!--end::Body-->
</html>
