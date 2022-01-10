@if($joined)
    <div class="col-lg-12">
        <div class="alert alert-primary mb-5 p-5" role="alert">
            <h4 class="alert-heading">Thank you for Joining Noirblanc</h4>
            <p>A representative from Noirblanc will get back to you shortly after we verify your information</p>
            <div class="border-bottom border-white opacity-20 mb-5"></div>
            <p class="mb-0">If you would like to return to the home page, <a href="/" class="btn btn-outline-white">Click
                    here</a></p>
        </div>
    </div>
@else


    <div class="row">
        <div class="col-12">
            <!--begin::Wizard Form-->
            <form wire:submit.prevent="save">
                <div class="row justify-content-center">
                    <div class="col-xl-9">

                        <div class="form-group">
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

                        <div class=" form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label"></label>
                            <div class="col-lg-9 col-xl-9">
                                <div class="image-input image-input-outline image-input-circle"
                                     id="kt_profile_avatar"
                                     style="background-image: url('{{$avatar ?  $avatar->temporaryUrl() : asset('media/users/blank.png')}}')">

                                    <div class="image-input-wrapper"
                                         style="background-image: url('{{$avatar ? $avatar->temporaryUrl() : asset('media/users/blank.png')}}')"></div>

                                    <label
                                        class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow"
                                        data-action="change" data-toggle="tooltip" title=""
                                        data-original-title="Change avatar">
                                        <i class="fa fa-pen icon-sm text-muted"></i>
                                        <input type="file" accept=".png, .jpg, .jpeg" wire:model="avatar"/>
                                    </label>

                                    <span
                                        class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow"
                                        data-action="cancel" data-toggle="tooltip" title="Cancel avatar">
                                    <i class="ki ki-bold-close icon-xs text-muted"></i>
                                </span>

                                    </span>
                                </div>
                                <span class="form-text text-muted">Allowed file types:  png, jpg, jpeg.</span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-xl-3 col-lg-3">Category</label>
                            <div class="col-xl-9 col-lg-9">
                                <select class="form-control form-control-lg form-control-solid"
                                        wire:model.defer="business.category_id">
                                    <option value="">--Select Category--</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">Business Name</label>
                            <div class="col-lg-9 col-xl-9">
                                <input class="form-control form-control-solid form-control-lg"
                                       type="text" wire:model.defer="business.name"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-xl-3 col-lg-3">City</label>
                            <div class="col-xl-9 col-lg-9">
                                <select class="form-control form-control-lg form-control-solid"
                                        wire:model.defer="business.city_id">
                                    <option value="">--Select City--</option>
                                    @foreach($cities as $city)
                                        <option value="{{$city->id}}">{{$city->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">Address</label>
                            <div class="col-lg-9 col-xl-9">
                                                    <textarea class="form-control form-control-solid form-control-lg"
                                                              wire:model.defer="business.address"></textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">Contact Phone</label>
                            <div class="col-lg-9 col-xl-9">
                                <div class="input-group input-group-solid input-group-lg">
                                    <div class="input-group-prepend"><span class="input-group-text"><i
                                                class="la la-phone"></i></span></div>
                                    <input type="text"
                                           class="form-control form-control-solid form-control-lg"
                                           wire:model.defer="business.phone"/>
                                </div>
                                <span class="form-text text-muted">Contact phone for the business</span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">Email Address</label>
                            <div class="col-lg-9 col-xl-9">
                                <div class="input-group input-group-solid input-group-lg">
                                    <div class="input-group-prepend"><span class="input-group-text"><i
                                                class="la la-at"></i></span></div>
                                    <input type="email"
                                           class="form-control form-control-solid form-control-lg"
                                           wire:model.defer="business.email"/>

                                </div>
                                <span class="form-text text-muted">E-mail will be used for login and communication</span>

                            </div>

                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">First name</label>
                            <div class="col-lg-9 col-xl-9">
                                <input class="form-control form-control-solid form-control-lg"
                                       type="text" wire:model.defer="provider.firstname"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">Last name</label>
                            <div class="col-lg-9 col-xl-9">
                                <input class="form-control form-control-solid form-control-lg"
                                       type="text" wire:model.defer="provider.lastname"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">Password</label>
                            <div class="col-lg-9 col-xl-9">
                                <input class="form-control form-control-solid form-control-lg"
                                       type="password" wire:model.defer="password"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">Confirm Password</label>
                            <div class="col-lg-9 col-xl-9">
                                <input class="form-control form-control-solid form-control-lg"
                                       type="password" wire:model.defer="password_confirmation"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">NRC</label>
                            <div class="col-lg-9 col-xl-9">
                                <input class="form-control form-control-solid form-control-lg"
                                       type="file" wire:model.defer="nrc"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-xl-3 col-lg-3 col-form-label">Certificates</label>
                            <div class="col-lg-9 col-xl-9">
                                <input class="form-control form-control-solid form-control-lg"
                                       type="file" wire:model.defer="certificates"/>
                            </div>
                        </div>

                        <button type="submit"
                                class="btn btn-primary font-weight-bolder px-9 py-4"
                                wire:loading.class="spinner spinner-right spinner-white" wire:target="save">
                            Save
                        </button>
                    </div>
                </div>

            </form>
            <!--end::Wizard Form-->
        </div>
    </div>
@endif

