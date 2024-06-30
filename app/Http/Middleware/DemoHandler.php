<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
class DemoHandler
{
    public function handle(Request $request, Closure $next)
    {
        if(Route::is('admin.login') || Route::is('store-login') || Route::is('admin.logout')){
            return $next($request);
         }
        return $next($request);
    }
}
