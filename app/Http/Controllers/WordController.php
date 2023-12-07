<?php

namespace App\Http\Controllers;

use App\Models\Word;
use App\Models\Image;
use App\Models\Book;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\Datatables;

class WordController extends Controller
{
    public function indexword()
    {
        $data = Book::select('*')->get();
        return view('Word.CreateWord', compact('data'));
    }

    public function Wordview(Request $request){  
        
        if ($request->ajax()) {
            $data = Word::select('*');
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($data){
                    $actionBtn = '<a href="editbook/'.$data->Id.'" class="edit btn btn-success btn-sm">Edit</a>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        $words = Word::all();

        return view('dashboard')->with('word',$words);
    } 

    public function store(Request $request)
    {
        // dd($request->all());
        $rules = [
            'word' => 'required|max:255',
            'images.*' => 'required|image|mimes:jpeg,jpg,png,gif,svg|max:5120',

        ];
        $validator = \Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return redirect()->route('createword')->withErrors($validator)->withInput();
        }

        if ($request->hasFile("LSFImage")) {
            $file = $request->file("LSFImage");
            $imageName = time() . '_' . $file->getClientOriginalName();
            $file->move(\public_path("LSFImage/"), $imageName);

            $data = new Word([
                "word" => $request->word,
                "determinant" => $request->determinant,
                "level" => $request->level,
                "Language" => $request->Language,
                "BookCategory" => $request->BookCategory,
                "LSFImage" => $imageName,
            ]);
            $data->save();
        }
        else{
            $data = new Word([
                "word" => $request->word,
                "determinant" => $request->determinant,
                "level" => $request->level,
                "Language" => $request->Language,
                "BookCategory" => $request->BookCategory,
            ]);
            // dd($data);
            $data->save();
        }

        if ($request->hasFile("images")) {
            $files = $request->file("images");
            foreach ($files as $file) {
                $imagesName = time() . '_' . $file->getClientOriginalName();
                $request['Word_tbl_Id']=$data->id;
                $request['images'] = $imagesName;
                $file->move(\public_path("/images"), $imagesName);
                $imageNames[] = $imagesName;
                // Image::create($request->all());
            }
            $jsonEncodedImages = json_encode($imageNames);
            Image::create([
                'Word_tbl_Id' => $data->id, // Assuming $data is defined elsewhere
                'images' => $jsonEncodedImages,
            ]);
        }
        return redirect('/dashboard');
    }
}


