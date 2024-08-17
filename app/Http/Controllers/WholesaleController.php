<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WholesaleController extends Controller
{
    public function index()
    {
        return view('website.wholesale');
    }
}
