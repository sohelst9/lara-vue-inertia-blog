<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

class LoginController extends Controller
{
    //--showLoginForm
    public function showLoginForm()
    {
        return Inertia::render('Auth/Login');
    }

    //--storeLoginForm
    public function storeLoginForm(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
        $credentials = $request->only(['email', 'password']);
        if (Auth::attempt($credentials)) {
            return redirect()->route('admin.dashboard')->with('success', 'Login Success');
        } else {
            return redirect()->back()->with('error', 'Invalid credentials');
        }
    }
}
