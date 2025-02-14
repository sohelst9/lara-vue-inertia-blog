<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Tag;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Illuminate\Support\Str;

class TagController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tags = Tag::latest()->get();
        return Inertia::render('Admin/Tag/TagIndex', [
            'tags' => $tags,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return Inertia::render('Admin/Tag/TagCreate');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        //-- exist tag error message
        $existTag = Tag::where('name', $request->name)->first();
        if ($existTag) {
            return redirect()->back()->with('error', 'Tag already exist.');
        }

        $tag = new Tag();
        $tag->name = $request->input('name');
        $tag->slug = Str::slug($request->input('name'));
        $tag->save();
        return redirect()->route('tag.index')->with('success', 'Tag created successfully.');
    }


    public function edit(string $id)
    {
        $tag = Tag::find($id);
        return Inertia::render('Admin/Tag/TagEdit', [
            'tag' => $tag,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $exist = Tag::where('name', $request->name)->where('id', '!=', $id)->first();
        if ($exist) {
            return redirect()->back()->with('error', 'Tag already exist.');
        }
        $tag = Tag::find($id);
        $tag->name = $request->input('name');
        $tag->slug = Str::slug($request->input('name'));
        $tag->save();
        return redirect()->route('tag.index')->with('success', 'Tag Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $tag = Tag::find($id);
        $tag->delete();
        return redirect()->route('tag.index')->with('success', 'Tag deleted successfully.');
    }
}
