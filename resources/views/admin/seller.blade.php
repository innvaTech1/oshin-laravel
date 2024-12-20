@extends('admin.master_layout')
@section('title')
<title>{{__('Seller List')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Seller List')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item">{{__('Seller List')}}</div>
            </div>
          </div>

          <div class="section-body">
              <a href="{{ route('admin.send-email-to-all-seller') }}" class="btn btn-primary">{{__('Send email to all seller')}}</a>
            <div class="row mt-4">
                <div class="col">
                  <div class="card">
                    <div class="card-body">
                      <div class="table-responsive table-invoice">
                        <table class="table table-striped" id="dataTable">
                            <thead>
                                <tr>
                                    <th >{{__('SN')}}</th>
                                    <th >{{__('Seller Name')}}</th>
                                    <th >{{__('Email')}}</th>
                                    <th >{{__('Image')}}</th>
                                    <th >{{__('Status')}}</th>
                                    <th >{{__('Action')}}</th>
                                  </tr>
                            </thead>
                            <tbody>
                                @foreach ($sellers as $index => $seller)
                                    <tr>
                                        <td>{{ ++$index }}</td>
                                        <td>{{ $seller->user->name }}</td>
                                        <td>{{ $seller->user->email }}</td>
                                        <td>
                                            @if ($seller->user->image)
                                            <img src="{{ asset($seller->user->image) }}" class="rounded-circle" alt="" width="80px">
                                            @endif
                                        </td>
                                        <td>
                                            @if($seller->status == 1)
                                            <a href="javascript:;" onclick="manageCustomerStatus({{ $seller->id }})">
                                                <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('Inctive')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>

                                            @else
                                            <a href="javascript:;" onclick="manageCustomerStatus({{ $seller->id }})">
                                                <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('InActive')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>

                                            @endif
                                        </td>
                                        <td>

                                        <a href="{{ route('admin.seller-show',$seller->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-eye" aria-hidden="true"></i></a>

                                        <a href="{{ route('admin.send-email-to-seller',$seller->id) }}" class="btn btn-success btn-sm"><i class="far fa-envelope" aria-hidden="true"></i></a>

                                        @php
                                            $existProduct = $products->where('vendor_id',$seller->id)->count();
                                        @endphp

                                        @if ($existProduct == 0)
                                            <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData({{ $seller->id }})"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                        @else
                                            <a href="javascript:;" data-toggle="modal" data-target="#canNotDeleteModal" class="btn btn-danger btn-sm" disabled><i class="fa fa-trash" aria-hidden="true"></i></a>
                                        @endif


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
      <div class="modal fade" id="canNotDeleteModal" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                      <div class="modal-body">
                          {{__('You can not delete this seller. Because there are one or more products and shop account has been created in this seller.')}}
                      </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">{{__('Close')}}</button>
                </div>
            </div>
        </div>
    </div>

<script>
    function deleteData(id){
        $("#deleteForm").attr("action",'{{ url("admin/seller-delete/") }}'+"/"+id)
    }
    function manageCustomerStatus(id){

        $.ajax({
            type:"put",
            data: { _token : '{{ csrf_token() }}' },
            url:"{{url('/admin/seller-status/')}}"+"/"+id,
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
