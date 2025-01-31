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

        //-- trending first post
        $trendingPost = [
            'blogimage' => asset('assets/img/post-landscape-1.jpg'),
            'personimage' => asset('assets/img/person-1.jpg'),
            'title' => '11 Work From Home Part-Time Jobs You Can Do Now',
            'description' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae, inventore pariatur numquam cumque possimus exercitationem? Nihil tempore odit ab minus eveniet praesentium, similique blanditiis molestiae ut saepe perspiciatis officia nemo, eos quae cumque. Accusamus fugiat architecto rerum animi atque eveniet, quo, praesentium dignissimos',
            'link' => '/',
        ];

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
            'trendingPost' => $trendingPost,
            'categoryBasedPosts' => $categoryBasedPosts,
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
