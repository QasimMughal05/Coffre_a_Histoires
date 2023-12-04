<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use Yajra\DataTables\Facades\Datatables;

class BookController extends Controller
{
    public function index(){   
        return view('Book');
    }

    public function Bookview(Request $request){  
        
        if ($request->ajax()) {
            $data = Book::select('*');
            // dd("dfds");
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-success btn-sm">Edit</a>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }

        return view('BookIndex');
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
        return redirect('/viewbook');
     
    }
}
