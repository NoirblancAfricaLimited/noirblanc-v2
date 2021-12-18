<tr xmlns:wire="http://www.w3.org/1999/xhtml">
    <td>
        <a href="{{route('admin.edit',$admin)}}"
           class="text-dark-75 font-weight-bolder text-hover-primary font-size-lg">{{$admin->firstname}}</a>
    </td>

    <td>{{$admin->lastname}}</td>
    <td>{{$admin->email}}</td>
    <td>{{$admin->mobile}}</td>
    <td>{{$admin->created_at->toFormattedDateString()}}</td>

    <td class="pr-0 text-right">
        <a href="{{route('admin.edit',$admin)}}" class="btn btn-text-primary btn-sm btn-hover-light-primary"><i
                class="fa fa-edit"></i></a>
        @if(auth()->id() != $admin->id)
            @if($admin->status == 'active')
                <button class="btn btn-text-warning btn-sm btn-hover-light-warning" wire:click="deactivate">De-Activate
                </button>
            @else
                <button class="btn btn-text-success btn-sm btn-hover-light-success" wire:click="activate">Activate
                </button>
            @endif
            <button class="btn btn-text-danger btn-sm btn-hover-light-danger" wire:click="delete"><i
                    class="fa fa-trash text-danger"></i></button>
        @endif
    </td>
</tr>


