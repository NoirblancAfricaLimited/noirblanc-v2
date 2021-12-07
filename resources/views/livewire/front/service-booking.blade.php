<form wire:submit.prevent="save" class="subscribe-form">


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

    <div class="row mt-3">

        <div class="col-lg-6">
            <div class="form-group">
                <label>Set Appointment Time</label>
                <input type="datetime-local" class="form-control  form-control-solid"
                       wire:model.defer="booking.start_at"/>
                @error('booking.start_at')
                <span class="form-text text-danger">{{ $message }}</span>
                @enderror
            </div>
        </div>


    </div>

    <div class="row mt-2">
        <div class="col-lg-6">
            <button type="submit" wire:click="save">Book Now</button>
        </div>
    </div>


</form>

