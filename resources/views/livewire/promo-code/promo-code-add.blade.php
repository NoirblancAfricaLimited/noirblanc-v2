<div class="modal-content">

    <form wire:submit.prevent="save">
        <div class="modal-header bg-primary text-white">
            <h5 class="modal-title text-white" id="exampleModalLabel">Add Promo Code</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="modal-body">

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
                <div class="col-lg-12">

                    <div class="form-group">
                        <label for="exampleSelect1">Discount Percentage</label>
                        <input type="number" class="form-control" placeholder="Amount"
                               wire:model.defer="amount"/>
                    </div>

                    <div class="form-group">
                        <label for="exampleSelect1">Days Promo Valid</label>
                        <input type="number" class="form-control" placeholder="Days Valid"
                               wire:model.defer="days"/>
                    </div>


                </div>
            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-secondary text-white" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" wire:click="save" wire:loading.attr="disabled"
                    wire:loading.class="spinner spinner-white spinner-right">Save
            </button>
        </div>
    </form>
</div>


