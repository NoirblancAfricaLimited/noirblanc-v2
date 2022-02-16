<div class="modal-content">

    <form wire:submit.prevent="save">
        <div class="modal-header bg-primary text-white">
            <h5 class="modal-title text-white" id="exampleModalLabel">Add Booking</h5>
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

            <div class="form-group">
                <div class="row">
                    <div class="col-lg-6">
                        <label class="option">
						<span class="option-control">
							<span class="radio">
								<input type="radio" wire:model="type" value="1"/>
								<span></span>
							</span>
						</span>
                            <span class="option-label">
							<span class="option-head">
								<span class="option-title">
									New Customer
								</span>

							</span>
							<span class="option-body">
								Customer has no account in the system.
							</span>
						</span>
                        </label>
                    </div>
                    <div class="col-lg-6">
                        <label class="option">
						<span class="option-control">
							<span class="radio">
								<input type="radio" wire:model="type" value="2"/>
								<span></span>
							</span>
						</span>
                            <span class="option-label">
							<span class="option-head">
								<span class="option-title">
									Existing Customer
								</span>

							</span>
							<span class="option-body">
								Customer already has an existing account
							</span>
						</span>
                        </label>
                    </div>
                </div>
            </div>

                <div class="row {{$type == 1? 'd-none':''}}">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <input type="text" class="form-control  form-control-solid"
                                   wire:model.defer="mobile" placeholder="Find Customer by Mobile"/>
                            @error('mobile')
                            <span class="form-text text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <button type="button" class="btn btn-primary align-bottom" wire:target="search"
                                wire:click="search" wire:loading.attr="disabled"
                                wire:loading.class="spinner spinner-white spinner-right"><i
                                class="flaticon2-search"></i>Search
                        </button>
                    </div>
                </div>


            <form wire:submit.prevent="save">
                <fieldset {{$type == 2? 'disabled':''}}>
                    <div class="row">

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" class="form-control  form-control-solid"
                                       wire:model.defer="customer.firstname"/>
                                @error('customer.firstname')
                                <span class="form-text text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Last name</label>
                                <input type="text" class="form-control  form-control-solid"
                                       wire:model.defer="customer.lastname"/>
                                @error('customer.lastname')
                                <span class="form-text text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>E-mail</label>
                                <input type="text" class="form-control  form-control-solid"
                                       wire:model.defer="customer.email"/>
                                @error('customer.email')
                                <span class="form-text text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="text" class="form-control  form-control-solid"
                                       wire:model.defer="customer.mobile"/>
                                @error('customer.mobile')
                                <span class="form-text text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>



                    </div>
                </fieldset>

                <div class="col-lg-12">
                    <div class="form-group">
                        <div class=" mb-2 datetimepicker" wire:ignore></div>
                    </div>
                </div>
            </form>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-secondary text-white" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" wire:click="save" wire:loading.attr="disabled"
                    wire:loading.class="spinner spinner-white spinner-right">Save
            </button>
        </div>
    </form>
</div>

@push('scripts')
    <script type="text/javascript">
        jQuery(document).ready(function () {
            $('.datetimepicker').on('change.datetimepicker', function (e) {
            @this.set("booking.start_at", e.date);
            });
        });
    </script>
@endpush
