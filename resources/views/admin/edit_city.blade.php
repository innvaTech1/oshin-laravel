@extends('admin.master_layout')
@section('title')
<title>{{__('City')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Edit City')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item active"><a href="{{ route('admin.city.index') }}">{{__('City')}}</a></div>
              <div class="breadcrumb-item">{{__('Edit City')}}</div>
            </div>
          </div>

          <div class="section-body">
            <a href="{{ route('admin.city.index') }}" class="btn btn-primary"><i class="fas fa-list"></i> {{__('City')}}</a>
            <div class="row mt-4">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                        <form action="{{ route('admin.city.update',$city->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="form-group col-12">
                                    <label>{{__('State')}} <span class="text-danger">*</span></label>
                                    <select name="state" id="state_id" class="form-control select2">
                                        <option value="">{{__('Select State')}}</option>
                                        @foreach ($states as $state)
                                        <option {{ $city->country_state_id == $state->id ? 'selected' : '' }} value="{{ $state->id }}">{{ $state->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('City Name')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="name" class="form-control"  name="name" value="{{ $city->name }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('Status')}} <span class="text-danger">*</span></label>
                                    <select name="status" class="form-control">
                                        <option {{ $city->status ==1 ? 'selected' : '' }} value="1">{{__('Active')}}</option>
                                        <option {{ $city->status == 0 ? 'selected' : '' }} value="0">{{__('Inactive')}}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <button class="btn btn-primary">{{__('Save')}}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                  </div>
                </div>
          </div>
        </section>
      </div>
      <script>
        (function($) {
            "use strict";
            $(document).ready(function () {

                $("#country_id").on("change",function(){
                    var countryId = $("#country_id").val();
                    if(countryId){
                        $.ajax({
                            type:"get",
                            url:"{{url('/admin/state-by-country/')}}"+"/"+countryId,
                            success:function(response){
                                $("#state_id").html(response.states);
                            },
                            error:function(err){
                                console.log(err);
                            }
                        })
                    }else{
                        var response= "<option value=''>{{__('Select a State')}}</option>";
                        $("#state_id").html(response);
                    }

                })
            });
        })(jQuery);
    </script>
@endsection
