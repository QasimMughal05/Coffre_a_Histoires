@extends('layout')

@section('content')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Update Word') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <div class="container">
                        @if (session('Error'))
                            <div class="alert alert-success" role="alert">
                                {{ session('Error') }}
                            </div>
                        @endif
                        <div class="row">
                            <div class="col-6 mx-auto">
                                <form method="post" action="{{ route('updateword') }}" enctype="multipart/form-data">
                                    <input type="text" name="id" hidden="" value="{{$words->id}}">
                                    @if ($errors->any())
                                        <div class="alert alert-danger">
                                            <ul>
                                                @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif
                                    @csrf
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Word</label>
                                        <input type="text" class="form-control" id="productName"
                                            aria-describedby="productName" name="word" value="{{$words->word}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Word Type</label>
                                        <select id="inputState" class="form-control" name="word_type">
                                            <option name="a" {{ $words->word_type == 'a' ? 'selected' : '' }}>a</option>
                                            <option name="f" {{ $words->word_type == 'f' ? 'selected' : '' }}>f</option>
                                            <option name="m" {{ $words->word_type == 'm' ? 'selected' : '' }}>m</option>
                                            <option name="v" {{ $words->word_type == 'v' ? 'selected' : '' }}>v</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Determinant</label>
                                        <select id="inputState" class="form-control" name="determinant">
                                            <option name="L'" value="" {{ $words->determinant == "L' " ? 'selected' : '' }} >L'
                                            </option>
                                            <option name="Un" {{ $words->determinant == 'Un' ? 'selected' : '' }}>Un
                                            </option>
                                            <option name="Les" {{ $words->determinant == 'Les' ? 'selected' : '' }}>Les
                                            </option>
                                            <option name="La" {{ $words->determinant == 'La' ? 'selected' : '' }}>La
                                            </option>
                                            <option name="Le'" {{ $words->determinant == 'Le' ? 'selected' : '' }}>Le'
                                            </option>
                                            <option name="Des" {{ $words->determinant == 'Des' ? 'selected' : '' }}>Des
                                            </option>
                                            <option name="Une " {{ $words->determinant == 'Une' ? 'selected' : '' }}>Une
                                            </option>
                                            <option name="De la" {{ $words->determinant == 'De la' ? 'selected' : ''}}>De la
                                            </option>
                                        </select>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Level</label>
                                            <select id="inputState" class="form-control" name="level">
                                                <option name="crêche" {{ $words->level == 'crêche' ? 'selected' : ''}}>crêche
                                                </option>
                                                <option name="1H" {{ $words->level == '1H' ? 'selected' : '' }}>1H
                                                </option>
                                                <option name="2H" {{ $words->level == '2H' ? 'selected' : '' }}>2H
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Sybb</label><br>
                                            <select id="multiple-checkboxes" name="Syllab[]" class="form-control dropup"
                                                multiple>
                                                @foreach($syllabless as $syllabl)
                                                    {{$selectedsyllabl = $syllabl->Syllab}}
                                                    <option name="{{$syllabl->syllable}}" {{ in_array($syllabl->syllable,
                                                        explode(',', $words->Syllab)) ? 'selected' : ''}}>{{$syllabl->syllable}}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    @if($images = json_decode($words->Images))
                                        <div class="form-check form-check-inline">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="radio" name="Language" value="LPC"
                                                    id="inlineRadio1" value="option1" {{ $words->Language == 'LPC' ?
                                                'checked' : '' }}>LPC
                                            </label>
                                        </div>
                                        <div class="form-group mt-3">
                                            <label for="exampleInputEmail1">Images LPC</label>
                                            <div class="custom-file">
                                                <input id="input-2" name="images[]" type="file"
                                                    class="form-control @error('image.*') is-invalid @enderror"
                                                    data-show-upload="false" data-show-caption="true" multiple>
                                            </div>
                                        </div>
                                        <div class="mt-3">
                                            <label>LPC Image:</label>
                                            <div>
                                                @foreach ($images as $image)
                                                    <img src="{{ asset('/images/'. $image) }}" alt="Current Image" style="width: 14%;">
                                                @endforeach
                                            </div>
                                        </div>
                                    @endif
                                    @if($words->LSFImage)
                                        <div class="form-check form-check-inline">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="radio" name="Language" value="LSF" id="inlineRadio1" value="option2" {{ $words->Language == 'LSF' ? 'checked' : '' }}>LSF
                                            </label>
                                        </div>
                                        <div class="form-group mt-3">
                                            <label for="exampleInputEmail1">LSF</label>
                                            <div class="custom-file">
                                                <input id="input-2" name="LSFImage" type="file" class="file" data-show-upload="false" data-show-caption="true">
                                            </div>
                                            <div class="mt-3">
                                                <label>LSF Image:</label>
                                                <div>
                                                    <img src="{{ asset('/images/'. $words->LSFImage) }}" alt="Current Image" style="width: 14%;">
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Book</label>
                                            <select id="inputState" class="form-control" name="BookCategory"
                                                data-live-search="true">
                                                @foreach($book as $Books)
                                                    {{$selectedbook = $Books->Book }}
                                                    <option name="{{$Books->Book}}" {{ $words->BookCategory == $selectedbook ? 'selected' : '' }}>{{$Books->Book}}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <br>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <!-- <th><a href="" class="btn btn-primary">Back</a></th> -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>


<div class="jumbotron text-center mt-3" style="margin-bottom:0">
    <p>Footer</p>
</div>

<script>

    $(document).ready(function () {
        $('#multiple-checkboxes').multiselect({
            nonSelectedText: 'Syllble',
            enableFiltering: true,
            enableCaseInsensitiveFiltering: true,
            buttonWidth: '450px',
            maxHeight: 350,

        });

    });
</script>