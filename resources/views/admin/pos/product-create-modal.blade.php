<div class="modal fade" id="exampleModalLong-2" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-two" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle-1">
                    {{ __('admin.Add New Product') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal-from">
                    <form action="{{ route('admin.product.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="form-group col-12">
                                <label>{{ __('admin.Thumbnail Image Preview') }}</label>
                                <div>
                                    <img id="preview-img" class="admin-img"
                                        src="{{ asset('uploads/website-images/preview.png') }}" alt="">
                                </div>

                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Thumnail Image') }} <span class="text-danger">*</span></label>
                                <input type="file" class="form-control-file" name="thumb_image"
                                    onchange="previewThumnailImage(event)" required>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Short Name') }} <span class="text-danger">*</span></label>
                                <input type="text" id="short_name" class="form-control" name="short_name"
                                    value="{{ old('short_name') }}" required>
                            </div>

                            <div class="form-group col-12">
                                <label>{{ __('admin.Name') }} <span class="text-danger">*</span></label>
                                <input type="text" id="name" class="form-control" name="name"
                                    value="{{ old('name') }}" required>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Slug') }} <span class="text-danger">*</span></label>
                                <input type="text" id="slug" class="form-control" name="slug"
                                    value="{{ old('slug') }}">
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Category') }} <span class="text-danger">*</span></label>
                                <select name="category" class="form-control select2" id="category" required>
                                    <option value="">
                                        {{ __('admin.Select Category') }}</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">
                                            {{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Sub Category') }}</label>
                                <select name="sub_category" class="form-control select2" id="sub_category">
                                    <option value="">
                                        {{ __('admin.Select Sub Category') }}</option>
                                </select>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Child Category') }}</label>
                                <select name="child_category" class="form-control select2" id="child_category">
                                    <option value="">
                                        {{ __('admin.Select Child Category') }}</option>
                                </select>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Brand') }} </label>
                                <select name="brand" class="form-control select2" id="brand">
                                    <option value="">{{ __('admin.Select Brand') }}
                                    </option>
                                    @foreach ($brands as $brand)
                                        <option {{ old('brand') == $brand->id ? 'selected' : '' }}
                                            value="{{ $brand->id }}">
                                            {{ $brand->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.SKU') }} </label>
                                <input type="text" class="form-control" name="sku">
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Price') }} <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="price" value="{{ old('price') }}"
                                    required>
                            </div>
                            <div class="form-group col-6">
                                <label>{{ __('admin.Offer Price') }}</label>
                                <input type="text" class="form-control" name="offer_price"
                                    value="{{ old('offer_price') }}">
                            </div>



                            <div class="form-group col-6">
                                <label>{{ __('admin.Stock Quantity') }} <span class="text-danger">*</span></label>
                                <input type="number" class="form-control" name="quantity"
                                    value="{{ old('quantity') }}" required>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Weight') }} <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="weight"
                                    value="{{ old('weight') }}" required>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Short Description') }} <span class="text-danger">*</span></label>
                                <textarea name="short_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ old('short_description') }}</textarea>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('admin.Long Description') }} <span class="text-danger">*</span></label>
                                <textarea name="long_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ old('long_description') }}</textarea>
                            </div>

                            <div class="form-group col-12">
                                <label>{{ __('admin.Highlight') }}</label>
                                <div>
                                    <input type="checkbox"name="top_product" id="top_product"> <label
                                        for="top_product" class="mr-3">{{ __('admin.Top Product') }}</label>

                                    <input type="checkbox" name="new_arrival" id="new_arrival"> <label
                                        for="new_arrival" class="mr-3">{{ __('admin.New Arrival') }}</label>

                                    <input type="checkbox" name="best_product" id="best_product"> <label
                                        for="best_product" class="mr-3">{{ __('admin.Best Product') }}</label>

                                    <input type="checkbox" name="is_featured" id="is_featured"> <label
                                        for="is_featured" class="mr-3">{{ __('admin.Featured Product') }}</label>
                                </div>
                            </div>

                            <div class="form-group col-12">
                                <label>{{ __('admin.Status') }} <span class="text-danger">*</span></label>
                                <select name="status" class="form-control" required>
                                    <option value="1">{{ __('admin.Active') }}
                                    </option>
                                    <option value="0">{{ __('admin.Inactive') }}
                                    </option>
                                </select>
                            </div>




                            <div class="form-group col-12">
                                <label>{{ __('admin.SEO Title') }}</label>
                                <input type="text" class="form-control" name="seo_title"
                                    value="{{ old('seo_title') }}">
                            </div>

                            <div class="form-group col-12">
                                <label>{{ __('admin.SEO Description') }}</label>
                                <textarea name="seo_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ old('seo_description') }}</textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <button type="submit" class="modal-from-btm-btn">{{ __('admin.Save') }}</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
