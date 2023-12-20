@extends('layout')
<div class="container-fluid pt-5"
    style="background-image:url('{{$backgroundColor}}'); background-position: center;background-repeat: no-repeat;background-size: cover;height:48%">
    <div class="container mt-5">
        <div class="row text-center">
            <div class="col">
                <h1 class="mt-3 mb-3">{{$words->determinant}} {{$words->word}}</h1>
            </div>
            <div class="col">
                <h1 class="mt-3 mb-3">{{$words->Language}}</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center" style="margin-top:50px">
                @if($words->Language == 'lpc')
                @foreach ($result as $item)
                @php
                    $imageCount = count($result);

                    if ($imageCount === 3) {
                    $style = 'width:300px';
                    } elseif ($imageCount === 4) {
                    $style = 'width:260px';
                    } elseif ($imageCount === 2) {
                    $style = 'width:300px';
                    }else{
                    $style = 'width:200px';
                    }
                    @endphp
                <img src="{{ asset($item['image']) }}" class="img-responsive" alt="lpcLights" style="{{$style}};margin:7px; border: 7px solid #fff!important;">
                @endforeach
                @else
                @php
                $LSFImage = explode('|', $words->lsf_images_paths)
                @endphp
                @foreach ($LSFImage as $lsf_images)
                <img src="{{ asset($lsf_images) }}" alt="lsfLights"
                    style="width:300px;border: 7px solid #fff!important;">
                @endforeach
                @endif
            </div>
        </div>
    </div>
    <div class="container" style="margin-top:4em;">
        <div class="row justify-content-center">
            <div class="col-md-2">
                <div class="thumbnail">
                    <img src="{{ asset($words->Illustration) }}" alt="illustrations"
                        class="shadow-1-strong rounded mb-4">
                    <a href="{{route('generatepdf',['id'=>$words->id])}}" class="edit btn btn-success btn-sm">Generate
                        PDF</a>
                </div>
            </div>
        </div>
    </div>
    <p class="vertical-text ml-3 position-absolute top-0 start-0"
        style=" margin-top: -10em;z-index: 1; white-space: nowrap;"> {{$words->BookCategory}}</p>