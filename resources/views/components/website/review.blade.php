@for ($i = 1; $i <= 5; $i++)
    @if ($i <= $product->avgReview)
        <i class="fas fa-star"></i>
    @elseif($i - $product->avgReview == 0.5)
        <i class="fas fa-star-half-alt"></i>
    @else
        <i class="far fa-star"></i>
    @endif
@endfor
<span>({{ $product->totalReviews() }})</span>
{{-- <span>({{ $product->totalReviews() }} {{ __('user.review') }})</span> --}}
