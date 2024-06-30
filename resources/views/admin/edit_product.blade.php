@extends('admin.master_layout')
@section('title')
<title>{{__('admin.Products')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('admin.Edit Product')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('admin.Dashboard')}}</a></div>
              <div class="breadcrumb-item">{{__('admin.Edit Product')}}</div>
            </div>
          </div>

          <div class="section-body">
            <a href="{{ route('admin.product.index') }}" class="btn btn-primary"><i class="fas fa-list"></i> {{__('admin.Products')}}</a>
            <div class="row mt-4">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                        <form action="{{ route('admin.product.update',$product->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="form-group col-12">
                                    <label>{{__('admin.Thumbnail Image Preview')}}</label>
                                    <div>
                                        <img id="preview-img" class="admin-img" src="{{ asset($product->thumb_image) }}" alt="">
                                    </div>

                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Thumnail Image')}} <span class="text-danger">*</span></label>
                                    <input type="file" class="form-control-file"  name="thumb_image" onchange="previewThumnailImage(event)">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Short Name')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="short_name" class="form-control"  name="short_name" value="{{ $product->short_name }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Name')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="name" class="form-control"  name="name" value="{{ $product->name }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Slug')}} <span class="text-danger">*</span></label>
                                    <input type="text" id="slug" class="form-control"  name="slug" value="{{ $product->slug }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Category')}} <span class="text-danger">*</span></label>
                                    <select name="category" class="form-control select2" id="category">
                                        <option value="">{{__('admin.Select Category')}}</option>
                                        @foreach ($categories as $category)
                                            <option {{ $product->category_id == $category->id ? 'selected' : '' }} value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Sub Category')}}</label>
                                    <select name="sub_category" class="form-control select2" id="sub_category">
                                        <option value="">{{__('admin.Select Sub Category')}}</option>
                                        @if ($product->sub_category_id != 0)
                                            @foreach ($subCategories as $subCategory)
                                            <option {{ $product->sub_category_id == $subCategory->id ? 'selected' : '' }} value="{{ $subCategory->id }}">{{ $subCategory->name }}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Child Category')}}</label>
                                    <select name="child_category" class="form-control select2" id="child_category">
                                        <option value="">{{__('admin.Select Child Category')}}</option>
                                        @if ($product->child_category_id != 0)
                                            @foreach ($childCategories as $childCategory)
                                            <option {{ $product->child_category_id == $childCategory->id ? 'selected' : '' }} value="{{ $childCategory->id }}">{{ $childCategory->name }}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Delivery Area')}} </label>
                                    <select name="city_id" class="form-control select2" id="city_id">
                                        <option value="">{{__('admin.Delivery Area')}}</option>
                                        @foreach ($cities as $city)
                                            <option {{ old('city_id') == $city->id ? 'selected' : '' }} value="{{ $city->id }}">{{ $city->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Brand')}}</label>
                                    <select name="brand" class="form-control select2" id="brand">
                                        <option value="">{{__('admin.Select Brand')}}</option>
                                        @foreach ($brands as $brand)
                                            <option {{ $product->brand_id == $brand->id ? 'selected' : '' }} value="{{ $brand->id }}">{{ $brand->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{ __('admin.SKU') }} </label>
                                    <div class="input-group">
                                        <input type="text" name="sku" class="form-control currency"
                                            id="sku" required value="{{ $product->sku }}">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text sku_generate">
                                                <i class="fas fa-barcode"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Price')}} <span class="text-danger">* </span></label>
                                   <input type="text" class="form-control" name="price" value="{{ $product->price }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Offer Price')}} <span class="text-danger"> </span></label>
                                   <input type="text" class="form-control" name="offer_price" value="{{ $product->offer_price }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Stock Quantity')}} <span class="text-danger">*</span></label>
                                   <input type="number" class="form-control" name="quantity" value="{{ $product->qty }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Weight')}} <span class="text-danger">*</span></label>
                                   <input type="text" class="form-control" name="weight" value="{{ $product->weight }}">
                                </div>



                                <div class="form-group col-12">
                                    <label>{{__('admin.Short Description') }} <span class="text-danger">*</span></label>
                                    <textarea name="short_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ $product->short_description }}</textarea>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Long Description')}} <span class="text-danger">*</span></label>
                                    <textarea name="long_description" id="" cols="30" rows="10" class="summernote">{{ $product->long_description }}</textarea>
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.Highlight')}}</label>
                                    <div>

                                        <input {{ $product->is_top == 1 ? 'checked' : '' }} type="checkbox"name="top_product" id="top_product"> <label for="top_product" class="mr-3" >{{__('admin.Top Product')}}</label>

                                        <input {{ $product->new_product == 1 ? 'checked' : '' }}  type="checkbox" name="new_arrival" id="new_arrival"> <label for="new_arrival" class="mr-3" >{{__('admin.New Arrival')}}</label>

                                        <input {{ $product->is_best == 1 ? 'checked' : '' }}  type="checkbox" name="best_product" id="best_product"> <label for="best_product" class="mr-3" >{{__('admin.Best Product')}}</label>

                                        <input {{ $product->is_featured == 1 ? 'checked' : '' }}  type="checkbox" name="is_featured" id="is_featured"> <label for="is_featured" class="mr-3" >{{__('admin.Featured Product')}}</label>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label>{{ __('Take Pre Order?') }} </span></label>
                                                            <select name="is_pre_order" class="form-control"
                                                                id="is_pre_order">
                                                                <option value="0"
                                                                    @if (old('is_pre_order') == 0 || $product->is_pre_order == 0) selected @endif>
                                                                    {{ __('No') }}</option>
                                                                <option value="1"
                                                                    @if (old('is_pre_order') == 1 || $product->is_pre_order == 1) selected @endif>
                                                                    {{ __('Yes') }}</option>
                                                            </select>
                                                            @error('is_pre_order')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div
                                                        class="col-md-12 {{ $product->is_pre_order ? '' : 'd-none' }} release_date">
                                                        <div class="form-group">
                                                            <label>{{ __('Release Date') }} </label>
                                                            <input type="text" name="release_date"
                                                                class="form-control datepicker"
                                                                @if (!$product->is_pre_order) disabled @endif
                                                                value="{{ $product->release_date }}" />
                                                            @error('release_date')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div
                                                        class="col-md-12 {{ $product->is_pre_order ? '' : 'd-none' }} max_product">
                                                        <div class="form-group">
                                                            <label>{{ __('Max Quantity') }} <span
                                                                    class="text-danger">*</span></label>
                                                            <input type="number" name="max_product" class="form-control"
                                                                @if (!$product->is_pre_order) disabled @endif
                                                                value="{{ $product->max_product }}" />
                                                            @error('max_product')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label>{{ __('Has Partial Payment?') }} </label>
                                                            <select name="is_partial" class="form-control"
                                                                id="is_partial">
                                                                <option value="0"
                                                                    @if (old('is_partial') == 0 || $product->is_partial == 0) selected @endif>
                                                                    {{ __('No') }}</option>
                                                                <option value="1"
                                                                    @if (old('is_partial') == 1 || $product->is_partial == 1) selected @endif>
                                                                    {{ __('Yes') }}</option>
                                                            </select>
                                                            @error('is_partial')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div
                                                        class="col-md-12 {{ !$product->partial_amount ? 'd-none' : '' }} partial_amount">
                                                        <div class="form-group">
                                                            <label>{{ __('Partial Amount') }} <span
                                                                    class="text-danger">*</span></label>
                                                            <input type="text" name="partial_amount"
                                                                class="form-control"
                                                                @if (!$product->partial_amount) disabled @endif value="{{ $product->partial_amount }}"/>
                                                            @error('partial_amount')
                                                                <span class="text-danger">{{ $message }}</span>
                                                            @enderror
                                                        </div>
                                                    </div>


                                @if ($product->vendor_id != 0)
                                    <div class="form-group col-12">
                                        <label>{{__('admin.Administrator Status')}} <span data-toggle="tooltip" data-placement="top" class="fa fa-info-circle text--primary" title="Only for seller product"></span> <span class="text-danger">*</span></label>
                                        <select name="approve_by_admin" class="form-control">
                                            <option {{ $product->approve_by_admin == 1 ? 'selected' : '' }} value="1">{{__('admin.Approved')}}</option>
                                            <option {{ $product->approve_by_admin == 0 ? 'selected' : '' }} value="0">{{__('admin.Pending')}}</option>
                                        </select>
                                    </div>
                                @endif

                                <div class="form-group col-12">
                                    <label>{{__('admin.Status')}} <span class="text-danger">*</span></label>
                                    <select name="status" class="form-control">
                                        <option {{ $product->status == 1 ? 'selected' : '' }} value="1">{{__('admin.Active')}}</option>
                                        <option {{ $product->status == 0 ? 'selected' : '' }} value="0">{{__('admin.Inactive')}}</option>
                                    </select>
                                </div>


                                <div class="form-group col-12">
                                    <label>{{__('admin.SEO Title')}}</label>
                                   <input type="text" class="form-control" name="seo_title" value="{{ $product->seo_title }}">
                                </div>

                                <div class="form-group col-12">
                                    <label>{{__('admin.SEO Description')}}</label>
                                    <textarea name="seo_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ $product->seo_description }}</textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <button class="btn btn-primary">{{__('admin.Update')}}</button>
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
        var specification = '{{ $product->is_specification == 1 ? true : false }}';
        $(document).ready(function () {
            $("#name").on("focusout",function(e){
                $("#slug").val(convertToSlug($(this).val()));
            })

            $("#category").on("change",function(){
                var categoryId = $("#category").val();
                if(categoryId){
                    $.ajax({
                        type:"get",
                        url:"{{url('/admin/subcategory-by-category/')}}"+"/"+categoryId,
                        success:function(response){
                            $("#sub_category").html(response.subCategories);
                            var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
                            $("#child_category").html(response);

                        },
                        error:function(err){
                            console.log(err);

                        }
                    })
                }else{
                    var response= "<option value=''>{{__('admin.Select Sub Category')}}</option>";
                    $("#sub_category").html(response);
                    var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
                    $("#child_category").html(response);
                }


            })

            $("#sub_category").on("change",function(){
                var SubCategoryId = $("#sub_category").val();
                if(SubCategoryId){
                    $.ajax({
                        type:"get",
                        url:"{{url('/admin/childcategory-by-subcategory/')}}"+"/"+SubCategoryId,
                        success:function(response){
                            $("#child_category").html(response.childCategories);
                        },
                        error:function(err){
                            console.log(err);

                        }
                    })
                }else{
                    var response= "<option value=''>{{__('admin.Select Child Category')}}</option>";
                    $("#child_category").html(response);
                }

            })

            $("#is_return").on('change',function(){
                var returnId = $("#is_return").val();
                if(returnId == 1){
                    $("#policy_box").removeClass('d-none');
                }else{
                    $("#policy_box").addClass('d-none');
                }

            })

            $("#addNewSpecificationRow").on('click',function(){
                var html = $("#hidden-specification-box").html();
                $("#specification-box").append(html);
            })

            $(document).on('click', '.deleteSpeceficationBtn', function () {
                $(this).closest('.delete-specification-row').remove();
            });


            $("#manageSpecificationBox").on("click",function(){
                if(specification){
                    specification = false;
                    $("#specification-box").addClass('d-none');
                }else{
                    specification = true;
                    $("#specification-box").removeClass('d-none');
                }


            })

            $(".removeExistSpecificationRow").on("click",function(){
                var isDemo = "{{ env('APP_VERSION') }}"
                if(isDemo == 0){
                    toastr.error('This Is Demo Version. You Can Not Change Anything');
                    return;
                }
                var specificationId = $(this).attr("data-specificationiId");
                $.ajax({
                    type:"put",
                    data: { _token : '{{ csrf_token() }}' },
                    url:"{{url('/admin/removed-product-exist-specification/')}}"+"/"+specificationId,
                    success:function(response){
                        toastr.success(response)
                        $("#existSpecificationBox-"+specificationId).remove();
                    },
                    error:function(err){
                        console.log(err);

                    }
                })
            })
            $('.sku_generate').on('click', function() {
                var sku = Math.floor(10000000 + Math.random() * 90000000);
                $('[name="sku"]').val(sku);
            })
            $('[name="is_partial"]').on('change', function() {
                    var is_partial = $(this).val();
                    changeAttr(is_partial, 'partial_amount')
                })
                $('[name="is_pre_order"]').on('change', function() {
                    var is_partial = $(this).val();
                    changeAttr(is_partial, 'release_date')
                    changeAttr(is_partial, 'max_product')
                })
        });
    })(jQuery);

    function convertToSlug(Text){
            return Text
                .toLowerCase()
                .replace(/[^\w ]+/g,'')
                .replace(/ +/g,'-');
    }

    function previewThumnailImage(event) {
        var reader = new FileReader();
        reader.onload = function(){
            var output = document.getElementById('preview-img');
            output.src = reader.result;
        }
        reader.readAsDataURL(event.target.files[0]);
    };

    function changeAttr(val, selectorName) {
        if (val == 1) {
            $(`[name="${selectorName}"]`).attr('required', true);
            $(`.${selectorName}`).removeClass('d-none')
            $(`[name="${selectorName}"]`).removeAttr('disabled');
        } else {
            $(`[name="${selectorName}"]`).removeAttr('required');
            $(`[name="${selectorName}"]`).attr('disabled');
            $(`.${selectorName}`).addClass('d-none')
        }
    }

</script>


@endsection