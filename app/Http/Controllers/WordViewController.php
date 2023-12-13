<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Word;
use Yajra\DataTables\Facades\Datatables;

class WordViewController extends Controller
{

    public function AllBooksWord($id)
    {
        // dd($id);
        $word = Word::findOrFail($id);
        return view('Word.ViewBooksWord')->with('words', $word);
    }


       
}
