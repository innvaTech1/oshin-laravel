@extends('admin.master_layout')
@section('title')
    <title>{{ __('Shipping') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Edit Shipping') }}</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{ route('admin.shipping.index') }}">{{ __('Shipping') }}</a>
                    </div>
                    <div class="breadcrumb-item">{{ __('Edit Shipping') }}</div>
                </div>
            </div>

            <div class="section-body">
                <a href="{{ route('admin.shipping.index') }}" class="btn btn-primary"><i class="fas fa-list"></i>
                    {{ __('Shipping') }}</a>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.shipping.update', $shipping->id) }}" method="POST">
                                    @csrf
                                    @method('PUT')
                                    <div class="row">
                                        <div class="form-group col-12">
                                            <label>{{ __('Title') }} <span class="text-danger">*</span></label>
                                            <input type="text" id="title" class="form-control" name="title"
                                                value="{{ $shipping->title }}">
                                        </div>

                                        @if ($shipping->is_free == 1)
                                            <div class="form-group col-12">
                                                <label>{{ __('Minimum Order Amount') }} <span
                                                        class="text-danger">*</span></label>
                                                <div class="input-group mb-3">
                                                    <span class="input-group-text">{{ currency_icon() }}</span>
                                                    <input type="text" class="form-control" name="minimum_order"
                                                        value="{{ $shipping->minimum_order }}">
                                                </div>
                                            </div>
                                        @else
                                            <div class="form-group col-12">
                                                <label>{{ __('Shipping Coast') }} <span
                                                        class="text-danger">*</span></label>
                                                <div class="input-group mb-3">
                                                    <span class="input-group-text">{{ currency_icon() }}</span>
                                                    <input type="text" class="form-control" name="shipping_coast"
                                                        value="{{ $shipping->fee }}">
                                                </div>
                                            </div>
                                        @endif

                                        <div class="form-group col-12">
                                            <label>{{ __('Description') }} <span class="text-danger">*</span></label>
                                            <textarea name="description" class="form-control text-area-5" id="" cols="30" rows="10">{{ $shipping->description }}</textarea>
                                        </div>


                                        <div class="form-group col-12">
                                            <label>{{ __('Districts') }} <span class="text-danger">*</span></label>
                                            <select name="state_id[]" class="form-control select2" multiple>
                                                @foreach ($states as $state)
                                                    <option value="{{ $state->id }}"
                                                        {{ in_array($state->id, $selectedState) ? 'selected' : '' }}>
                                                        {{ $state->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <button class="btn btn-primary">{{ __('Update') }}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>
@endsection
