<?php

namespace App\Http\Controllers;

use App\Models\Word;
use App\Models\Image;
use App\Models\Book;
use App\Models\syllable;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\Datatables;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;

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
                    if (Auth::user()->user_type == 1) {
                        $actionBtn = '<a href="editword/' . $data->id . '" class="edit btn btn-success btn-sm">Edit</a>';
                        $viewBtn = '<a href="ViewBooksWord/' . $data->id . '" class="view btn btn-success btn-sm mt-1">View</a>';
                        return $actionBtn . ' ' . $viewBtn;

                    } else {
                        $viewBtn = '<a href="ViewBooksWord/' . $data->id . '" class="view btn btn-info btn-sm">View</a>';
                        return $viewBtn;
                    }

                })
                ->rawColumns(['action'])
                ->make(true);
        }
        $words = Word::all();

        return view('dashboard')->with('word', $words);
    }

    public function store(Request $request)
    {
        $request->validate([
            'word' => 'required|max:255',
            'Illustration' => 'required|image|mimes:svg,jpg,jpeg|max:10240',
            'Language' => 'required|in:lpc,lsf',
            
            'Syllab' => $request->Language === 'lpc' ? 'required|array' : 'nullable',
        ]);
        
        

        if ($request->Language == 'lpc') {
            $file = $request->file("Illustration");
            $imageName = time() . '_' . $file->getClientOriginalName();
            $file->move(\public_path("cards-illustrations/"), $imageName);

            $Syllab = $request->Syllab;
            $Syllabs = implode(',', $Syllab ?? []);

            $data = new Word([
                "word" => $request->word,
                "word_type" => $request->word_type,
                "determinant" => $request->determinant,
                "level" => $request->level,
                "Syllab" => $Syllabs,
                "Language" => $request->Language,
                "BookCategory" => $request->BookCategory,
                "Illustration" => '/cards-illustrations/' . $imageName,
            ]);

            $data->save();
        } else {
            $file = $request->file("Illustration");
            $imageName = time() . '_' . $file->getClientOriginalName();
            $file->move(\public_path("cards-illustrations/"), $imageName);
            $data = new Word([
                "word" => $request->word,
                "word_type" => $request->word_type,
                "determinant" => $request->determinant,
                "level" => $request->level,
                "Illustration" => '/cards-illustrations/' . $imageName,
                "Language" => $request->Language,
                "BookCategory" => $request->BookCategory,
            ]);
            $data->save();
        }

        if ($request->hasFile("lsf_images_paths")) {
            $imageNames = [];

            foreach ($request->file("lsf_images_paths") as $file) {
                $imageName = time() . '_' . $file->getClientOriginalName();
                $file->move(public_path("lsf-images/"), $imageName);
                $imageNames[] = '/lsf-images/' . $imageName;
            }
            $data->update(['lsf_images_paths' => implode('|', $imageNames)]);
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
        // dd($request->all());
        $request->validate([
            'word' => 'required',
        ]);

        try {
            $word = Word::findOrFail($request->id);

            $input = $request->all();
            if (isset($input['Syllab']) && is_array($input['Syllab'])) {
                $input['Syllab'] = implode(',', $input['Syllab']);
            }
            if ($request->hasFile("Illustration")) {
                $file = $request->file("Illustration");
                $fileName = time() . '_' . $file->getClientOriginalName();
                $file->move(public_path("cards-illustrations/"), $fileName);
                $input['Illustration'] = '/cards-illustrations/' . $fileName;
            }
            if ($request->hasFile("lsf_images_paths")) {
                $imageNames = [];

                foreach ($request->file("lsf_images_paths") as $file) {
                    $imageName = time() . '_' . $file->getClientOriginalName();
                    $file->move(\public_path("lsf-images/"), $imageName);
                    $imageNames[] = '/lsf-images/' . $imageName;
                }
                $input['lsf_images_paths'] = implode('|', $imageNames);
            }
            $word->update($input);

        } catch (\Exception $error) {
            return back()->with('Error', 'Product Not Found')->with('Reason', $error->getMessage());
        }
        return redirect('/dashboard');
    }
}


