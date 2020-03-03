<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SiteController extends Controller
{
    public function index(){
        $fullname="onuma ritngam";
        $website="google.com";
        return view('about',[
            'fullname'=> $fullname,
            'website'=> $website
        ]);
    }
}
