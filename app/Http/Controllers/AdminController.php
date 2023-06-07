<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\TeacherStoreRequest;
use App\Models\Teacher\Teacher;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class AdminController extends Controller
{
    // use AuthenticatesUsers;
    public function index()
    {
        return view('admin.pages.index');
    } 

    public function show()
    {
        return view('admin.pages.add_teacher');
    }

    public function store(Request $request)
    {
        // dd($request);
        $img = null;
        if ($request->hasFile('img')) {
            $img = $request->file('img')->store('public/images');
            $img = Storage::url($img);
        }
        
        $certificateImg = null;
        if ($request->hasFile('certificate_img')) {
            $certificateImg = $request->file('certificate_img')->store('public/images');
            $certificateImg = Storage::url($certificateImg);
        }
        // dd($request);
        Teacher::create([
            'name' => $request->input('name'),
            'user_Name' => $request->input('user_name'),
            'language' => $request->input('language'),
            'address' => $request->input('address'),
            'gender' => $request->input('gender'),
            'dob' => $request->input('dob'),
            'phone' => $request->input('phone'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password')),
           
        ]);

        return redirect()->route('admin.display_teacher')->with('success', 'Your action was successful!');

//         @if (session('success'))
//   <div class="alert alert-success">
//     {{ session('success') }}
//   </div>
// @endif
    }
    public function display()
    {
        $teachers = Teacher::all();
        return view('admin.pages.show_teacher',compact('teachers'));
    }

    public function block(Teacher $teacher)
    {
        $teacher->is_aproved=0;
        return redirect()->back()->with('success', 'Teacher has been blocked.');

    }
    public function destroy(Teacher $teacher)
    {
        $teacher->delete();
        return redirect()->back()->with('success', 'Teacher has been deleted.');

    }
}