@extends('admin.master_layout')
@section('title')
<title>{{__('Mega Menu Sub Category')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Mega Menu Sub Category')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item">{{__('Mega Menu Sub Category')}}</div>
            </div>
          </div>

          <div class="section-body">
            <a href="{{ route('admin.mega-menu-category.index') }}" class="btn btn-primary"><i class="fas fa-backward"></i> {{__('Go Back')}}</a>
            <a href="{{ route('admin.create-mega-menu-sub-category',$megaMenuCategory->id) }}" class="btn btn-primary"><i class="fas fa-plus"></i> {{__('Add New')}}</a>
            <div class="row mt-4">
                <div class="col">
                  <div class="card">
                    <div class="card-header">
                        <h1>{{__('Category')}} : {{ $megaMenuCategory->category->name }}</h1>
                    </div>
                    <div class="card-body">
                      <div class="table-responsive table-invoice">
                        <table class="table table-striped" id="dataTable">
                            <thead>
                                <tr>
                                    <th>{{__('SN')}}</th>
                                    <th>{{__('Sub Category')}}</th>
                                    <th>{{__('Serial')}}</th>
                                    <th>{{__('Status')}}</th>
                                    <th>{{__('Action')}}</th>
                                  </tr>
                            </thead>
                            <tbody>
                                @foreach ($subCategories as $index => $subCategory)
                                    <tr>
                                        <td>{{ ++$index }}</td>
                                        <td>{{ $subCategory->subCategory->name }}</td>
                                        <td>{{ $subCategory->serial }}</td>
                                        <td>
                                            @if($subCategory->status == 1)
                                            <a href="javascript:;" onclick="changeProductCategoryStatus({{ $subCategory->id }})">
                                                <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('Inactive')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>

                                            @else
                                            <a href="javascript:;" onclick="changeProductCategoryStatus({{ $subCategory->id }})">
                                                <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('Inactive')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>

                                            @endif
                                        </td>
                                        <td>
                                        <a href="{{ route('admin.edit-mega-menu-sub-category',$subCategory->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-edit" aria-hidden="true"></i></a>

                                        <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData({{ $subCategory->id }})"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
        $("#deleteForm").attr("action",'{{ url("admin/delete-mega-menu-sub-category/") }}'+"/"+id)
    }
    function changeProductCategoryStatus(id){

        $.ajax({
            type:"put",
            data: { _token : '{{ csrf_token() }}' },
            url:"{{url('/admin/mega-menu-sub-category-status/')}}"+"/"+id,
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
