<?php

namespace App\Http\Controllers;

use App\Models\Word;
use App\Models\Image;
use App\Models\Book;
use App\Models\syllable;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\Datatables;
use Illuminate\Http\RedirectResponse;

class WordController extends Controller
{
    public function indexword()
    {
        $data = Book::select('*')->get();
        $syllabl = syllable::select('*')->get();
        return view('Word.CreateWord', compact('data', 'syllabl'));
    }

    public function Wordview(Request $request)
    {

        if ($request->ajax()) {
            $data = Word::select('*');
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {
                    $actionBtn = '<a href="editword/' . $data->id . '" class="edit btn btn-success btn-sm">Edit</a>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        $words = Word::all();

        return view('dashboard')->with('word', $words);
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

            $Syllab = $request->Syllab;
            $Syllabs = implode(',', $Syllab);

            $data = new Word([
                "word" => $request->word,
                "determinant" => $request->determinant,
                "level" => $request->level,
                "Syllab" => $Syllabs,
                "Language" => $request->Language,
                "BookCategory" => $request->BookCategory,
                "LSFImage" => $imageName,
            ]);

            $data->save();
        } else {
            $Syllab = $request->Syllab;
            $Syllabs = implode(',', $Syllab);

            $data = new Word([
                "word" => $request->word,
                "determinant" => $request->determinant,
                "level" => $request->level,
                "Syllab" => $Syllabs,
                "Language" => $request->Language,
                "BookCategory" => $request->BookCategory,
            ]);
            $data->save();
        }

        if ($request->hasFile("images")) {
            $files = $request->file("images");
            foreach ($files as $file) {
                $imagesName = time() . '_' . $file->getClientOriginalName();
                $request['Word_tbl_Id'] = $data->id;
                $request['images'] = $imagesName;
                $file->move(\public_path("/images"), $imagesName);
                $imageNames[] = $imagesName;
            }
            $jsonEncodedImages = json_encode($imageNames);
            Image::create([
                'Word_tbl_Id' => $data->id, // Assuming $data is defined elsewhere
                'images' => $jsonEncodedImages,
            ]);
        }
        return redirect('/dashboard');
    }

    public function editword($id)
    {
        $word = Word::findOrFail($id);
        $data = Book::all();
        $syllabl = syllable::select('*')->get();
        return view('Word.editword')->with('words', $word)->with('book', $data)->with('syllabless', $syllabl);
    }

    public function updateword(Request $request): RedirectResponse
    {
        $request->validate([
            'word' => 'required',
        ]);

        try {
            $word = Word::findOrFail($request->id);
            
            $input = $request->all();
            if (isset($input['Syllab']) && is_array($input['Syllab'])) {
                // Implode the array into a comma-separated string
                $input['Syllab'] = implode(',', $input['Syllab']);
            }
            // dd($input);
            $word->update($input);

        } catch (\Exception $error) {
            return back()->with('Error', 'Product Not Found')->with('Reason', $error->getMessage());
        }
        return redirect('/dashboard');
    }
}


