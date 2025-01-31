<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;

class RegisterController extends Controller
{
    //--showRegisterForm
    public function showRegisterForm()
    {
        return view('auth.register');
    }
}
