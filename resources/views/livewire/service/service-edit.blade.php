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

    <div class="col-lg-12">
        <form wire:submit.prevent="save">
        <div class="form-group">
            <label for="exampleSelect1">Category</label>
            <select class="form-control form-control-solid"
                    wire:model.defer="service.sub_category_id">
                <option value="">--Select Category--</option>
                @foreach($categories as $category)
                    <option value="{{$category->id}}">{{$category->name}}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label>Description</label>
            <textarea class="form-control  form-control-solid"
                      wire:model.defer="service.description"></textarea>
            @error('service.name')
            <span class="form-text text-danger">{{ $message }}</span>
            @enderror
        </div>

        <div class="form-group">
            <label>Price</label>
            <input type="text" class="form-control  form-control-solid"
                   wire:model.defer="service.price"/>
            @error('service.price')
            <span class="form-text text-danger">{{ $message }}</span>
            @enderror
        </div>

{{--        <div class="row">--}}
{{--            <div class="col-lg-6">--}}
{{--                <div class="form-group">--}}
{{--                    <label>Opens At</label>--}}
{{--                    <div class="input-group timepicker time-picker">--}}
{{--                        <input class="form-control" type="text"--}}
{{--                               wire:model.defer="service.open_at"/>--}}
{{--                        <div class="input-group-append">--}}
{{--							<span class="input-group-text">--}}
{{--								<i class="la la-clock-o"></i>--}}
{{--							</span>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    @error('service.open_at')--}}
{{--                    <span class="form-text text-danger">{{ $message }}</span>--}}
{{--                    @enderror--}}
{{--                </div>--}}

{{--            </div>--}}
{{--            <div class="col-lg-6">--}}
{{--                <div class="form-group">--}}
{{--                    <label>Closes At</label>--}}
{{--                    <div class="input-group timepicker">--}}
{{--                        <input class="form-control"  type="text"--}}
{{--                               wire:model.defer="service.close_at"/>--}}
{{--                        <div class="input-group-append">--}}
{{--							<span class="input-group-text">--}}
{{--								<i class="la la-clock-o"></i>--}}
{{--							</span>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    @error('service.close_at')--}}
{{--                    <span class="form-text text-danger">{{ $message }}</span>--}}
{{--                    @enderror--}}
{{--                </div>--}}

{{--            </div>--}}

{{--            <div class="col-lg-12">--}}
{{--                <button type="button" class="btn btn-primary" wire:click="save" wire:loading.attr="disabled" wire:loading.class="spinner spinner-white spinner-right">Save</button>--}}
{{--            </div>--}}

{{--        </div>--}}
        </form>
    </div>
</div>
