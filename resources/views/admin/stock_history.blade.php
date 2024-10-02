@extends('admin.master_layout')
@section('title')
    <title>{{ __('Stock History') }}</title>
@endsection
@section('admin-content')
    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>{{ __('Stock History') }}</h1>

            </div>

            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin.add-stock') }}" method="POST">
                                    @csrf
                                    <div class="form-group">
                                        <label for="">{{ __('Product') }}</label>
                                        <input type="text" name="product" class="form-control"
                                            value="{{ $product->name }}" readonly>
                                        <input type="hidden" name="product_id" class="form-control"
                                            value="{{ $product->id }}">
                                    </div>

                                    <div class="form-group">
                                        <label for="">{{ __('Stock In Quantity') }}</label>
                                        <input type="number" name="stock_in" class="form-control">
                                    </div>

                                    <button type="submit" class="btn btn-primary">{{ __('Add Stock') }}</button>
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
                                                <th>{{ __('SN') }}</th>
                                                <th>{{ __('Stock') }}</th>
                                                <th>{{ __('Date') }}</th>
                                                <th>{{ __('Action') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($histories as $index => $history)
                                                <tr>
                                                    <td>{{ ++$index }}</td>
                                                    <td>{{ $history->stock_in }}</td>
                                                    <td>{{ $history->created_at->format('H:ia d F, Y') }}</td>
                                                    <td>
                                                        <a href="javascript:;" data-toggle="modal"
                                                            data-target="#deleteModal" class="btn btn-danger btn-sm"
                                                            onclick="deleteData({{ $history->id }})"><i
                                                                class="fa fa-trash" aria-hidden="true"></i></a>
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
            $("#deleteForm").attr("action", '{{ url('admin/delete-stock/') }}' + "/" + id)
        }
    </script>
@endsection
