<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class PagesController extends Controller
{
    //--index
    public function index()
    {

         // Fetch dynamic data for the slider
    $sliderData = [
        [
            'image' => asset('assets/img/post-slide-1.jpg'),
            'title' => 'The Best Homemade Masks for Face (keep the Pimples Away)',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit...',
            'link' => 'single-post.html',
        ],
        [
            'image' => asset('assets/img/post-slide-2.jpg'),
            'title' => '17 Pictures of Medium Length Hair in Layers...',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit...',
            'link' => 'single-post.html',
        ],
        [
            'image' => asset('assets/img/post-slide-3.jpg'),
            'title' => '13 Amazing Poems from Shel Silverstein...',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit...',
            'link' => 'single-post.html',
        ],
        [
            'image' => asset('assets/img/post-slide-4.jpg'),
            'title' => '9 Half-up/half-down Hairstyles...',
            'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit...',
            'link' => 'single-post.html',
        ],
    ];
       return Inertia::render('Home', [
        'sliderData' => $sliderData,
       ]);
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
        // sleep(10);
        return Inertia::render('About');
    }

    //-- contact
    public function contact()
    {
        return Inertia::render('Contact');
    }

    //-- terms
    public function terms()
    {
        return Inertia::render('Terms');
    }

    //-- privacy
    public function privacy()
    {
        return Inertia::render('Privacy');
    }
}
