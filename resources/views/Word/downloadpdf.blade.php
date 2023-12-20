<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Coffre à Histoires</title>
    <style>
        html {
            margin: 0;
        }

        .rowgg::after {
            content: "";
            clear: both;
            display: table;
        }

        .colmd6 {
            width: 50%;
            float: left;
            text-align: center;
            padding: 20px;
            margin-top: 30px;
            margin-bottom: 20px;
        }

        h2 {
            margin: 0;
        }

        .custom-bg {
            background-image: url('{{$backgroundColor}}');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 250px;
        }
    </style>
</head>

<body>
    <div class="container-fluid custom-bg">
        <div class="container" style="height:300px;">
            <div class="rowgg">
                <div class="colmd6">
                    <h2>{{$word->determinant}} {{$word->word}}</h2>
                </div>
                <div class="colmd6">
                    <h2>{{$word->Language}}</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center mt-2" style="margin-left:-30px">
                    @if($word->Language == 'lpc')
                    @foreach ($results as $item)
                    @php
                        $imageCount = count($results);
                        $margin = '';
                        if ($imageCount === 3) {
                            $style = 'width:200px';
                        } elseif ($imageCount === 4) {
                            $style = 'width:160px';
                            $margin = 'mt-4';
                        } elseif ($imageCount === 2) {
                            $style = 'width:250px';
                        } else {
                            $style = 'width:100px';
                        }
                    @endphp
                    <img src="{{ public_path($item['image']) }}" alt="lpcLights" class="img-responsive {{$margin}}"
                        style="{{$style}};margin:5px; border: 7px solid #fff!important;">
                    @endforeach
                    @else
                    @php
                    $LSFImage = explode('|', $word->lsf_images_paths)
                    @endphp
                    @foreach ($LSFImage as $lsf_images)
                    <img src="{{ public_path($lsf_images) }}" alt="lsfLights" class="img-responsive"
                        style="width: 250px; border: 7px solid #fff!important">
                    @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center" style="margin-top:50px">
                    <img src="{{public_path($word->Illustration)}}" alt="Lights" style="max-width:30%; justify-content:center">
                </div>
                
            </div>
        </div>
        <p><i> {{$word->BookCategory}}</i></p>
    </div>
    <div class="container-fluid text-center">
        <img src="{{ public_path('/images/bttm.png') }}" class="img-responsive" alt="Lights"
            style="width:100%;margin-right:17px">
    </div>
</body>

</html>