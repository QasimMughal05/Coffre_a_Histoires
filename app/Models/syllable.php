<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Word;

class syllable extends Model
{
    use HasFactory;
    protected $table = 'syllable';

    public function word(){
        return $this->belongsTo(Word::class);
    }
    
}
