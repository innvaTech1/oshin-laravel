@extends('admin.master_layout')
@section('title')
    <title>{{ __('Product Bulk Import') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Product Bulk Import') }}</h1>

            </div>

            <div class="section-body">
                <a href="{{ route('admin.product.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Product List') }}</a>

                <a href="{{ route('admin.product-export') }}" class="btn btn-success"><i class="fas fa-file-export"></i>
                    {{ __('Export Product List') }}</a>

                <a href="{{ route('admin.product-demo-export') }}" class="btn btn-primary"><i
                        class="fas fa-file-export"></i> {{ __('Demo Export') }}</a>

                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.product-import') }}" method="POST"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Import File') }} <span class="text-danger">*</span></label>
                                            <input type="file" id="name" class="form-control-file"
                                                name="import_file" required>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button class="btn btn-primary">{{ __('Upload') }}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="section-body">
                    <div class="card">
                        <div class="card-body">
                            <table class="table table-striped table-bordered table-hover shadow-info">
                                @php
                                    $required = 'Required';
                                    $not_required = 'Not required';
                                    $required_and_unique = 'Required & Unique';
                                @endphp
                                <thead class="thead-dark">
                                    <tr>
                                        <th>{{ __('Field') }}</th>
                                        <th>{{ __('Requirement') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>{{ __('Thumbnail Image') }}</td>
                                        <td>{{ $required }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Name') }}</td>
                                        <td>{{ $required }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Short Name') }}</td>
                                        <td>{{ $required }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Slug') }}</td>
                                        <td>{{ $required_and_unique }} ,
                                            {{ __('Slug and manufacture part no both are same') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Category Id') }}</td>
                                        <td>{{ $required }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Sub category id') }}</td>
                                        <td>{{ __('Haven\'t any sub category please set 0') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Child category id') }}</td>
                                        <td>{{ __('Haven\'t any child category please set 0') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Brand id') }}</td>
                                        <td>{{ __('Haven\'t any child category please set 0') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Sku') }}</td>
                                        <td>{{ $not_required }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Price') }}</td>
                                        <td>{{ $required }}. {{ __('Allowed only numeric value') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Offer price') }}</td>
                                        <td>{{ $not_required }}. {{ __('You can put only numeric value') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Quantity') }}</td>
                                        <td>{{ $required }}. {{ __('You can put only numeric value') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Weight') }}</td>
                                        <td>{{ $required }}. {{ __('You can put only numeric value') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Vendor Id') }}</td>
                                        <td>{{ $required }}. {{ __('Haven\'t any seller or vendor please set 0') }}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Short description') }}</td>
                                        <td>{{ $required }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Long description') }}</td>
                                        <td>{{ $required }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Top Product') }}</td>
                                        <td>{{ $required }}. {{ __('[Yes = 1, No= 0]') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('New Arrival') }}</td>
                                        <td>{{ $required }}. {{ __('[Yes = 1, No= 0]') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Best Product') }}</td>
                                        <td>{{ $required }}. {{ __('[Yes = 1, No= 0]') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Featured Product') }}</td>
                                        <td>{{ $required }}. {{ __('[Yes = 1, No= 0]') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Status') }}</td>
                                        <td>{{ $required }}. {{ __('[Yes = 1, No= 0]') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Is specification') }}</td>
                                        <td>{{ $required }}. {{ __('[Yes = 1, No= 0]') }}</td>
                                    </tr>
                                    <tr>
                                        <td>{{ __('Approve by admin') }}</td>
                                        <td>{{ $required }}. {{ __('[Yes = 1, No= 0]') }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

        </section>
    </div>
@endsection
