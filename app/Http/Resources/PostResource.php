<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;

class PostResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        static $serial_number = 0;
        return [
            'id' => $this->id,
            'serial' => ++$serial_number,
            'title' => $this->title,
            'short_title' => Str::limit($this->title, 30),
            'slug' => $this->slug,
            'sub_title' => $this->sub_title,
            'description' => $this->description,
            'image' => asset($this->image),
            'category' => $this->category ? $this->category->name : null,
            'category_slug' => $this->category ? $this->category->slug : null,
            'tags' => $this->tags,
            'status' => $this->status,
            'meta_title' => $this->meta_title,
            'meta_description' => $this->meta_description,
            'meta_keywords' => $this->meta_keywords,
            'total_view' => $this->total_view,
            'is_banner' => $this->is_banner,
            'is_best' => $this->is_best,
            'is_featured' => $this->is_featured,
            'is_popular' => $this->is_popular,
            'created_at' => Carbon::parse($this->created_at)->format('d F Y'),
            'updated_at' => Carbon::parse($this->updated_at)->format('d F Y'),
            'author' => 'Admin',
            'author_image' => asset('assets/img/author.png'),
        ];
    }
}
