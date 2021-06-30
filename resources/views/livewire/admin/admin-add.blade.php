<div class="row">
    <div class="col-lg-6">
        <div class="card card-custom ">
            <div class="card-body">
                <form class="form" id="kt_form">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" class="form-control  form-control-solid"
                               wire:model.defer="admin.firstname"/>
                        @error('admin.firstname')
                        <span class="form-text text-danger">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label>Last name</label>
                        <input type="text" class="form-control  form-control-solid"
                               wire:model.defer="admin.lastname"/>
                        @error('admin.lastname')
                        <span class="form-text text-danger">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label>E-mail</label>
                        <input type="text" class="form-control  form-control-solid"
                               wire:model.defer="admin.email"/>
                        @error('admin.email')
                        <span class="form-text text-danger">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label>Mobile</label>
                        <input type="text" class="form-control  form-control-solid"
                               wire:model.defer="admin.mobile"/>
                        @error('admin.mobile')
                        <span class="form-text text-danger">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <input type="text" class="form-control  form-control-solid"
                               wire:model.defer="admin.password"/>
                        @error('admin.password')
                        <span class="form-text text-danger">{{ $message }}</span>
                        @enderror
                    </div>


                </form>
            </div>

            <div class="card-footer">
                <button type="button" class="btn btn-primary" wire:click="save" wire:loading.attr="disabled" wire:loading.class="spinner spinner-white spinner-right">Save</button>
            </div>
        </div>
    </div>
</div>

<!--begin::Card body-->
