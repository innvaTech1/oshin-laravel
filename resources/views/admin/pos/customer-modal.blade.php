<div class="modal fade" id="exampleModalLong-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-two" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle-1">
                    {{ __('Add New Customer') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal-from">
                    <form action="{{ route('admin.pos.add.customer') }}" method="post">
                        @csrf
                        <div class="from-item-main">
                            <div class="modal-from-item-d-b">
                                <div class="modal-from-inner">
                                    <label for="exampleFormControlInput1" class="form-label">{{ __('Full Name') }}
                                        <span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" name="name"
                                        id="exampleFormControlInput1" placeholder=" Name" required>
                                </div>
                            </div>
                            <div class="modal-from-item modal-from-item-two">
                                <div class="modal-from-inner">
                                    <label for="exampleFormControlInput1" class="form-label">{{ __('Email Address') }}
                                        <span style="color: red;">*</span></label>
                                    <input type="email" class="form-control" name="email"
                                        id="exampleFormControlInput5" placeholder="infoyour@gmail.com" required>
                                </div>
                                <div class="modal-from-inner">
                                    <label for="exampleFormControlInput1" class="form-label">{{ __('Phone Number') }}
                                        <span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" name="phone"
                                        id="exampleFormControlInput4" placeholder="Phone Number" required>
                                </div>
                            </div>

                            <div class="from-select-main">
                                <div class="from-select-main-item">
                                    <label for="exampleFormControlInput1" class="form-label">{{ __('Country') }}
                                        <span style="color: red;">*</span></label>
                                    <div class="from-select-main">
                                        <select class="form-control select2" name="country" required>
                                            @foreach ($countries as $key => $country)
                                                <option value="{{ $country->id }}">
                                                    {{ $country->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="from-select-main-item-two">
                                <div class="from-select-main">
                                    <div class="from-select-main-item">
                                        <label for="exampleFormControlInput1" class="form-label">{{ __('State') }}
                                            <span style="color: red;">*</span></label>
                                        <div class="from-select-main">


                                            <select class="form-control select2" name="state"
                                                aria-label="Default select example"@required(true)>
                                                <option value="" disabled selected>
                                                    {{ __('Select a Country') }}
                                                </option>
                                                @php
                                                    $stateCount = count($state);
                                                @endphp
                                                @foreach ($state as $key => $state)
                                                    @if ($key < $stateCount - 0)
                                                        <option value="{{ $state->id }}">
                                                            {{ $state->name }}
                                                        </option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="from-select-main">
                                    <div class="from-select-main-item">
                                        <label for="exampleFormControlInput1" class="form-label">{{ __('City') }}
                                            <span style="color: red;">*</span></label>
                                        <div class="from-select-main">


                                            <select class="form-control select2" name="city"
                                                aria-label="Default select example" required>
                                                <option value="" disabled selected>
                                                    {{ __('Select a Country') }}
                                                </option>
                                                @php
                                                    $cityCount = count($city);
                                                @endphp
                                                @foreach ($city as $key => $city)
                                                    @if ($key < $cityCount - 0)
                                                        <option value="{{ $city->id }}">
                                                            {{ $city->name }}
                                                        </option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class=" modal-from-item-d-b">
                                <div class="modal-from-inner">
                                    <label for="exampleFormControlInput1" class="form-label">{{ __('Address') }}
                                        <span style="color: red;">*</span></label>
                                    <textarea class="form-control" name="address" id="" cols="30" rows="10"></textarea>
                                </div>
                            </div>

                            <div class="modal-from-item-check">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="location" id="homeRadio"
                                        value="Home">
                                    <label class="form-check-label" for="homeRadio">
                                        {{ __('Home') }}
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="location" id="officeRadio"
                                        value="Office">
                                    <label class="form-check-label" for="officeRadio">
                                        {{ __('Office') }}
                                    </label>
                                </div>
                            </div>

                            <button type="submit" class="modal-from-btm-btn">
                                {{ __('Submit') }}
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
