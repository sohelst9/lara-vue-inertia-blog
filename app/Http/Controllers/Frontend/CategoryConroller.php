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
    //--categories
    public function categories()
    {
        $categories = category::latest()->paginate(10);
        return Inertia::render('Categories', [
            'allCategory' => $categories,
        ]);
    }
    //--categoryBlogs
    public function categoryBlogs($slug)
    {
        $category = category::where('slug', $slug)->first();
        if (!$category) {
            return redirect()->route('home');
        }
        $categoryPostCollection = PostResource::collection($category->posts()->latest()->paginate(6));
        //-- recent post --
        $recentPosts = PostResource::collection(Post::latest()->take(5)->get());
        $tags = Tag::latest()->take(16)->get();
        return Inertia::render('CategoryPosts', [
            'category' => $category,
            'categoryPosts' => $categoryPostCollection,
            'recentPosts' => $recentPosts,
            'tags' => $tags,
        ]);
    }
}
