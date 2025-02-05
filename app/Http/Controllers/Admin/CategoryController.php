<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = category::latest()->get();
        return Inertia::render('Admin/Category/CategoryIndex', [
            'categories' => $categories
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        return Inertia::render('Admin/Category/CategoryCreate');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'image' => 'required|mimes:png,jpg,jpeg,webp'
        ]);

        //-- check exist category
        $exist = category::where('name', $request->name)->first();
        if ($exist) {
            return redirect()->back()->with('error', 'Category already exist.');
        }

        $category = new category();
        $category->user_id =  Auth::user()->id;
        $category->name = $request->name;
        $category->slug = Str::slug($request->name);
        $category->description = $request->description;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagename = time() . '.' . $image->getClientOriginalExtension();
            $uploadPathName = 'uploads/category/' . $imagename;
            $image->move(public_path('uploads/category'), $imagename);
            $category->image = $uploadPathName;
        }
        $category->meta_title = $request->meta_title;
        $category->meta_description = $request->meta_description;
        $category->meta_keywords = $request->meta_keywords;
        $category->save();
        return redirect()->route('category.index')->with('success', 'Category created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $category = category::find($id);
        return Inertia::render('Admin/Category/CategoryEdit', ['category' => $category]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $category = category::find($id);
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'image' => 'nullable|mimes:png,jpg,jpeg,webp'
        ]);

        $exist = Category::where('name', $request->name)->where('id', '!=', $id)->first();
        if ($exist) {
            return redirect()->back()->with('error', 'Category already exist.');
        }

        $category->user_id =  Auth::user()->id;
        $category->name = $request->name;
        $category->slug = Str::slug($request->name);
        $category->description = $request->description;
        if ($request->hasFile('image')) {
            //--old image delete--
            if ($category->image && file_exists(public_path($category->image))) {
                unlink(public_path($category->image));
            }
            $image = $request->file('image');
            $imagename = 'update_' . time() . '.' . $image->getClientOriginalExtension();
            $uploadPathName = 'uploads/category/' . $imagename;
            $image->move(public_path('uploads/category'), $imagename);
            $category->image = $uploadPathName;
        }
        $category->meta_title = $request->meta_title;
        $category->meta_description = $request->meta_description;
        $category->meta_keywords = $request->meta_keywords;
        $category->save();
        return redirect()->route('category.index')->with('success', 'Category Updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $category = category::find($id);
        if ($category->image && file_exists(public_path($category->image))) {
            unlink(public_path($category->image));
        }
        $category->delete();
        return redirect()->route('category.index')->with('success', 'Category deleted successfully');
    }
}
