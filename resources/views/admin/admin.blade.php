@extends('admin.master_layout')

@section('title')
    <title>{{ __('Admin') }}</title>
@endsection

@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Admin') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Admin') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.admin.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
                    {{ __('Add New') }}</a>
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive table-invoice">
                                    <table class="table table-striped" id="dataTable">
                                        <thead>
                                            <tr>
                                                <th>{{ __('SN') }}</th>
                                                <th>{{ __('Name') }}</th>
                                                <th>{{ __('Email') }}</th>
                                                <th>{{ __('Image') }}</th>
                                                <th>{{ __('Status') }}</th>
                                                <th>{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($admins as $index => $admin)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $admin->name }}</td>
                                                    <td>{{ $admin->email }}</td>
                                                    <td>
                                                        @if ($admin->image)
                                                            <img src="{{ asset($admin->image) }}" alt=""
                                                                width="80px" class="rounded-circle">
                                                        @else
                                                            <img src="{{ asset($defaultProfile->image) }}" alt=""
                                                                width="80px" class="rounded-circle">
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($admin->admin_type == 0)
                                                            @if ($admin->status == 1)
                                                                <a href="javascript:;"
                                                                    onclick="changeAdminStatus({{ $admin->id }})">
                                                                    <input id="status_toggle" type="checkbox" checked
                                                                        data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                        data-off="{{ __('Inactive') }}"
                                                                        data-onstyle="success" data-offstyle="danger">
                                                                </a>
                                                            @else
                                                                <a href="javascript:;"
                                                                    onclick="changeAdminStatus({{ $admin->id }})">
                                                                    <input id="status_toggle" type="checkbox"
                                                                        data-toggle="toggle" data-on="{{ __('Active') }}"
                                                                        data-off="{{ __('Inactive') }}"
                                                                        data-onstyle="success" data-offstyle="danger">
                                                                </a>
                                                            @endif
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @if ($admin->admin_type == 0)
                                                            <!-- Edit Button -->
                                                            <a href="{{ route('admin.admin.edit', $admin->id) }}"
                                                                class="btn btn-warning btn-sm">
                                                                <i class="fa fa-edit" aria-hidden="true"></i>
                                                            </a>
                                                            <!-- Delete Button -->
                                                            <a href="javascript:;" data-toggle="modal"
                                                                data-target="#deleteModal" class="btn btn-danger btn-sm"
                                                                onclick="deleteData({{ $admin->id }})">
                                                                <i class="fa fa-trash" aria-hidden="true"></i>
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
                </div>
        </section>
    </div>

    <script>
        function deleteData(id) {
            $("#deleteForm").attr("action", '{{ url('admin/admin/') }}' + "/" + id)
        }

        function changeAdminStatus(id) {
            $.ajax({
                type: "put",
                data: {
                    _token: '{{ csrf_token() }}'
                },
                url: "{{ url('/admin/admin-status/') }}" + "/" + id,
                success: function(response) {
                    toastr.success(response)
                },
                error: function(err) {
                    console.log(err);
                }
            })
        }
    </script>
@endsection
