@extends('admin.master_layout')
@section('title')
<title>{{__('Contact Message')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Contact Message')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item">{{__('Contact Message')}}</div>
            </div>
          </div>

        <div class="section-body">
            <div class="row mt-4">
                <div class="col">
                    <div class="card">
                        <div class="card-header">
                        <div class="card-body">
                            <div class="alert alert-warning" role="alert">
                              <p>{{__('If you want to save contact message in database, please enable this button and if you wan"t to save contact message in database, please disable this button')}}</p>
                              <p class="mb-0"></p>
                            </div>

                            @if ($setting->enable_save_contact_message == 1)
                                <a href="javascript:;" onclick="handleSaveContactMessage()">
                                    <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Enable')}}" data-off="{{__('Disable')}}" data-onstyle="success" data-offstyle="danger">
                                </a>
                            @else
                                <a href="javascript:;" onclick="handleSaveContactMessage()">
                                    <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Enable')}}" data-off="{{__('Disable')}}" data-onstyle="success" data-offstyle="danger">
                                </a>
                            @endif

                        </div>
                    </div>
                </div>
            </div>
        </div>

          <div class="section-body">
            <div class="row mt-4">
                <div class="col">
                  <div class="card">
                    <div class="card-body">
                      <div class="table-responsive table-invoice">
                        <table class="table table-striped" id="dataTable">
                            <thead>
                                <tr>
                                    <th width="5%">{{__('SN')}}</th>
                                    <th width="10%">{{__('Name')}}</th>
                                    <th width="15%">{{__('Email')}}</th>
                                    <th width="10%">{{__('Phone')}}</th>
                                    <th width="20%">{{__('Subject')}}</th>
                                    <th width="35%">{{__('Message')}}</th>
                                    <th width="5%">{{__('Action')}}</th>
                                  </tr>
                            </thead>
                            <tbody>
                                @foreach ($contactMessages as $index => $contactMessage)
                                    <tr>
                                        <td>{{ ++$index }}</td>
                                        <td>{{ $contactMessage->name }}</td>
                                        <td>{{ $contactMessage->email }}</td>
                                        <td>{{ $contactMessage->phone }}</td>
                                        <td>{{ $contactMessage->subject }}</td>
                                        <td>{{ $contactMessage->message }}</td>

                                        <td>
                                        <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData({{ $contactMessage->id }})"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
          function handleSaveContactMessage(){

              $.ajax({
                type:"put",
                data: { _token : '{{ csrf_token() }}' },
                url:"{{ url('/admin/enable-save-contact-message') }}",
                success:function(response){
                   toastr.success(response)
                },
                error:function(err){
                    console.log(err);
                }
              })
          }

        function deleteData(id){
            $("#deleteForm").attr("action",'{{ url("admin/delete-contact-message/") }}'+"/"+id)
        }

      </script>
@endsection
