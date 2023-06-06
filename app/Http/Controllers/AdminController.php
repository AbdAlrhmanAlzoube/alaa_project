<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    // use AuthenticatesUsers;

    // protected $redirectTo = '/backend'; //Redirect after authenticate

    // public function __construct()
    // {
    //     $this->middleware('guest:admin')->except('logout'); //Notice this middleware
    // }

    // public function showLoginForm() //Go web.php then you will find this route
    // {
    //     return view('admin.login');
    // }

    // public function login(Request $request) //Go web.php then you will find this route
    // {
    //     $this->validateLogin($request);

    //     if ($this->attemptLogin($request) ) {
    //         return $this->sendLoginResponse($request);
    //     }

    //     return $this->sendFailedLoginResponse($request);
    // }

    // public function logout(Request $request)
    // {
    //     $this->guard('admin')->logout();

    //     $request->session()->invalidate();

    //     return redirect('/login');
    // }

    // protected function guard() // And now finally this is our custom guard name
    // {
    //     return Auth::guard('admin');
    // }
    function check(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:admins,email',
            'password' => 'required|min:5|max:30'
        ], [
            'email.exists' => 'This email is not exists in admins table'
        ]);

        $creds = $request->only('email', 'password');

        if (Auth::guard('admin')->attempt($creds)) {
            return redirect()->route('admin.home');
        } else {
            return redirect()->route('admin.login')->with('fail', 'Incorrect credentials');
        }
    }

    function logout()
    {
        //Request $request
        Auth::guard('admin')->logout();
        return redirect('/');
    }
}