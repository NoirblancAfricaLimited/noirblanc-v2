<div class="row">
    <div class="col-lg-6">
        <div class="card card-custom ">
            <div class="card-header">
                <div class="card-title">Business Information</div>
            </div>
            <div class="card-body">
                <form class="form" id="kt_form" wire:submit.prevent="save">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                        <div class="row">
                            <label class="col-12 col-form-label"></label>
                            <div class="col-lg-9 col-xl-6">
                                <div class="image-input image-input-outline image-input-circle" id="kt_profile_avatar"
                                     style="background-image: url('{{$business->avatar ? $business->avatar->getUrl() : asset('media/users/blank.png')}}')">

                                    <div class="image-input-wrapper"
                                         style="background-image: url('{{$avatar ? $avatar->temporaryUrl() : $business->avatar->getUrl()}}')"></div>

                                    <label
                                        class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow"
                                        data-action="change" data-toggle="tooltip" title=""
                                        data-original-title="Change avatar">
                                        <i class="fa fa-pen icon-sm text-muted"></i>
                                        <input type="file" accept=".png, .jpg, .jpeg" wire:model="avatar"/>
                                        {{--                                        <input type="hidden" name="profile_avatar_remove"/>--}}
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
                        <label class="col-xl-3 col-lg-3 col-form-label">Name</label>
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
                            <span class="form-text text-muted">Contact E-mail for the business</span>

                        </div>

                    </div>

                </form>
            </div>

            <div class="card-footer">
                <button type="button" class="btn btn-primary" wire:click="save" wire:loading.attr="disabled"
                        wire:loading.class="spinner spinner-white spinner-right">Save
                </button>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
       <livewire:business.provider-edit :provider="$business->provider"/>
    </div>
</div>

<!--begin::Card body-->
