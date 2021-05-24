<tr xmlns:wire="http://www.w3.org/1999/xhtml">
    <td>
        <a href="{{route('admin.edit',$admin)}}"
           class="text-dark-75 font-weight-bolder text-hover-primary font-size-lg">{{$product->name}}</a>
    </td>

    <td>{{$admin->firstname}}</td>
    <td>{{$admin->firstname}}</td>
    <td>{{$admin->firstname}}</td>
    <td>{{$admin->firstname}}</td>

    <td class="pr-0 text-right">
        <a href="{{route('products.show',$product)}}" class="btn btn-text-primary btn-sm btn-hover-light-primary"><i class="fa fa-edit"></i></a>
        <button class="btn btn-text-danger btn-sm btn-hover-light-danger" wire:click="delete"><i class="fa fa-trash text-danger"></i></button>
    </td>
</tr>


