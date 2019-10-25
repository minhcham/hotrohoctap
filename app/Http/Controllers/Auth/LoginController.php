<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{

//    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        if (Auth::guard('web')->check()) {
            return redirect($this->redirectTo);
        }
        $this->middleware('guest')->except('logout');
    }

    public function getLogin()
    {
        return view('auth.login');
    }

    public function postLogin(Request $request)
    {
        $rules = [
            'email' => 'required|email',
            'password' => [
                'bail',
                'required',
                'string',
                'min:8',
                'max:20',
                'regex:' . REGEX_PASSWORD,
            ],
        ];

        $messages = [
            'email.required' => 'Vui lòng nhập email',
            'email.email' => 'Email chưa đúng định dạng',
            'password.required' => 'Vui lòng nhập mật khẩu',
        ];

        $validator = Validator::make($request->all(), $rules, $messages);
        $credentials = $request->only('email', 'password');

        if ($validator->fails()) {
           return view('auth.login', ['error' => $validator->errors()]);
        }

        if (!Auth::attempt($credentials)) {
            return view('auth.login', ['error' => 'Tài khoản hoặc mật khẩu không đúng. Vui lòng nhập lại']);
        }

        return redirect('/');
    }
}
