 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <title>moufeed </title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="{{ asset('css/fontawesome.css')}}">
    <link rel="stylesheet" href="{{ asset('/css/styleall.css')}}">
    <link rel="stylesheet" href="{{ asset('css/owl.css')}}">

</head>
<body>
    <h1> the Details course Id {{$course->id}} </h1>
    <hr>

         <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 wordpress design">
                            <div class="events_item">
                                <div class="thumb">
                                    <img src="{{ asset( 'storage/'.$course->img) }}" alt="" width="200" height="400">
                                    <span class="category">{{$course->price}}</span>
                                    <span class="price">
                                        <h6><em></em>000</h6>
                                    </span>
                                </div>
                                <div class="down-content">
                                    <span class="author"></span>
                                    <h4>{{$course->price}}</h4>
                                    <h4>{{$course->description}}</h4>
                                    <h4>{{$course->count_episod}}</h4>
                                    <h4>{{$course->duration}}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
             @foreach ($episodes as $episode)
                 <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 wordpress design">
                            <div class="events_item">
                                <div class="thumb">
                                    <img src="{{ asset( 'storage/'.$episode->img) }}" alt="" width="200" height="400">
                                    {{-- <video src="{{ asset( 'storage/'.$episode->link) }}" ></video> --}}
                                      <video src="{{URL::asset( 'storage/'.$episode->link)}}" controls
                                                  width="1400" height="600"> </video> …
                                    <span class="category">{{$episode->title}}</span>
                                    <span class="price">
                                        <h6><em></em>000</h6>
                                    </span>
                                </div>
                                <div class="down-content">
                                    <span class="author">{{$episode->title}}</span>
                                    <h4>{{$episode->description}}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach

</body>
</html>
