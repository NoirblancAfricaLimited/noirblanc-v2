<div class="row">
    <div class="col-lg-12">
        <div class="card card-custom ">
            <!--begin::Header-->
            <div class="card-header border-0 py-5">
                <h3 class="card-title align-items-start flex-column">
                    <span class="card-label font-weight-bolder text-dark">All Categories</span>
                    {{--                    <span class="text-muted mt-3 font-weight-bold font-size-sm">More than 400+ new members</span>--}}
                </h3>
                <div class="card-toolbar">
                    <a href="{{route('category.create')}}" class="btn btn-primary font-weight-bolder font-size-sm">
                        Add
                    </a>
                </div>
            </div>
            <!--end::Header-->

            <!--begin::Body-->
            <div class="card-body py-0">

            {{--                <x-message/>--}}

            <!--begin::Table-->
                <div class="table-responsive">
                    {{$categories->links()}}
                    <table class="table table-head-custom table-vertical-center" id="kt_advance_table_widget_4">
                        <thead>
                        <tr class="text-left">
                            <th>Name</th>
                            <th>Status</th>
                            <th>Date Added</th>
                            <th class="pr-0 text-right">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse($categories as $category)
                            <livewire:category.category-index-table-item :category="$category" :key="$category->id"/>
                        @empty
                            <tr>
                                <td colspan="6">
                                    <div class="alert alert-custom alert-outline-info fade show mb-5" role="alert">
                                        <div class="alert-icon"><i class="flaticon-warning"></i></div>
                                        <div class="alert-text">You currently have no categories</div>
                                        <div class="alert-close">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true"><i class="ki ki-close"></i></span>
                                            </button>
                                        </div>
                                    </div>
                                    @endforelse
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--end::Table-->
            </div>
            <!--end::Body-->
        </div>
    </div>
</div>
