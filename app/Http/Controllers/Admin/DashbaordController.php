<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DashbaordController extends Controller
{
    //-dashboard
    public function dashboard()
    {
        return view('admin.dashboard');
    }
}
