<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;

class LoginController extends Controller
{
    //--showLoginForm
    public function showLoginForm()
    {
        return view('auth.login');
    }
}
