<?php

use App\Http\Controllers\PagesController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', [PagesController::class, 'index'])->name('home');
Route::get('/blogs', [PagesController::class, 'blogs'])->name('blogs');
Route::get('/blog/{slug}', [PagesController::class, 'blog'])->name('blog');
Route::get('/about', [PagesController::class, 'about'])->name('about');
Route::get('/contact', [PagesController::class, 'contact'])->name('contact');
Route::get('/terms', [PagesController::class, 'terms'])->name('terms');
Route::get('/privacy', [PagesController::class, 'privacy'])->name('privacy');
