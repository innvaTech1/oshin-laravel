@extends('admin.master_layout')
@section('title')
<title>{{__('admin.Settings')}}</title>
@endsection
@section('admin-content')
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>{{__('admin.Settings')}}</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ route('admin.dashboard') }}">{{__('admin.Dashboard')}}</a></div>
            </div>
          </div>

        <div class="section-body">
            <div class="row mt-4">
                <div class="col">
                    <div class="card">
                        <div class="card-header">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12 col-sm-12 col-md-3">
                                    <ul class="nav nav-pills flex-column" id="myTab4" role="tablist">


                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link active" id="general-setting-tab" data-toggle="tab" href="#generalSettingTab" role="tab" aria-controls="generalSettingTab" aria-selected="true">{{__('admin.General Setting')}}</a>
                                        </li>

                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link" id="logo-tab" data-toggle="tab" href="#logoTab" role="tab" aria-controls="logoTab" aria-selected="true">{{__('admin.Logo and Favicon')}}</a>
                                        </li>

                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link" id="themeColor-tab" data-toggle="tab" href="#themeColorTab" role="tab" aria-controls="themeColorTab" aria-selected="true">{{__('admin.Theme color')}}</a>
                                        </li>

                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link" id="recaptcha-tab" data-toggle="tab" href="#recaptchaTab" role="tab" aria-controls="recaptchaTab" aria-selected="true">{{__('admin.Google Recaptcha')}}</a>
                                        </li>

                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link" id="tawk-chat-tab" data-toggle="tab" href="#tawkChatTab" role="tab" aria-controls="tawkChatTab" aria-selected="true">{{__('admin.Tawk Chat')}}</a>
                                        </li>

                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link" id="google-analytic-tab" data-toggle="tab" href="#googleAnalyticTab" role="tab" aria-controls="googleAnalyticTab" aria-selected="true">{{__('admin.Google Analytic')}}</a>
                                        </li>

                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link" id="custom-pagination-tab" data-toggle="tab" href="#customPaginationTab" role="tab" aria-controls="customPaginationTab" aria-selected="true">{{__('admin.Custom Pagination')}}</a>
                                        </li>

                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link" id="social-login-tab" data-toggle="tab" href="#socialLoginTab" role="tab" aria-controls="socialLoginTab" aria-selected="true">{{__('admin.Social Login')}}</a>
                                        </li>

                                        <li class="nav-item border rounded mb-1">
                                            <a class="nav-link" id="facebook-pixel-tab" data-toggle="tab" href="#facebookPixelTab" role="tab" aria-controls="facebookPixelTab" aria-selected="true">{{__('admin.Facebook Pixel')}}</a>
                                        </li>

                                    </ul>
                                </div>
                                <div class="col-12 col-sm-12 col-md-9">
                                    <div class="border rounded">
                                        <div class="tab-content no-padding" id="settingsContent">

                                            <div class="tab-pane fade show active" id="generalSettingTab" role="tabpanel" aria-labelledby="general-setting-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                      <form action="{{ route('admin.update-general-setting') }}" method="POST" enctype="multipart/form-data">
                                                          @csrf
                                                          @method('PUT')

                                                          <div class="form-group">
                                                              <label for="">{{__('admin.User Registration/Login')}} </label>
                                                              <select name="user_register" id="" class="form-control">
                                                                  <option {{ $setting->enable_user_register == 1 ? 'selected' : '' }} value="1">{{__('admin.Enable')}}</option>
                                                                  <option {{ $setting->enable_user_register == 0 ? 'selected' : '' }} value="0">{{__('admin.Disable')}}</option>
                                                              </select>
                                                          </div>

                                                          <div class="form-group">
                                                              <label for="">{{__('admin.Sidebar Large Header')}}</label>
                                                              <input type="text" name="lg_header" class="form-control" value="{{ $setting->sidebar_lg_header }}">
                                                          </div>

                                                          <div class="form-group">
                                                              <label for="">{{__('admin.Sidebar Small Header')}}</label>
                                                              <input type="text" name="sm_header" class="form-control" value="{{ $setting->sidebar_sm_header }}">
                                                          </div>

                                                          <div class="form-group">
                                                              <label for="">{{__('admin.Contact Email')}}</label>
                                                              <input type="email" name="contact_email" class="form-control" value="{{ $setting->contact_email }}">
                                                          </div>


                                                          <div class="form-group">
                                                              <label for="">{{__('admin.Default Currency Name')}}</label>
                                                              <select name="currency_name" id="" class="form-control select2">
                                                                  <option value="">{{__('admin.Select Default Currency')}}
                                                                </option>
                                                                @foreach ($currencies as $currency)
                                                                <option {{ $setting->currency_name == $currency->code ? 'selected' : '' }} value="{{ $currency->code }}">{{ $currency->code }}
                                                                </option>
                                                                @endforeach
                                                              </select>
                                                          </div>
                                                          <button class="btn btn-primary" type="submit">{{__('admin.Update')}}</button>

                                                      </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="logoTab" role="tabpanel" aria-labelledby="logo-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-logo-favicon') }}" method="POST" enctype="multipart/form-data">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Existing Logo')}}</label>
                                                                <div>
                                                                    <img src="{{ asset($setting->logo) }}" alt="" width="200px">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.New Logo')}}</label>
                                                                <input type="file" name="logo" class="form-control-file">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Existing Favicon')}}</label>
                                                                <div>
                                                                    <img src="{{ asset($setting->favicon) }}" alt="" width="50px">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.New Favicon')}}</label>
                                                                <input type="file" name="favicon" class="form-control-file">
                                                            </div>

                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="themeColorTab" role="tabpanel" aria-labelledby="themeColor-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-theme-color') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Theme Color One')}}</label>
                                                                <input type="color" class="form-control" name="theme_one" value="{{ $setting->theme_one }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Theme Color Two')}}</label>
                                                                <input type="color" class="form-control" name="theme_two" value="{{ $setting->theme_two }}">
                                                            </div>

                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="tab-pane fade" id="cookieTab" role="tabpanel" aria-labelledby="cookie-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-cookie-consent') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">{{__('admin.Allow Cookie Consent')}}</label>
                                                                        <select name="allow" id="" class="form-control">
                                                                            <option {{ $cookieConsent->status==1 ? 'selected':'' }} value="1">{{__('admin.Enable')}}</option>
                                                                            <option {{ $cookieConsent->status==0 ? 'selected':'' }} value="0">{{__('admin.Disable')}}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">{{__('admin.Border')}}</label>
                                                                        <select name="border" id="" class="form-control">
                                                                            <option {{ $cookieConsent->border=='none' ? 'selected':'' }} value="none">{{__('admin.None')}}</option>
                                                                            <option {{ $cookieConsent->border=='thin' ? 'selected':'' }} value="thin">{{__('admin.Thin')}}</option>
                                                                            <option {{ $cookieConsent->border=='normal' ? 'selected':'' }} value="normal">{{__('admin.Normal')}}</option>
                                                                            <option {{ $cookieConsent->border=='thick' ? 'selected':'' }} value="thick">{{__('admin.Thick')}}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">{{__('admin.Corner')}}</label>
                                                                        <select name="corners" id="" class="form-control">
                                                                            <option {{ $cookieConsent->corners=='none' ? 'selected':'' }} value="none">{{__('admin.none')}}</option>
                                                                            <option {{ $cookieConsent->corners=='small' ? 'selected':'' }} value="small">{{__('admin.Small')}}</option>
                                                                            <option {{ $cookieConsent->corners=='normal' ? 'selected':'' }} value="normal">{{__('admin.Normall')}}</option>
                                                                            <option {{ $cookieConsent->corners=='large' ? 'selected':'' }} value="large">{{__('admin.Large')}}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="bg_color">{{__('admin.Background Color')}}</label>
                                                                        <input class="form-control" type="color" name="background_color" id="bg_color" value="{{ $cookieConsent->background_color }}">

                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="text_color">{{__('admin.Text Color')}}</label>
                                                                        <input class="form-control" type="color" name="text_color" id="text_color" value="{{ $cookieConsent->text_color }}">
                                                                    </div>
                                                                </div>
                                                                 <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="border_color">{{__('admin.Border Color')}}</label>
                                                                        <input class="form-control" type="color" name="border_color" id="border_color" value="{{ $cookieConsent->border_color }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="btn_bg_color">{{__('admin.Button Color')}}</label>
                                                                        <input class="form-control" type="color" name="button_color" id="btn_bg_color" value="{{ $cookieConsent->btn_bg_color }}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="btn_text_color">{{__('admin.Button Text Color')}}</label>
                                                                        <input class="form-control" type="color" name="btn_text_color" id="btn_text_color" value="{{ $cookieConsent->btn_text_color }}">
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">{{__('admin.Link Text')}}</label>
                                                                        <input type="text" name="link_text" value="{{ $cookieConsent->link_text }}" class="form-control">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">{{__('admin.Button Text')}}</label>
                                                                        <input type="text" name="btn_text" value="{{ $cookieConsent->btn_text }}" class="form-control">
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="form-group">
                                                                <label for="cookie_text">{{__('admin.Message')}}</label>
                                                                <textarea class="form-control text-area-5" name="message" id="cookie_text" cols="30" rows="5">{{ $cookieConsent->message }}</textarea>
                                                            </div>
                                                            <button type="submit" class="btn btn-primary">{{__('admin.Update')}}</button>
                                                        </form>

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="recaptchaTab" role="tabpanel" aria-labelledby="recaptcha-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-google-recaptcha') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Allow Recaptcha')}}</label>
                                                                <select name="allow" id="allow" class="form-control">
                                                                    <option {{ $googleRecaptcha->status == 1 ? 'selected' : '' }} value="1">{{__('admin.Enable')}}</option>
                                                                    <option {{ $googleRecaptcha->status == 0 ? 'selected' : '' }} value="0">{{__('admin.Disable')}}</option>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Captcha Site Key')}}</label>
                                                                <input type="text" class="form-control" name="site_key" value="{{ $googleRecaptcha->site_key }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Captcha Secret Key')}}</label>
                                                                <input type="text" class="form-control" name="secret_key" value="{{ $googleRecaptcha->secret_key }}">
                                                            </div>

                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>

                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="pusherTab" role="tabpanel" aria-labelledby="pusher-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-pusher') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.App Id')}}</label>
                                                                <input type="text" class="form-control" name="app_id" value="{{ $pusher->app_id }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.App Key')}}</label>
                                                                <input type="text" class="form-control" name="app_key" value="{{ $pusher->app_key }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.App Secret')}}</label>
                                                                <input type="text" class="form-control" name="app_secret" value="{{ $pusher->app_secret }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.App Cluster')}}</label>
                                                                <input type="text" class="form-control" name="app_cluster" value="{{ $pusher->app_cluster }}">
                                                            </div>

                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>

                                                        </form>
                                                    </div>
                                                </div>
                                            </div>



                                            <div class="tab-pane fade" id="blogCommentTab" role="tabpanel" aria-labelledby="blog-comment-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-facebook-comment') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Blog Comment Type')}}</label>
                                                                <select name="comment_type" id="comment_type" class="form-control">
                                                                    <option {{ $facebookComment->comment_type == 1 ? 'selected' : '' }} value="1">{{__('admin.Menual Comment')}}</option>
                                                                    <option {{ $facebookComment->comment_type == 0 ? 'selected' : '' }} value="0">{{__('admin.Facebook Comment')}}</option>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Facebook App Id')}}</label>
                                                                <input type="text" class="form-control" name="app_id" value="{{ $facebookComment->app_id }}">
                                                            </div>

                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="tawkChatTab" role="tabpanel" aria-labelledby="tawk-chat-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-tawk-chat') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Allow Live Chat')}}</label>
                                                                <select name="allow" id="tawk_allow" class="form-control">
                                                                    <option {{ $tawkChat->status == 1 ? 'selected' : '' }} value="1">{{__('admin.Enable')}}</option>
                                                                    <option {{ $tawkChat->status == 0 ? 'selected' : '' }} value="0">{{__('admin.Disable')}}</option>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Tawk Chat Link')}}</label>
                                                                <input type="text" class="form-control" name="chat_link" value="{{ $tawkChat->chat_link }}">
                                                            </div>

                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="googleAnalyticTab" role="tabpanel" aria-labelledby="google-analytic-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-google-analytic') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Allow Google Analytic')}}</label>
                                                                <select name="allow" id="tawk_allow" class="form-control">
                                                                    <option {{ $googleAnalytic->status == 1 ? 'selected' : '' }} value="1">{{__('admin.Enable')}}</option>
                                                                    <option {{ $googleAnalytic->status == 0 ? 'selected' : '' }} value="0">{{__('admin.Disable')}}</option>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Analytic Tracking Id')}}</label>
                                                                <input type="text" class="form-control" name="analytic_id" value="{{ $googleAnalytic->analytic_id }}">
                                                            </div>

                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="customPaginationTab" role="tabpanel" aria-labelledby="custom-pagination-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-custom-pagination') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')

                                                            <table class="table table-bordered">
                                                                <thead>
                                                                    <tr>
                                                                        <th width="50%">{{__('admin.Section Name')}}</th>
                                                                        <th width="50%">{{__('admin.Quantity')}}</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    @foreach ($customPaginations as $customPagination)
                                                                    <tr>
                                                                        <td>{{ $customPagination->page_name }}</td>
                                                                        <td>
                                                                            <input type="number" value="{{ $customPagination->qty }}" name="quantities[]" class="form-control">
                                                                            <input type="hidden" value="{{ $customPagination->id }}" name="ids[]">
                                                                        </td>
                                                                    </tr>
                                                                @endforeach
                                                                </tbody>


                                                            </table>
                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="socialLoginTab" role="tabpanel" aria-labelledby="social-login-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-social-login') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Allow Login with Facebook')}}</label>
                                                                <div>
                                                                    @if ($socialLogin->is_facebook == 1)
                                                                        <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('admin.Enable')}}" data-off="{{__('admin.Disable')}}" data-onstyle="success" data-offstyle="danger" name="allow_facebook_login">
                                                                    @else
                                                                        <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('admin.Enable')}}" data-off="{{__('admin.Disable')}}" data-onstyle="success" data-offstyle="danger" name="allow_facebook_login">
                                                                    @endif

                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Facebook App Id')}}</label>
                                                                <input type="text" value="{{ $socialLogin->facebook_client_id }}" class="form-control" name="facebook_app_id">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Facebook App Secret')}}</label>
                                                                <input type="text" value="{{ $socialLogin->facebook_secret_id }}" class="form-control" name="facebook_app_secret">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Facebook Redirect Url')}}</label>
                                                                <input type="text" value="{{ $socialLogin->facebook_redirect_url}}" class="form-control" name="facebook_redirect_url">
                                                            </div>



                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Allow Login with Gmail')}}</label>
                                                                <div>
                                                                    @if ($socialLogin->is_gmail == 1)
                                                                    <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('admin.Enable')}}" data-off="{{__('admin.Disable')}}" data-onstyle="success" data-offstyle="danger" name="allow_gmail_login">
                                                                    @else
                                                                    <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('admin.Enable')}}" data-off="{{__('admin.Disable')}}" data-onstyle="success" data-offstyle="danger" name="allow_gmail_login">
                                                                    @endif
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Google Client Id')}}</label>
                                                                <input type="text" value="{{ $socialLogin->gmail_client_id }}" class="form-control" name="gmail_client_id">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Google Secret Id')}}</label>
                                                                <input type="text" value="{{ $socialLogin->gmail_secret_id }}" class="form-control" name="gmail_secret_id">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Google Redirect Url')}}</label>
                                                                <input type="text" value="{{ $socialLogin->gmail_redirect_url }}" class="form-control" name="gmail_redirect_url">
                                                            </div>

                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="facebookPixelTab" role="tabpanel" aria-labelledby="facebook-pixel-tab">
                                                <div class="card m-0">
                                                    <div class="card-body">
                                                        <form action="{{ route('admin.update-facebook-pixel') }}" method="POST">
                                                            @csrf
                                                            @method('PUT')
                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Allow Facebook Pixel')}}</label>
                                                                <div>
                                                                    @if ($facebookPixel->status == 1)
                                                                    <input id="status_toggle" type="checkbox" checked data-toggle="toggle" data-on="{{__('admin.Enable')}}" data-off="{{__('admin.Disable')}}" data-onstyle="success" data-offstyle="danger" name="allow_facebook_pixel">
                                                                    @else
                                                                    <input id="status_toggle" type="checkbox" data-toggle="toggle" data-on="{{__('admin.Enable')}}" data-off="{{__('admin.Disable')}}" data-onstyle="success" data-offstyle="danger" name="allow_facebook_pixel">
                                                                    @endif
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="">{{__('admin.Facebook App Id')}}</label>
                                                                <input type="text" value="{{ $facebookPixel->app_id }}" class="form-control" name="app_id">
                                                            </div>
                                                            <button class="btn btn-primary">{{__('admin.Update')}}</button>
                                                    </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        </section>
      </div>
@endsection
