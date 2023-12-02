<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;

class BookController extends Controller
{
    public function index(){   
        return view('Book');
    }

    public function indexword(){   
        return view('CreateWord');
    }

    public function store(Request $request){
        // dd($request->all());
        $rules = [
            'book' => 'required|max:255',
            'level' => 'required',
        ];
        $validator = \Validator::make($request->all(),$rules);
        if($validator->fails()){
            return redirect()->route('bookcreate')->withErrors($validator)->withInput();
        }
        $data = new Book;
        $data->book = $request->book;
        $data->level = $request->level;
        $data->save();
        return redirect('/Book');
     
    }
}
