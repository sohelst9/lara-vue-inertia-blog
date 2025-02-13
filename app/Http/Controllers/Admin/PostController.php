<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Inertia\Inertia;

class PostController extends Controller
{
    //-index
    public function index()
    {
        $posts = Post::latest()->get();
        return Inertia::render('Admin/Post/PostIndex', [
            'posts' => $posts,
        ]);
    }

    //-- create
    public function create()
    {
        $category = category::latest()->get();
        return Inertia::render('Admin/Post/PostCreate', [
            'allCategory' => $category,
        ]);
    }

    //--store
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'category' => 'required',
            'sub_title' => 'required',
            'description' => 'required',
            'image' => 'required|mimes:png,jpg,jpeg,webp',
        ]);

        dd($request->all());
        $post = new Post();
        $post->user_id = Auth::user()->id;
        $post->category_id = $request->category;
        $post->title = $request->title;
        $post->slug = Str::slug($request->title);
        $post->sub_title = $request->sub_title;
        $post->description = $request->description;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_name = time() . '.' . $image->getClientOriginalExtension();
            $image_path = 'uploads/post/' . $image_name;
            $image->move(public_path('uploads/post'), $image_name);
            $post->image = $image_path;
        }
        $post->meta_title = $request->meta_title;
        $post->meta_description = $request->meta_description;
        $post->meta_keywords = $request->meta_keywords;
        $post->save();
        return redirect()->route('post.index')->with('success', 'Post created successfully');
    }

    //-- edit
    public function edit($id)
    {
        $post = Post::find($id);
        $category = category::latest()->get();
        return view('admin.post.edit', compact('post'));
    }

    //-- update 
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'category' => 'required',
            'sub_title' => 'required',
            'description' => 'required',
            'image' => 'nullable|mimes:png,jpg,jpeg,webp',
        ]);

        $post = Post::find($id);

        $post = new Post();
        $post->user_id = $post->user_id;
        $post->category_id = $request->category;
        $post->title = $request->title;
        $post->slug = Str::slug($request->title);
        $post->sub_title = $request->sub_title;
        $post->description = $request->description;
        if ($request->hasFile('image')) {
            //--delete old image
            if ($post->image && file_exists(public_path($post->image))) {
                unlink(public_path($post->image));
            }
            $image = $request->file('image');
            $image_name = 'update_' . time() . '.' . $image->getClientOriginalExtension();
            $image_path = 'uploads/post/' . $image_name;
            $image->move(public_path('uploads/post'), $image_name);
            $post->image = $image_path;
        }
        $post->meta_title = $request->meta_title;
        $post->meta_description = $request->meta_description;
        $post->meta_keywords = $request->meta_keywords;
        $post->save();
        return redirect()->route('post.index')->with('success', 'Post Updated successfully');
    }

    //-- destroy
    public function destroy($id)
    {
        $post = Post::find($id);
        if ($post->image && file_exists(public_path($post->image))) {
            unlink(public_path($post->image));
        }
        $post->delete();
        return redirect()->route('post.index')->with('success', 'Post Deleted successfully');
    }
}
