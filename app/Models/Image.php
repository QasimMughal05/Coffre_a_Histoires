<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Word;

class Image extends Model
{
    use HasFactory;
    protected $table = 'Image';
    protected $fillable = [
        'images',
        'Word_tbl_Id',
    ];

    public function word(){
        return $this->belongsTo(Word::class);
    }
}


