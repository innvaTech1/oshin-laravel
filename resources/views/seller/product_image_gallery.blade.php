@extends('seller.master_layout')
@section('title')
<title>{{__('user.Product Gallery')}}</title>
@endsection
@section('seller-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('user.Product Gallery')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('seller.dashboard') }}">{{__('user.Dashboard')}}</a></div>
              <div class="breadcrumb-item active"><a href="{{ route('seller.product.index') }}">{{__('user.Product')}}</a></div>
              <div class="breadcrumb-item">{{__('user.Product Gallery')}}</div>
            </div>
          </div>

          <div class="section-body">
            <a href="{{ route('seller.product.index') }}" class="btn btn-primary"><i class="fas fa-list"></i> {{__('user.Products')}}</a>
            <div class="row mt-4">
                <div class="col">
                  <div class="card">
                    <div class="card-header">
                        <h1>{{__('user.Product')}} : {{ $product->name }}</h1>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('seller.store-product-gallery') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="">{{__('user.New Image (Multiple)')}}</label>
                                <input type="file" class="form-control-file" name="images[]" multiple>
                            </div>
                            <input type="hidden" name="product_id" value="{{ $product->id }}">
                            <button type="submit" class="btn btn-primary">Upload</button>
                        </form>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-body">
                      <div class="table-responsive table-invoice">
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>{{__('user.Image')}}</th>
                                    <th>{{__('user.Status')}}</th>
                                    <th>{{__('user.Action')}}</th>
                                  </tr>
                            </thead>
                            <tbody>
                                @foreach ($gallery as $index => $image)
                                    <tr>
                                        <td> <img class="p-2" src="{{ asset($image->image) }}" alt="" width="200px"></td>
                                        <td>
                                            @if($image->status == 1)
                                            <a href="javascript:;" onclick="changeProductStatus({{ $image->id }})">
                                                <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('user.Active')}}" data-off="{{__('user.Inactive')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>
                                            @else
                                            <a href="javascript:;" onclick="changeProductStatus({{ $image->id }})">
                                                <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('user.Active')}}" data-off="{{__('user.Inactive')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>
                                            @endif
                                        </td>
                                        <td>

                                        <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData({{ $image->id }})"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                        </td>
                                    </tr>
                                  @endforeach
                            </tbody>
                        </table>
                      </div>
                    </div>
                  </div>

                </div>
          </div>
        </section>
      </div>

<script>
    function deleteData(id){
        $("#deleteForm").attr("action",'{{ url("seller/delete-product-image/") }}'+"/"+id)
    }
    function changeProductStatus(id){
        
        $.ajax({
            type:"put",
            data: { _token : '{{ csrf_token() }}' },
            url:"{{url('/seller/product-gallery-status/')}}"+"/"+id,
            success:function(response){
                toastr.success(response)
            },
            error:function(err){
                console.log(err);

            }
        })
    }
</script>
@endsection
