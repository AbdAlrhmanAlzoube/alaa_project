<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryCourseController;
use App\Http\Controllers\CourseTraningController;
use App\Http\Controllers\EpisodeController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StartController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\TestController;
use Faker\Guesser\Name;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('admin/index',[AdminController::class,'index'])->name('admin.index');
Route::get('admin/add_teacher',[AdminController::class,'show'])->name('admin.add_teacher');
Route::post('admin/store/teacher',[AdminController::class,'store'])->name('admin.store_teacher');
Route::get('admin/display/teacher',[AdminController::class,'display'])->name('admin.display_teacher');
Route::put('admin/destroy/teache/{teacher}',[AdminController::class,'destroy'])->name('admin.destroy_teacher');
Route::put('admin/block/teache/{teacher}',[AdminController::class,'block'])->name('admin.block_teacher');
// Route::view('admin/add_teacher','admin/pages/add_teacher')->name('admin.add_teacher');
 
// Route::view('index/add_teacher','teacher.pages.add_teacher')->name('index/add_teacher');
Route::get('/dc', function () {
    return view('dashboard');
});

Route::get('/Services', function () {
    return view('Services');
});

Route::get('/Events', function () {
    return view('Events');
});
Route::get('/teacher', function () {
    return view('teacher');
});
Route::get('/courses', function () {
    return view('courses');
});
Route::get('/dtc', function () {
    return view('dtc');
});
Route::get('/details', function () {
    return view('detailscourse');
});
Route::get('/lo', function () {
    return view('login');
});
Route::get('/cd', function () {
    return view('cd');
});
Route::get('/cart', function () {
    return view('cart');
})->name('cart');

Route::get('/', [StartController::class, 'create']);
Route::get('/profile', function () {
    return view('Pages.profile', ['name' => 'John Doe']);
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::post('/profile', [ProfileController::class, 'updatePhotoProfile'])->name('profile.updatePhotoProfile');
});

require __DIR__ . '/auth.php';
Route::get('/teacher/dashboard', function () {
    return view('teacher.dashboard');
})->middleware(['auth:teacher', 'verified'])->name('teacher.dashboard');

// Route::middleware('auth:teacher')->group(function () {
//     Route::get('/profile',   [ProfileController::class, 'edit'])->name('profile.edit');
//     Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
//     Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
// });
require __DIR__ . '/teacherauth.php';

Route::prefix('teacher')->name('teacher.')->group(function () {
    Route::middleware('auth:teacher')->group(function () {
        Route::get('/profile',   [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });
});

Route::get('/episode/create', [EpisodeController::class, 'create'])->name('episode.create');
Route::post('/episode/store', [EpisodeController::class, 'store'])->name('episode.store');
Route::get('/course_traning/create', [CourseTraningController::class, 'create']);
Route::post('/course_traning/store', [CourseTraningController::class, 'store'])->name('course_traning.store');
Route::get('/course_category/create', [CategoryCourseController::class, 'create']);
Route::post('/course_category/store', [CategoryCourseController::class, 'store'])->name('course_category.store');


Route::get('/teacherphoto', [StartController::class, 'showteacherphoto'])->name('showteacherphoto');
Route::get('/cart/{id}', [StartController::class, 'addCart'])->name('cart.addCart');

Route::get('/theHome', [StartController::class, 'create'])->name('hom');
Route::get('/theHome/lastCourses', [StartController::class, 'lastCourses'])->name('theHome.lastCourses');
Route::post('/theHome/searshQueryTeacher', [StartController::class, 'searshQueryTeacher'])->name('theHome.searshQueryTeacher');
Route::get('/theHome/showcategorycourses/{id}', [StartController::class, 'show'])->name('showcategorycourses.show');
Route::get('/theHome/showdetailscourse/{id}', [StartController::class, 'showDetailCourse'])->name('showdetailscourse.showDetailCourse');