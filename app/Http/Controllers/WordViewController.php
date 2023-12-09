<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Word;
use Yajra\DataTables\Facades\Datatables;

class WordViewController extends Controller
{
    public function index(Request $request){   
        if ($request->ajax()) {
            $data = Word::select('*');
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {
                    $actionBtn = '<a href="editword/'. $data->id .'" class="edit btn btn-success btn-sm">View</a>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        $words = Word::all();

        return view('Word')->with('word', $words);
    }


       
}
