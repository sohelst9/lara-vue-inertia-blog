<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use App\Models\category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;
use Inertia\Inertia;

class CategoryConroller extends Controller
{
    //--categoryBlogs
    public function categoryBlogs($slug)
    {
        $category = category::where('slug', $slug)->first();
        if (!$category) {
            return redirect()->route('home');
        }
        $categoryPostCollection = PostResource::collection($category->posts()->latest()->get());
        $categoryPosts = $categoryPostCollection->toArray(request());
        //-- recent post --
        $recentPostsCollection = PostResource::collection(Post::latest()->take(5)->get());
        $recentPosts = $recentPostsCollection->toArray(request());
        $tags = Tag::latest()->take(16)->get();
        return Inertia::render('CategoryPosts', [
            'category' => $category,
            'categoryPosts' => $categoryPosts,
            'recentPosts' => $recentPosts,
            'tags' => $tags,
        ]);
    }
}
