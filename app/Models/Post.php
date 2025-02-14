<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //-- relation with category 
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    //-- relation with tags
    public function tags()
    {
        return $this->belongsToMany(Tag::class)->withTimestamps();
    }
}
