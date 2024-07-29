<div class="form-group col-12">
    <label>{{ __('admin.Select Upload Type') }} <span class="text-danger">*</span></label>
    <select id="type_check" name="type_check" class="form-control">
        <option value="1">{{ __('Upload By File') }}</option>
        <option value="2">{{ __('Upload By Link') }}</option>
    </select>
</div>



<div class="form-group col-12 file">
    <label>{{ __('admin.Select File') }} <span class="text-danger">*</span></label>
    <input type="file" name="file" required="" class="form-control">
</div>

<div class="form-group col-12 link hidden">
    <label>{{ __('admin.Link') }} <span class="text-danger">*</span></label>
    <textarea class="form-control" rows="4" name="link" placeholder="{{ __('Link') }}"></textarea>
</div>




<script>
    $(document).ready(function() {
        $('#type_check').on('change', function() {
            if (this.value == '1') {
                $('.file').show();
                $('.link').hide();
            } else if (this.value == '2') {
                $('.file').hide();
                $('.link').show();
            }
        });
    });
</script>
