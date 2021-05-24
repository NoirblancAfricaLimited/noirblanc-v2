<div class="row">
    <div class="col-lg-12">
        <div class="card card-custom ">
            <div class="card-body px-0">
                <form wire:submit.prevent="save">
                    <div class="row">
                        <div class="col-xl-7 my-2">

                            <div class="form-group row">
                                <label class="col-form-label col-3 text-lg-right text-left">Name</label>
                                <div class="col-9">
                                    <input class="form-control form-control-lg form-control-solid" type="text"
                                          wire:model.defer="name"/>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-3 text-lg-right text-left"></label>
                                <div class="col-9">
                                    <button type="button" class="btn btn-primary" wire:click="save">Add</button>

                                </div>
                            </div>



                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
