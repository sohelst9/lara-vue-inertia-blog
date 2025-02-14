<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    //-- relation with posts---
    public function posts()
    {
        return $this->hasMany(Post::class);
    }
}
