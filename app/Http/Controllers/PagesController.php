<?php

namespace App\Http\Controllers;

use App\Http\Resources\PostResource;
use App\Models\category;
use App\Models\Post;
use Illuminate\Http\Request;
use Inertia\Inertia;

class PagesController extends Controller
{
    //--index
    public function index()
    {

        // Fetch dynamic data for the slider

        $sliderData = Post::where('is_banner', 1)->take(4)->latest()->get();

        //-- trending first post
        $trendingPost = Post::where('is_best', 1)->with('category')->latest()->first();
        //-- featured posts
        // $featuredPosts =PostResource::collection( Post::where('is_featured', 1)->with('category')->take(8)->get());
        $featuredPostsCollection = PostResource::collection(Post::where('is_featured', 1)->with('category')->take(4)->latest()->get());
        $featuredPosts = $featuredPostsCollection->toArray(request());

        //-- trending posts
        $trendingPostsCollection = PostResource::collection(Post::where('is_popular', 1)->with('category')->take(5)->latest()->get());
        $trendingrightPosts = $trendingPostsCollection->toArray(request());

        //-- category based posts
        $categories = category::with('posts')->get()->filter(function ($category) {
            return $category->posts->count() > 0;
        });
        $categoryBasedPosts = $categories->map(function ($category){
            return [
                'category' => $category->name,
                'slug' => $category->slug,
                'posts' => PostResource::collection($category->posts->take(4))
            ];
        });

        // return $categoryBasedPosts;

        return Inertia::render('Home', [
            'sliderData' => $sliderData,
            'trendingPost' => new PostResource($trendingPost),
            'categoryBasedPosts' => $categoryBasedPosts,
            'featuredPosts' => $featuredPosts,
            'trendingrightPosts' => $trendingrightPosts,
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
        return Inertia::render('Blog', [
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
