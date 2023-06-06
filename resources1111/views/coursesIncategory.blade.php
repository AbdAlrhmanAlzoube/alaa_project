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
    <link rel="stylesheet" href="{{ asset('css/animate.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-eoq3qjzJlVZ1xJx8Lj0nRUTz1+Dg6WfQ2hO5z5oQb5D5e5x5O7kFz4i4rk7V5P5GDuM1bKdX9LH3qo0TgT6Uw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
</head>
<body>
    <h1> the category {{$cat->name}} </h1>
    <hr>
    @foreach ($courses as $course)
         <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 wordpress design">
                            <div class="events_item">
                                <div class="thumb">
                                    <a href="{{route('showdetailscourse.showDetailCourse' ,$course->id)}}"><img src="{{ asset( 'storage/'.$course->img) }}" alt="" width="200" height="400"></a>
                                    <span class="category">{{$course->price}}</span>
                                    <span class="price">
                                        <h6><em></em>000</h6>
                                    </span>
                                </div>
                                <div class="down-content">
                                    <span class="author"></span>
                                    <h4>{{$course->description}}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
    @endforeach
</body>
</html>
