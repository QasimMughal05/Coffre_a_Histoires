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
                                        <label for="exampleInputEmail1">Word Type</label>
                                        <select id="inputState" class="form-control" name="word_type">
                                            <option name="a">a</option>
                                            <option name="f">f</option>
                                            <option name="m">m</option>
                                            <option name="v">v</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Determinant</label>
                                        <select id="inputState" class="form-control" name="determinant" >
                                            <option name="L'" selected>L'</option>
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
                                    <div class="form-check form-check-inline" id="lcp">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="radio" name="Language" value="lpc"
                                                id="inlineRadio1" value="option1" checked>LPC
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="radio" name="Language" value="lsf"
                                                id="inlineRadio1" value="option2">LSF
                                        </label>
                                    </div>
                                    <div class="form-row mt-3" id="syllab">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Syllab</label><br>
                                            <select id="multiple-checkboxes" name="Syllab[]" class="form-control dropup"
                                                multiple>
                                                @foreach($syllabl as $Syllab)
                                                <option value="{{$Syllab->syllable}}">{{$Syllab->syllable}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group mt-3" id="Illustration">
                                        <label for="exampleInputEmail1">Illustration</label>
                                        <div class="custom-file">
                                            <input id="input-2" name="Illustration" type="file" class="form-control" data-show-upload="false" data-show-caption="true">
                                        </div>
                                    </div>
                                    <div class="form-group mt-3" id="inputlsf">
                                        <label for="exampleInputEmail1">LSF</label>
                                        <div class="custom-file">
                                            <input id="input-2" name="lsf_images_paths[]" type="file" class="form-control" data-show-upload="false" data-show-caption="true" multiple>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Book</label>
                                            <select id="inputState" class="form-control" name="BookCategory"
                                                data-live-search="true">
                                                @foreach($data as $Books)
                                                <option value="{{$Books->Book}}">{{$Books->Book}}</option>
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

        $("#inputlsf").hide();

        $('input[type="radio"]').change(function () {
            if ($(this).val() == "lpc") {
                $("#syllab").show();
                $("#Illustration").show();
                $("#inputlsf").hide();
            } else if ($(this).val() == "lsf") {
                $("#syllab").hide();
                $("#inputlsf").show();
                $("#Illustration").show();
            }
        });
        $('input[value="LPC"]').trigger('change');
    });
</script>