@extends('layout')
<div class="container-fluid pt-5 pb-5" style="background: aqua;">
<div class="container mt-5">
    <h1 class="mt-3 mb-3">Your Section Title</h1>
    <div class="row ">
        @if($images = json_decode($words->Images))
        @foreach ($images as $image)
        <div class="col-md-4">
            <div class="thumbnail">
                <img src="{{ asset('/images/'. $image) }}" alt="Lights" style="width:100%">
            </div>
        </div>
        @endforeach
        @endif
        @if($words->LSFImage)
        <div class="col-md-4 ">
            <div class="thumbnail">
                <img src="{{ asset('/images/'. $words->LSFImage) }}" alt="Lights" style="width:100%">
            </div>
        </div>
        @endif
    </div>
</div></div>

    <div class="container" style="margin-bottom:4em;">
        <div class="mt-5 mb-5">
            <h1 class="pt-5">{{$words->word}}</h1>
        </div>
        <div class="mt-5 text-right mb-2">
            <h2>{{$words->Language}}</h2>
        </div>
    </div>
    <p class="vertical-text ml-3 position-absolute top-0 start-0" style=" margin-top: -32em;z-index: 1; white-space: nowrap;"> {{$words->BookCategory}}</p>


<div class="container-fluid">
    <img src="{{ asset('/images/bttm.png') }}" alt="Lights" style="width:100%">
</div>