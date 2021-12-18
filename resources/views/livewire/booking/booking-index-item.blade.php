<tr class="">
    <td class="pl-0 pt-7 d-flex align-items-center">
        <!--begin::Symbol-->
    {{--        <div class="symbol symbol-40 flex-shrink-0 mr-4 bg-light">--}}
    {{--            <div class="symbol-label"--}}
    {{--                 style="background-image: url('{{$item->stock->product->photos->first()->getUrl()}}')"></div>--}}
    {{--        </div>--}}
    <!--end::Symbol-->
        <span class="text-primary">{{$booking->customer->fullname}}</span>
    </td>
    <td class="pt-7">{{$booking->customer->mobile}}</td>
    <td class="pt-7">{{money($booking->service->price)}}</td>
    <td class="pt-7">{{$booking->status}}</td>
    <td class="pt-7">{{$booking->start_at->toDayDateTimeString()}}</td>
    <td class="pt-7">{{$booking->created_at->toFormattedDateString()}}</td>
    <td class="pr-0 text-right">
        <button type="button"  class="btn btn-sm btn-outline-primary"
                wire:target="confirm" wire:click="confirm" wire:loading.class="spinner spinner-right spinner-white">Confirm</button>
    </td>
</tr>
