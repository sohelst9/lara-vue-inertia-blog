<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

class DashbaordController extends Controller
{

    //--logout
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('login')->with('success', 'You have been logged out.');

    }

    //-dashboard
    public function dashboard()
    {
        return Inertia::render('Admin/Dashboard');
    }

    //--add_post
    public function add_post()
    {
        return Inertia::render('Admin/AddPost');
    }
}
