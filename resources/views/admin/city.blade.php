@extends('admin.master_layout')
@section('title')
<title>{{__('City')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('City')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item">{{__('City')}}</div>
            </div>
          </div>

          <div class="section-body">
            <a href="{{ route('admin.city.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> {{__('Add New')}}</a>
            <div class="row mt-4">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                        <table class="table table-striped" id="dataTable">
                            <thead>
                                <tr>
                                    <th>{{__('SN')}}</th>
                                    <th>{{__('City')}}</th>
                                    <th>{{__('State')}}</th>
                                    <th>{{__('Status')}}</th>
                                    <th>{{__('Action')}}</th>
                                  </tr>
                            </thead>
                            <tbody>
                                @foreach ($cities as $index => $city)
                                    <tr>
                                        <td>{{ ++$index }}</td>
                                        <td>{{ $city->name }}</td>
                                        <td>{{ $city->countryState->name }}</td>
                                        <td>
                                            @if($city->status == 1)
                                                <a href="javascript:;" onclick="changeStateStatus({{ $city->id }})">
                                                    <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('InActive')}}" data-onstyle="success" data-offstyle="danger">
                                                </a>
                                                @else
                                                <a href="javascript:;" onclick="changeStateStatus({{ $city->id }})">
                                                    <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('InActive')}}" data-onstyle="success" data-offstyle="danger">
                                                </a>
                                                @endif
                                        </td>
                                        <td>
                                            <a href="{{ route('admin.city.edit',$city->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-edit" aria-hidden="true"></i></a>

                                            @php
                                                $isUser = $users->where('city_id', $city->id)->count();
                                                $isBilling = $billingAddress->where('city_id', $city->id)->count();
                                                $isShipping = $shippingAddress->where('city_id', $city->id)->count();
                                            @endphp
                                            @if ($isUser == 0 && $isBilling == 0 && $isShipping == 0)
                                                <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData({{ $city->id }})"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
        </section>
      </div>

      <!-- Modal -->
      <div class="modal fade" id="canNotDeleteModal" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                      <div class="modal-body">
                          {{__('You can not delete this city. Because there are one or more users and seller has been created in this city.')}}
                      </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">{{__('Close')}}</button>
                </div>
            </div>
        </div>
    </div>

<script>
    function deleteData(id){
        $("#deleteForm").attr("action",'{{ url("admin/city/") }}'+"/"+id)
    }
    function changeStateStatus(id){

        $.ajax({
            type:"put",
            data: { _token : '{{ csrf_token() }}' },
            url:"{{url('/admin/city-status/')}}"+"/"+id,
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
