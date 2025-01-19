<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class PagesController extends Controller
{
    //--index
    public function index()
    {
       return Inertia::render('Home');
    }

    //--blogs
    public function blogs()
    {
        return Inertia::render('Blogs');
    }

    //--blog
    public function blog()
    {
        return Inertia::render('Blog');
    }

    //-- about
    public function about()
    {
        return Inertia::render('About');
    }

    //-- contact
    public function contact()
    {
        return Inertia::render('Contact');
    }
}
