@php
    $setting = App\Models\Setting::first();
@endphp

<div class="modal fade" tabindex="-1" role="dialog" id="deleteModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{{ __('Item Delete Confirmation') }}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>{{ __('Are You sure delete this item ?') }}</p>
            </div>
            <div class="modal-footer bg-whitesmoke br">
                <form id="deleteForm" action="" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="button" class="btn btn-danger" data-dismiss="modal">{{ __('Close') }}</button>
                    <button type="submit" class="btn btn-primary">{{ __('Yes, Delete') }}</button>
                </form>
            </div>
        </div>
    </div>
</div>




<script src="{{ asset('backend/js/popper.min.js') }}"></script>
<script src="{{ asset('backend/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('backend/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('backend/datatables/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('backend/js/jquery.nicescroll.min.js') }}"></script>
<script src="{{ asset('backend/js/moment.min.js') }}"></script>
<script src="{{ asset('backend/js/stisla.js') }}"></script>
<script src="{{ asset('backend/js/scripts.js') }}"></script>
<script src="{{ asset('backend/js/custom.js') }}"></script>
<script src="{{ asset('backend/js/select2.min.js') }}"></script>
<script src="{{ asset('backend/js/tagify.js') }}"></script>
<script src="{{ asset('toastr/toastr.min.js') }}"></script>
<script src="{{ asset('backend/js/bootstrap4-toggle.min.js') }}"></script>
<script src="{{ asset('backend/js/fontawesome-iconpicker.min.js') }}"></script>
<script src="{{ asset('backend/js/bootstrap-datepicker.min.js') }}"></script>
<script src="{{ asset('backend/summernote/summernote.min.js') }}"></script>
<script src="{{ asset('backend/clockpicker/dist/bootstrap-clockpicker.js') }}"></script>
<script src="{{ asset('backend/datetimepicker/jquery.datetimepicker.js') }}"></script>
<script src="{{ asset('backend/js/iziToast.min.js') }}"></script>
<script src="{{ asset('backend/js/modules-toastr.js') }}"></script>
<script src="{{ asset('backend/js/jquery.uploadPreview.min.js') }}"></script>

<script>
    @if (Session::has('messege'))
        var type = "{{ Session::get('alert-type', 'info') }}"
        switch (type) {
            case 'info':
                toastr.info("{{ Session::get('messege') }}");
                break;
            case 'success':
                toastr.success("{{ Session::get('messege') }}");
                break;
            case 'warning':
                toastr.warning("{{ Session::get('messege') }}");
                break;
            case 'error':
                toastr.error("{{ Session::get('messege') }}");
                break;
        }
    @endif
</script>

@if ($errors->any())
    @foreach ($errors->all() as $error)
        <script>
            toastr.error('{{ $error }}');
        </script>
    @endforeach
@endif



<script>
    (function($) {
        "use strict";
        $(document).ready(function() {
            $('#dataTable').DataTable();
            $('.select2').select2();
            $('.sub_cat_one').select2();
            $('.tags').tagify();
            $('.summernote').summernote();
            $('.datetimepicker_mask').datetimepicker({
                format: 'Y-m-d H:i',

            });
            $('.custom-icon-picker').iconpicker({
                templates: {
                    popover: '<div class="iconpicker-popover popover"><div class="arrow"></div>' +
                        '<div class="popover-title"></div><div class="popover-content"></div></div>',
                    footer: '<div class="popover-footer"></div>',
                    buttons: '<button class="iconpicker-btn iconpicker-btn-cancel btn btn-default btn-sm">Cancel</button>' +
                        ' <button class="iconpicker-btn iconpicker-btn-accept btn btn-primary btn-sm">Accept</button>',
                    search: '<input type="search" class="form-control iconpicker-search" placeholder="Type to filter" />',
                    iconpicker: '<div class="iconpicker"><div class="iconpicker-items"></div></div>',
                    iconpickerItem: '<a role="button" href="javascript:;" class="iconpicker-item"><i></i></a>'
                }
            })
            $('.datepicker').datepicker({
                format: 'yyyy-mm-dd',
                startDate: '-Infinity'
            });
            $('.clockpicker').clockpicker();

        });


    })(jQuery);
</script>




{{-- sidebar scroll to previous position --}}
<script>
    document.addEventListener("DOMContentLoaded", function(event) {
        var sidebarScrollPos = localStorage.getItem('sidebarScrollPos');
        if (sidebarScrollPos) {
            document.querySelector('.main-sidebar').style.overflow = 'auto';
            document.querySelector('.main-sidebar').scrollTop = sidebarScrollPos;
        }
    });

    window.onbeforeunload = function(e) {
        var sidebar = document.querySelector('.main-sidebar');
        localStorage.setItem('sidebarScrollPos', sidebar.scrollTop);
    };
</script>

{{-- reset sidebar scroll position --}}
<script>
    document.addEventListener("DOMContentLoaded", function(event) {
        var currentRoute = "{{ Route::currentRouteName() }}";
        if (currentRoute == 'admin.dashboard') {
            localStorage.setItem('sidebarScrollPos', 0);
            document.querySelector('.main-sidebar').scrollTop = 0;
        }
    });
</script>

@stack('js')

</body>

</html>
