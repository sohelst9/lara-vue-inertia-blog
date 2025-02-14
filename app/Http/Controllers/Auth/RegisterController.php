<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    //--showRegisterForm
    public function showRegisterForm()
    {
        // User::create([
        //     'name' => "Sohel Rana",
        //     'email' => "sohelrana@gmail.com",
        //     'password' => Hash::make('123456')
        // ]);

        // return 'User created successfully';
        return view('auth.register');
    }
}
