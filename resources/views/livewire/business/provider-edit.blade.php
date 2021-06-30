<div class="card card-custom ">
    <div class="card-header">
        <div class="card-title">Provider Information</div>
    </div>
    <div class="card-body">

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form class="form" id="kt_form" wire:submit.prevent="save_provider">
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
                <label class="col-xl-3 col-lg-3 col-form-label">Contact Phone</label>
                <div class="col-lg-9 col-xl-9">
                    <div class="input-group input-group-solid input-group-lg">
                        <div class="input-group-prepend"><span class="input-group-text"><i
                                    class="la la-phone"></i></span></div>
                        <input type="text"
                               class="form-control form-control-solid form-control-lg"
                               wire:model.defer="provider.mobile"/>
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
                               wire:model.defer="provider.email"/>

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
