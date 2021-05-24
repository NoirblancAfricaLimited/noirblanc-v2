<tr>
    <td>{{$voucher->code}}</td>
    <td>{{$voucher->data->get('discount')}}</td>
    <td>{{$voucher->created_at->toFormattedDateString()}}</td>
    <td>{{$voucher->expires_at->toFormattedDateString()}}</td>
    <td>{{$customer? $customer->pivot->count() : 0}}</td>
</tr>
