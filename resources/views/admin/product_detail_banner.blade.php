@extends('admin.master_layout')
@section('title')
<title>{{__('Product Detail Page')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Product Detail Page')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item">{{__('Product Detail Page')}}</div>
            </div>
          </div>

          <div class="section-body">
            <div class="row mt-4">
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="">{{__('Stock Quantity Visibility')}}</label>
                                <div>
                                    @if ($setting->show_product_qty == 1)
                                        <a href="javascript:;" onclick="changeStockQtyVisibility()">
                                            <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Enable')}}" data-off="{{__('Disable')}}" data-onstyle="success" data-offstyle="danger" name="status">
                                        </a>
                                        @else
                                        <a href="javascript:;" onclick="changeStockQtyVisibility()">
                                            <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Enable')}}" data-off="{{__('Disable')}}" data-onstyle="success" data-offstyle="danger" name="status">
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </section>
      </div>

      <script>
          function changeStockQtyVisibility(){

            $.ajax({
                type:"put",
                data: { _token : '{{ csrf_token() }}' },
                url:"{{ route('admin.update-stock-qty-visibility') }}",
                success:function(response){
                   toastr.success(response)
                },
                error:function(err){
                }
            })
        }
      </script>
@endsection
