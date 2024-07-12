<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Setting;
use Exception;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        try {
            if (cache()->has('setting')) {
                $setting = cache()->get('setting');
            } else {
                $setting = Setting::first();
                cache()->forever('setting', $setting);
            }
            View::share('setting', $setting);
        } catch (Exception $e) {
            Log::error($e->getMessage());
        }
    }
}
