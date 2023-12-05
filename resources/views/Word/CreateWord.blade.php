@extends('layout')

@section('content')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Create Word') }}
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
                                <form method="post" action="{{ route('wordstore') }}" enctype="multipart/form-data">
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
                                            aria-describedby="productName" name="word">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Determinant</label>
                                        <select id="inputState" class="form-control" name="determinant">
                                            <option name="L'">L'</option>
                                            <option name="Un">Un</option>
                                            <option name="Les">Les</option>
                                            <option name="La">La</option>
                                            <option name="Le'">Le'</option>
                                            <option name="Des">Des</option>
                                            <option name="Une ">Une </option>
                                            <option name="De la">De la</option>
                                        </select>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Level</label>
                                            <select id="inputState" class="form-control" name="level">
                                                <option name="crêche">crêche</option>
                                                <option name="1H">1H</option>
                                                <option name="2H">2H</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Level</label>
                                            <select class="selectpicker" multiple data-live-search="true">
                                                <option>Mustard</option>
                                                <option>Ketchup</option>
                                                <option>Relish</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="radio" name="Language" value="LPC"
                                                id="inlineRadio1" value="option1" checked>LPC
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="radio" name="Language" value="LSF"
                                                id="inlineRadio1" value="option2">LSF
                                        </label>
                                    </div>
                                    <div class="form-group mt-3">
                                        <label for="exampleInputEmail1">Images LPC</label>
                                        <div class="custom-file">
                                            <input id="input-2" name="images[]" type="file"
                                                class="form-control @error('image.*') is-invalid @enderror"
                                                data-show-upload="false" data-show-caption="true" multiple>

                                            @error('images.*')
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group mt-3">
                                        <label for="exampleInputEmail1">LSF</label>
                                        <div class="custom-file">
                                            <input id="input-2" name="LSFImage" type="file" class="file"
                                                data-show-upload="false" data-show-caption="true">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Book</label>
                                            <select id="inputState" class="form-control" name="BookCategory">
                                                @foreach($data as $Books)
                                                <option name="1" value="{{$Books->Book}}">{{$Books->Book}}</option>
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


@endsection