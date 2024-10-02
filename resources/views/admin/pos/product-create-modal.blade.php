<div class="modal fade" id="exampleModalLong-2" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-two" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle-1">
                    {{ __('Add New Product') }}</h5>
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
                                <label>{{ __('Thumbnail Image Preview') }}</label>
                                <div>
                                    <img id="preview-img" class="admin-img"
                                        src="{{ asset('uploads/website-images/preview.png') }}" alt="">
                                </div>

                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Thumnail Image') }} <span class="text-danger">*</span></label>
                                <input type="file" class="form-control-file" name="thumb_image"
                                    onchange="previewThumnailImage(event)" required>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Short Name') }} <span class="text-danger">*</span></label>
                                <input type="text" id="short_name" class="form-control" name="short_name"
                                    value="{{ old('short_name') }}" required>
                            </div>

                            <div class="form-group col-12">
                                <label>{{ __('Name') }} <span class="text-danger">*</span></label>
                                <input type="text" id="name" class="form-control" name="name"
                                    value="{{ old('name') }}" required>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Slug') }} <span class="text-danger">*</span></label>
                                <input type="text" id="slug" class="form-control" name="slug"
                                    value="{{ old('slug') }}">
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Category') }} <span class="text-danger">*</span></label>
                                <select name="category" class="form-control select2" id="category" required>
                                    <option value="">
                                        {{ __('Select Category') }}</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">
                                            {{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Sub Category') }}</label>
                                <select name="sub_category" class="form-control select2" id="sub_category">
                                    <option value="">
                                        {{ __('Select Sub Category') }}</option>
                                </select>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Child Category') }}</label>
                                <select name="child_category" class="form-control select2" id="child_category">
                                    <option value="">
                                        {{ __('Select Child Category') }}</option>
                                </select>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Brand') }} </label>
                                <select name="brand" class="form-control select2" id="brand">
                                    <option value="">{{ __('Select Brand') }}
                                    </option>
                                    @foreach ($brands as $brand)
                                        <option {{ old('brand') == $brand->id ? 'selected' : '' }}
                                            value="{{ $brand->id }}">
                                            {{ $brand->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('SKU') }} </label>
                                <input type="text" class="form-control" name="sku">
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Price') }} <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="price" value="{{ old('price') }}"
                                    required>
                            </div>
                            <div class="form-group col-6">
                                <label>{{ __('Offer Price') }}</label>
                                <input type="text" class="form-control" name="offer_price"
                                    value="{{ old('offer_price') }}">
                            </div>



                            <div class="form-group col-6">
                                <label>{{ __('Stock Quantity') }} <span class="text-danger">*</span></label>
                                <input type="number" class="form-control" name="quantity"
                                    value="{{ old('quantity') }}" required>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Weight') }} <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" name="weight"
                                    value="{{ old('weight') }}" required>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Short Description') }} <span class="text-danger">*</span></label>
                                <textarea name="short_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ old('short_description') }}</textarea>
                            </div>

                            <div class="form-group col-6">
                                <label>{{ __('Long Description') }} <span class="text-danger">*</span></label>
                                <textarea name="long_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ old('long_description') }}</textarea>
                            </div>

                            <div class="form-group col-12">
                                <label>{{ __('Highlight') }}</label>
                                <div>
                                    <input type="checkbox"name="top_product" id="top_product"> <label
                                        for="top_product" class="mr-3">{{ __('Top Product') }}</label>

                                    <input type="checkbox" name="new_arrival" id="new_arrival"> <label
                                        for="new_arrival" class="mr-3">{{ __('New Arrival') }}</label>

                                    <input type="checkbox" name="best_product" id="best_product"> <label
                                        for="best_product" class="mr-3">{{ __('Best Product') }}</label>

                                    <input type="checkbox" name="is_featured" id="is_featured"> <label
                                        for="is_featured" class="mr-3">{{ __('Featured Product') }}</label>
                                </div>
                            </div>

                            <div class="form-group col-12">
                                <label>{{ __('Status') }} <span class="text-danger">*</span></label>
                                <select name="status" class="form-control" required>
                                    <option value="1">{{ __('Active') }}
                                    </option>
                                    <option value="0">{{ __('Inactive') }}
                                    </option>
                                </select>
                            </div>




                            <div class="form-group col-12">
                                <label>{{ __('SEO Title') }}</label>
                                <input type="text" class="form-control" name="seo_title"
                                    value="{{ old('seo_title') }}">
                            </div>

                            <div class="form-group col-12">
                                <label>{{ __('SEO Description') }}</label>
                                <textarea name="seo_description" id="" cols="30" rows="10" class="form-control text-area-5">{{ old('seo_description') }}</textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <button type="submit" class="modal-from-btm-btn">{{ __('Save') }}</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
