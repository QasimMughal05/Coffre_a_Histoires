<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Image;

class Word extends Model
{
    use HasFactory;
    protected $table = 'Word_tbl';
    protected $fillable = [
        'word',
        'word_type',
        'level',
        'determinant',
        'Syllab',
        'images',
        'BookCategory',
        'LSFImage',
        'Language',
    ];
    public function images(){
        return $this->hasMany(Image::class);
    }
}
