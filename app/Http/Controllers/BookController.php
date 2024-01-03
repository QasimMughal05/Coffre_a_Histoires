<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Http\RedirectResponse;

class BookController extends Controller
{
    public function index(){   
        return view('Book.viewbook');
    }

    public function Bookview(Request $request){  
        
        if ($request->ajax()) {
            $data = Book::select('*');
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($data){
                    $actionBtn = '<a href="editbook/'.$data->Id.'" class="edit btn btn-success btn-sm">'.__('messages.book_action_edit').'</a>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        $books = Book::all();

        return view('Book.BookIndex')->with('book',$books);
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

    public function editbook($id)
    {
       $book=Book::findOrFail($id);
        return view('Book.editbook')->with('books',$book);
    }

    public function updatebook(Request $request): RedirectResponse
    {
        $request->validate([
            'book' => 'required',

        ]);


        try {
            // dd($request->all());
            $book=Book::findOrFail($request->id);
            $input = $request->all();
            $book->update($input);  
          
        }  catch(\Exception $error) {
            return back()->with('Error','Product Not Found')->with('Reason',$error->getMessage());
        }
        return redirect('/viewbook');
    }
}
