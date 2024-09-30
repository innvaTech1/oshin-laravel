@extends('admin.master_layout')
@section('title')
<title>{{__('Campaign Product')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('Campaign Product')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('Dashboard')}}</a></div>
              <div class="breadcrumb-item active"><a href="{{ route('admin.campaign.index') }}">{{__('Campaign')}}</a></div>
              <div class="breadcrumb-item">{{__('Campaign Product')}}</div>
            </div>
          </div>

        <div class="section-body">
            <a href="{{ route('admin.campaign.index') }}" class="btn btn-primary"><i class="fas fa-list"></i> {{__('Campaign')}}</a>
            <div class="row mt-4">
                <div class="col">
                  <div class="card">
                        <div class="card-body">
                            <form action="{{ route('admin.store-campaign-product') }}" method="post">
                                @csrf
                                <div class="form-group">
                                    <label for="">{{__('Campaign')}}</label>
                                    <input type="text" value="{{ $campaign->name }}" readonly class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">{{__('Product')}}</label>
                                    <select name="product_id" id="product_id" class="form-control select2">
                                        <option value="">{{__('Select Product')}}</option>
                                        @foreach ($products as $index => $product)
                                        <option value="{{ $product->id }}">{{ $product->name }}</option>
                                        @endforeach
                                    </select>
                                    <input type="hidden" name="campaign_id" value="{{ $campaign->id }}">
                                </div>

                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="">{{__('Show Homepage?')}}</label>
                                            <select name="show_homepage" id="show_homepage" class="form-control">
                                                <option value="0">{{__('No')}}</option>
                                                <option value="1">{{__('Yes')}}</option>
                                            </select>
                                            <input type="hidden" name="campaign_id" value="{{ $campaign->id }}">
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="">{{__('Status')}}</label>
                                            <select name="status" id="status" class="form-control">
                                                <option value="1">{{__('Yes')}}</option>
                                                <option value="0">{{__('No')}}</option>
                                            </select>
                                            <input type="hidden" name="campaign_id" value="{{ $campaign->id }}">
                                        </div>
                                    </div>
                                </div>

                                <button class="btn btn-primary" type="submit">{{__('Save')}}</button>
                            </form>
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
                                    <th width="50%">{{__('Product')}}</th>
                                    <th width="10%">{{__('Show Homepage')}}</th>
                                    <th width="10%">{{__('Status')}}</th>
                                    <th width="5%">{{__('Action')}}</th>
                                  </tr>
                            </thead>
                            <tbody>
                                @foreach ($campaignProducts as $index => $campaignProduct)
                                    <tr>
                                        <td>{{ ++$index }}</td>
                                        <td>{{ $campaignProduct->product->short_name }}</td>
                                        <td>
                                            @if ($campaignProduct->show_homepage == 1)
                                                <a href="javascript:;" onclick="changeCamapaignProductHomepageVisibility({{ $campaignProduct->id }})">
                                                    <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Enable')}}" data-off="{{__('Disable')}}" data-onstyle="success" data-offstyle="danger">
                                                </a>
                                            @else
                                            <a href="javascript:;" onclick="changeCamapaignProductHomepageVisibility({{ $campaignProduct->id }})">
                                                <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Enable')}}" data-off="{{__('Disable')}}" data-onstyle="success" data-offstyle="danger">
                                            </a>
                                            @endif
                                        </td>
                                        <td>
                                            @if($campaignProduct->status == 1)
                                                <a href="javascript:;" onclick="changeCamapaignProductStatus({{ $campaignProduct->id }})">
                                                    <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('Inactive')}}" data-onstyle="success" data-offstyle="danger">
                                                </a>
                                            @else
                                                <a href="javascript:;" onclick="changeCamapaignProductStatus({{ $campaignProduct->id }})">
                                                    <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('Active')}}" data-off="{{__('Inactive')}}" data-onstyle="success" data-offstyle="danger">
                                                </a>
                                            @endif
                                        </td>
                                        <td>
                                        <a href="javascript:;" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm" onclick="deleteData({{ $campaignProduct->id }})"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
        $("#deleteForm").attr("action",'{{ url("admin/delete-campaign-product/") }}'+"/"+id)
    }
    function changeCamapaignProductStatus(id){

        $.ajax({
            type:"put",
            data: { _token : '{{ csrf_token() }}' },
            url:"{{url('/admin/campaign-product-status/')}}"+"/"+id,
            success:function(response){
                toastr.success(response)
            },
            error:function(err){
                console.log(err);

            }
        })
    }

    function changeCamapaignProductHomepageVisibility(id){

        $.ajax({
            type:"put",
            data: { _token : '{{ csrf_token() }}' },
            url:"{{url('/admin/campaign-product-homepage-visibility/')}}"+"/"+id,
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
