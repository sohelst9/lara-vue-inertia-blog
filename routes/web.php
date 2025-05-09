<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\DashbaordController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Frontend\CategoryConroller;
use App\Http\Controllers\PagesController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', [PagesController::class, 'index'])->name('home');
Route::get('/categories', [CategoryConroller::class, 'categories'])->name('categories');
Route::get('/blogs', [PagesController::class, 'blogs'])->name('blogs');
Route::get('/category/blogs/{slug}', [CategoryConroller::class, 'categoryBlogs'])->name('category.blogs');
Route::get('/blog/{slug}', [PagesController::class, 'blog'])->name('blog');
Route::get('/about', [PagesController::class, 'about'])->name('about');
Route::get('/contact', [PagesController::class, 'contact'])->name('contact');
Route::get('/terms', [PagesController::class, 'terms'])->name('terms');
Route::get('/privacy', [PagesController::class, 'privacy'])->name('privacy');



//-- dashboard routes define
Route::get('/admin/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/admin/login', [LoginController::class, 'storeLoginForm'])->name('login.store');
Route::get('/admin/register', [RegisterController::class, 'showRegisterForm'])->name('register');

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::post('/logout', [DashbaordController::class, 'logout'])->name('admin.logout');
    Route::get('/dashboard', [DashbaordController::class, 'dashboard'])->name('admin.dashboard');
    Route::resource('category', CategoryController::class);
    Route::resource('tag', TagController::class);
    Route::resource('post', PostController::class);
});
