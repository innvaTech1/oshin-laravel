@extends('admin.master_layout')
@section('title')
<title>{{__('Coupon')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Coupon')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item">{{__('Coupon')}}</div>
            </div>
          </div>

          <div class="section-body">
            <a href="javascript:;" data-toggle="modal" data-target="#createCoupon" class="btn btn-primary"><i class="fas fa-plus"></i> {{__('Add New')}}</a>
            <div class="row mt-4">
                <div class="col">
                  <div class="card">
                    <div class="card-body">
                      <div class="table-responsive table-invoice">
                        <table class="table table-striped" id="dataTable">
                            <thead>
                                <tr>
                                    <th>{{__('SN')}}</th>
                                    <th>{{__('Name')}}</th>
                                    <th>{{__('Code')}}</th>
                                    <th>{{__('Discount')}}</th>
                                    <th>{{__('Number of Times')}}</th>
                                    <th>{{__('Apply Qty')}}</th>
                                    <th>{{__('Expired Date')}}</th>
                                    <th>{{__('Status')}}</th>
                                    <th>{{__('Action')}}</th>
                                  </tr>
                            </thead>
                            <tbody>
                                @foreach ($coupons as $index => $coupon)
                                    <tr>
                                        <td>{{ ++$index }}</td>
                                        <td>{{ $coupon->name }}</td>
                                        <td>{{ $coupon->code }}</td>
                                        <td>{{ $coupon->offer_type == 1 ? '' : $setting->currency_icon }}{{ $coupon->discount }}{{ $coupon->offer_type == 1 ? '%' : '' }}</td>
                                        <td>{{ $coupon->max_quantity }}</td>
                                        <td>{{ $coupon->apply_qty }}</td>
                                        <td>{{ date('d M, Y',strtotime($coupon->expired_date)) }}</td>
                                        <td>
                                            @if($coupon->status == 1)
                                            <a href="javascript:;" onclick="changeCouponStatus({{ $coupon->id }})">
                                                <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('Inactive')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>

                                            @else
                                            <a href="javascript:;" onclick="changeCouponStatus({{ $coupon->id }})">
                                                <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('Inactive')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>

                                            @endif
                                        </td>
                                        <td>
                                        <a href="javascript:;" data-toggle="modal" data-target="#editCoupon-{{ $coupon->id }}" class="btn btn-primary btn-sm"><i class="fa fa-edit" aria-hidden="true"></i></a>

                                        <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData({{ $coupon->id }})"><i class="fa fa-trash" aria-hidden="true"></i></a>

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

      <!-- Modal -->
      <div class="modal fade" id="createCoupon" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                      <div class="modal-header">
                              <h5 class="modal-title">{{__('Create Coupon')}}</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                  </button>
                          </div>
                  <div class="modal-body">
                      <div class="container-fluid">
                        <form action="{{ route('admin.coupon.store') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="form-group col-12">
                                    <label>{{__('Name')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="name" class="form-control"  name="name">
                                </div>
                                <div class="form-group col-12">
                                    <label>{{__('Code')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="code" class="form-control"  name="code">
                                </div>
                                <div class="form-group col-12">
                                    <label>{{__('Number of times')}} <span class="text-danger">*</span></label>
                                    <input type="number" id="number_of_time" class="form-control"  name="number_of_time">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Expired Date')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="expired_date" class="form-control datepicker"  name="expired_date" autocomplete="off">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Discount')}} <span class="text-danger">*</span></label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <select name="offer_type" id="" class="form-control">
                                                <option value="1">{{__('Percentage')}}(%)</option>
                                                <option value="2">{{__('Amount')}}({{ $setting->currency_icon }})</option>
                                            </select>
                                        </div>
                                        <input type="text" name="discount" class="form-control" placeholder="Discount" aria-label="Discount" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Status')}} <span class="text-danger">*</span></label>
                                    <select name="status" class="form-control">
                                        <option value="1">{{__('Active')}}</option>
                                        <option  value="0">{{__('Inactive')}}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">{{__('Save')}}</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">{{__('Close')}}</button>
                                </div>
                            </div>
                        </form>
                      </div>
                  </div>
              </div>
          </div>
      </div>

      {{-- edit modal --}}
      @foreach ($coupons as $coupon)
      <div class="modal fade" id="editCoupon-{{ $coupon->id }}" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                    <div class="modal-header">
                            <h5 class="modal-title">{{__('Edit Coupon')}}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                <div class="modal-body">
                    <div class="container-fluid">
                      <form action="{{ route('admin.coupon.update', $coupon->id) }}" method="POST">
                          @csrf
                          @method('PUT')
                          <div class="row">
                              <div class="form-group col-12">
                                  <label>{{__('Name')}} <span class="text-danger">*</span></label>
                                  <input type="text" id="name" class="form-control"  name="name" value="{{ $coupon->name }}">
                              </div>
                              <div class="form-group col-12">
                                  <label>{{__('Code')}} <span class="text-danger">*</span></label>
                                  <input type="text" id="code" class="form-control"  name="code" value="{{ $coupon->code }}">
                              </div>
                              <div class="form-group col-12">
                                  <label>{{__('Number of times')}} <span class="text-danger">*</span></label>
                                  <input type="number" id="number_of_time" class="form-control"  name="number_of_time" value="{{ $coupon->max_quantity }}">
                              </div>

                              <div class="form-group col-12">
                                <label>{{__('Expired Date')}} <span class="text-danger">*</span></label>
                                <input type="text" id="expired_date" class="form-control datepicker" value="{{ $coupon->expired_date }}"  name="expired_date" autocomplete="off">
                            </div>

                              <div class="form-group col-12">
                                  <label>{{__('Discount')}} <span class="text-danger">*</span></label>
                                  <div class="input-group mb-3">
                                      <div class="input-group-prepend">
                                          <select name="offer_type" id="" class="form-control">
                                              <option {{ $coupon->offer_type == 1 ? 'selected' : '' }} value="1">{{__('Percentage')}}(%)</option>
                                              <option {{ $coupon->offer_type == 2 ? 'selected' : '' }} value="2">{{__('Amount')}}({{ $setting->currency_icon }})</option>
                                          </select>
                                      </div>
                                      <input type="text" name="discount" class="form-control" placeholder="Discount" aria-label="Discount" aria-describedby="basic-addon1" value="{{ $coupon->discount }}">
                                  </div>
                              </div>

                              <div class="form-group col-12">
                                  <label>{{__('Status')}} <span class="text-danger">*</span></label>
                                  <select name="status" class="form-control">
                                      <option {{ $coupon->status == 1 ? 'selected' : '' }} value="1">{{__('Active')}}</option>
                                      <option {{ $coupon->status == 0 ? 'selected' : '' }}  value="0">{{__('Inactive')}}</option>
                                  </select>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-12">
                                  <button type="submit" class="btn btn-primary">{{__('Save')}}</button>
                                  <button type="button" class="btn btn-danger" data-dismiss="modal">{{__('Close')}}</button>
                              </div>
                          </div>
                      </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
      @endforeach

<script>
    function deleteData(id){
        $("#deleteForm").attr("action",'{{ url("admin/coupon/") }}'+"/"+id)
    }
    function changeCouponStatus(id){

        $.ajax({
            type:"put",
            data: { _token : '{{ csrf_token() }}' },
            url:"{{url('/admin/coupon-status/')}}"+"/"+id,
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
