<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Word;
use App\Models\syllable;
// use \PDF;
use Barryvdh\DomPDF\Facade\Pdf as PDF;



class WordViewController extends Controller
{

    public function AllBooksWord($id)
    {
        $word = Word::findOrFail($id);
        $implodedData = Word::where('id', $id)->pluck('Syllab')->toArray();
        $explodedData = [];
        foreach ($implodedData as $item) {
            $explodedData = array_merge($explodedData, array_map('trim', explode(',', $item)));
        }

        $uniqueData = array_unique($explodedData);
        $results = [];

        foreach ($uniqueData as $syllable) {
            $matchingRow = syllable::where('syllable', '=', $syllable)->orWhere('syllable', '=', $syllable)->first();
            if ($matchingRow) {
                $results[] = [
                    'syllable' => $matchingRow->syllable,
                    'image' => $matchingRow->image,
                ];
            }
        }

        $wordType = $word->word_type;
        switch ($wordType) {
            case 'a':
                $backgroundColor = asset('images/bg_green.png');
                break;
            case 'f':
                $backgroundColor = asset('images/bg_yellow.png');
                break;
            case 'm':
                $backgroundColor = asset('images/bg_brown.png');
                break;
            case 'v':
                $backgroundColor = asset('images/bg_blue.png');
                break;
            default:
                $backgroundColor = '';
                break;
        }
        return view('Word.ViewBooksWord')->with('words', $word)->with('result', $results)
            ->with('backgroundColor', $backgroundColor);
    }

    public function generatepdf($id)
    {

        $word = Word::find($id);

        $implodedData = Word::where('id', $id)->pluck('Syllab')->toArray();
        $explodedData = [];
        foreach ($implodedData as $item) {
            $explodedData = array_merge($explodedData, array_map('trim', explode(',', $item)));
        }
        $uniqueData = array_unique($explodedData);

        $results = [];

        foreach ($uniqueData as $syllable) {
            $matchingRow = syllable::where('syllable', '=', $syllable)->orWhere('syllable', '=', $syllable)->first();
            if ($matchingRow) {
                $results[] = [
                    'syllable' => $matchingRow->syllable,
                    'image' => $matchingRow->image,
                ];
            }
        }

        $wordType = $word->word_type;
        switch ($wordType) {
            case 'a':
                $backgroundColor = public_path('images/bg_green.png');
                break;
            case 'f':
                $backgroundColor = public_path('images/bg_yellow.png');
                break;
            case 'm':
                $backgroundColor = public_path('images/bg_brown.png');
                break;
            case 'v':
                $backgroundColor = public_path('images/bg_blue.png');
                break;
            default:
                $backgroundColor = '';
                break;
        }

        $pdf = PDF::loadView('Word.downloadpdf', compact('word', 'results', 'backgroundColor'))->setPaper('a5', 'landscape');
        return $pdf->download($word->word . '_' . $word->Language . '.pdf');

    }
}
