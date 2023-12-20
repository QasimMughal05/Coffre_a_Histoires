<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\syllable;

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
        'Illustration',
        'BookCategory',
        'lsf_images_paths',
        'Language',
    ];
    public function syllable(){
        return $this->hasMany(syllable::class);
    }
}
