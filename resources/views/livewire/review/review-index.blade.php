<div class="row">
    <div class="col-lg-12">

        @foreach($reviews as $review)
            <livewire:review.review-indexlist-item :review="$review"/>
            <hr/>
        @endforeach
{{--        {{$reviews->links()}}--}}
    </div>
</div>
