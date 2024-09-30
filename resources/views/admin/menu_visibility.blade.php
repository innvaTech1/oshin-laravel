@extends('admin.master_layout')
@section('title')
<title>{{__('Menu visibility')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Menu visibility')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item">{{__('Menu visibility')}}</div>
            </div>
          </div>

          <div class="section-body">
            <div class="row mt-4">
                <div class="col">
                  <div class="card">
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <th>{{__('Menu')}}</th>
                                <th>{{__('Visibility')}}</th>
                            </thead>
                            <tbody>
                                @foreach ($menus as $menu)
                                    <tr>
                                        <td width="50%">{{ $menu->menu_name }}</td>
                                        <td width="50%">
                                            @if ($menu->status)
                                                <a href="javascript:;" onclick="changeMenuVisibility({{ $menu->id }})">
                                                    <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('InActive')}}" data-onstyle="success" data-offstyle="danger">
                                                </a>
                                            @else
                                                <a href="javascript:;" onclick="changeMenuVisibility({{ $menu->id }})">
                                                    <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('InActive')}}" data-onstyle="success" data-offstyle="danger">
                                                </a>
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

      <script>
          function changeMenuVisibility(id){

            $.ajax({
                type:"put",
                data: { _token : '{{ csrf_token() }}' },
                url:"{{url('/admin/update-menu-visibility/')}}"+"/"+id,
                success:function(response){
                   toastr.success(response)
                },
                error:function(err){

                }
            })
          }
      </script>

@endsection
