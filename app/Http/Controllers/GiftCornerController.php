<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GiftCornerController extends Controller
{
    public function index()
    {
        return view('website.gift-corner');
    }
}
