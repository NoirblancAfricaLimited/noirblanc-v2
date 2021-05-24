<div class="row">
    <div class="col-lg-12">
        <button class="btn btn-primary font-weight-bolder font-size-sm mb-5" data-toggle="modal"
                data-target="#exampleModalCenter">
            Create
        </button>
    </div>
    <div class="col-lg-12">

        <div class="table-responsive">

            <table class="table table-head-custom table-head-bg table-borderless table-vertical-center">
                <thead>
                <tr class="text-uppercase">
                    <th style="min-width: 250px"><span
                            class="text-dark-75">Name</span></th>
                    <th style="min-width: 100px">Percentage</th>
                    <th style="min-width: 100px">Added On</th>
                    <th style="min-width: 100px">Expires On</th>
                    <th style="min-width: 130px">No. Redeemed</th>
                    <th style="min-width: 120px"></th>
                </tr>
                </thead>
                <tbody>
                @foreach($vouchers as $voucher)
                    <livewire:promo-code.promo-code-index-item :voucher="$voucher" :key="$voucher->id"/>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModalCenter" data-backdrop="static" tabindex="-1" role="dialog"
     aria-labelledby="staticBackdrop" aria-hidden="true" xmlns:wire="http://www.w3.org/1999/xhtml">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <livewire:promo-code.promo-code-add :service="$service"/>
    </div>
</div>
