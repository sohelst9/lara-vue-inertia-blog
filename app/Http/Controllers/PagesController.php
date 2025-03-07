<?php

namespace App\Http\Controllers;

use App\Http\Resources\PostResource;
use App\Models\Post;
use Illuminate\Http\Request;
use Inertia\Inertia;

class PagesController extends Controller
{
    //--index
    public function index()
    {

        // Fetch dynamic data for the slider
        
        $sliderData = Post::where('is_banner', 1)->take(4)->get();

        //-- trending first post
        $trendingPost = Post::where('is_best', 1)->with('category')->first();
        //-- featured posts
        $featuredPosts =PostResource::collection( Post::where('is_featured', 1)->with('category')->take(8)->get());

        $categoryBasedPosts = [
            [
                'category' => 'Fashion',
                'slug' => 'fashion',
                'posts' => [
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'Top 10 Fashion Trends for 2025',
                        'description' => 'Discover the latest fashion trends and stay ahead of the game...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'How to Style Your Winter Outfits',
                        'description' => 'Winter is coming! Learn how to style your outfits perfectly...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'How to Style Your Winter Outfits',
                        'description' => 'Winter is coming! Learn how to style your outfits perfectly...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'How to Style Your Winter Outfits',
                        'description' => 'Winter is coming! Learn how to style your outfits perfectly...',
                        'link' => '/',
                    ],
                ],
            ],
            [
                'category' => 'Technology',
                'slug' => 'technology',
                'posts' => [
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'AI Revolution: What to Expect in the Next 5 Years',
                        'description' => 'Artificial Intelligence is evolving rapidly. Here’s what’s next...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'Best Laptops for Coding in 2025',
                        'description' => 'Looking for the best laptop for programming? Here’s our top picks...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'Best Laptops for Coding in 2025',
                        'description' => 'Looking for the best laptop for programming? Here’s our top picks...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'Best Laptops for Coding in 2025',
                        'description' => 'Looking for the best laptop for programming? Here’s our top picks...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'Best Laptops for Coding in 2025',
                        'description' => 'Looking for the best laptop for programming? Here’s our top picks...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'Best Laptops for Coding in 2025',
                        'description' => 'Looking for the best laptop for programming? Here’s our top picks...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'Best Laptops for Coding in 2025',
                        'description' => 'Looking for the best laptop for programming? Here’s our top picks...',
                        'link' => '/',
                    ],
                ],
            ],
            [
                'category' => 'Health & Fitness',
                'slug' => 'health-fitness',
                'posts' => [
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => '5 Morning Habits for a Healthy Lifestyle',
                        'description' => 'Start your day with these healthy habits and feel the difference...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'The Best Diet Plan for Weight Loss',
                        'description' => 'Want to lose weight? Here’s a scientifically proven diet plan...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'The Best Diet Plan for Weight Loss',
                        'description' => 'Want to lose weight? Here’s a scientifically proven diet plan...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'The Best Diet Plan for Weight Loss',
                        'description' => 'Want to lose weight? Here’s a scientifically proven diet plan...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'The Best Diet Plan for Weight Loss',
                        'description' => 'Want to lose weight? Here’s a scientifically proven diet plan...',
                        'link' => '/',
                    ],
                    [
                        'image' => asset('assets/img/post-landscape-1.jpg'),
                        'title' => 'The Best Diet Plan for Weight Loss',
                        'description' => 'Want to lose weight? Here’s a scientifically proven diet plan...',
                        'link' => '/',
                    ],
                ],
            ],
        ];

// return $categoryBasedPosts;

        return Inertia::render('Home', [
            'sliderData' => $sliderData,
            'trendingPost' => new PostResource($trendingPost),
            'categoryBasedPosts' => $categoryBasedPosts,
            'featuredPosts' => $featuredPosts,
        ]);
    }

    //--blogs
    public function blogs()
    {
        return Inertia::render('Blogs', [
            'blogImage' => asset('assets/img/blog/blog-1.jpg'),
        ]);
    }

    //--blog
    public function blog($slug)
    {
        $allImage = [
            'blog1' => asset('assets/img/blog/blog-1.jpg'),
            'insidepost' => asset('assets/img/blog/blog-inside-post.jpg'),
            'commentimage' => asset('assets/img/blog/comments-1.jpg'),
            'recent' => asset('assets/img/blog/blog-recent-1.jpg'),
        ];
        return Inertia::render('Blog',[
            'allImage' => $allImage,
        ]);
    }

    //-- about
    public function about()
    {
        // sleep(10);
        return Inertia::render('About', [
            'image' => asset('assets/img/post-landscape-1.jpg')
        ]);
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
