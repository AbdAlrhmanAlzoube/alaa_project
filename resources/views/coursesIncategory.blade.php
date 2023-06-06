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
    <link rel="stylesheet" href="{{ asset('/css/dtc.css')}}">

</head>
<body>

   {{--  ***** Header Area Start *****  --}}
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                         {{--  ***** Logo Start *****  --}}
                        <a href="{/}" class="logo">
                            <h1>moufeed</h1>
                        </a>
                         {{--  ***** Logo End *****  --}}

                        {{--   ***** Serach Start *****   --}}
                        <div class="search-input">
                            <form id="search" action="#">
                                <input type="text" placeholder="Type Something" id='searchText' name="searchKeyword"
                                    onkeypress="handle" />
                                <i class="fa fa-search"></i>
                            </form>
                        </div>
                        {{--   ***** Search Start *****  --}}
                        {{--   ***** Menu Start *****  --}}
                        <ul class="nav">
                            {{-- <li class="scroll-to-section"><a href="/theHome" class="active">Home</a></li> --}}
                            <li class="scroll-to-section"><a href="/Services">Services</a></li>
                            <li class="scroll-to-section"><a href="/courses">Courses</a></li>
                            <li class="scroll-to-section"><a href="/teacher">Teacher</a></li>
                            <li class="scroll-to-section"><a href="/Events">Events</a></li>
                            <li class="scroll-to-section"><a href="{{route('register')}}">Register Now!</a></li>
                            <li class="scroll-to-section"><a href="{{route('login')}}">Login</a></li>
                            <li class="scroll-to-section"><a href="/profile"><i class="fas fa-user-circle"></i></a></li>
                            {{-- <li class="scroll-to-section"><a href="/cart"><i class="fas fa-shopping-cart"></i></a>
                            </li> --}}
                            <div class="cart">
                                <li class="scroll-to-section">
                                    <a href="/cart">
                                        <div class="cart-icon">
                                            <i class="fas fa-shopping-cart"></i>
                                            <span class="cart-count">0</span>
                                        </div>
                                    </a>
                                </li>
                        </ul>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        {{--   ***** Menu End *****   --}}
                    </nav>
                </div>
            </div>
        </div>
    </header>
    {{--   ***** Header Area End *****   --}}

    <div class="main-banner" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    </div>
                </div>
            </div>
        </div>
    </div>
     <h1> the category {{$cat->name}} </h1>
     <hr>

      {{-- @foreach ($courses as $course)
    <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 wordpress design">
        <div class="events_item">
                    <div class="thumb">
                        <a href="{{route('showdetailscourse.showDetailCourse' ,$course->id)}}"><img
                                src="{{ asset( 'storage/'.$course->img) }}" alt="" width="200" height="400"></a>
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
    @endforeach  --}}


     {{-- <section class="section courses" id="courses">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-heading">
                        <h6>The Category</h6>
                        <h2>Current Category`s</h2>
                    </div>
                </div>
            </div>
            <ul class="event_filter">
                <li>
                    <a class="is_active" href="#!" data-filter="*">Show All</a>
                </li>
                <li>
                    <a href="#!" data-filter=".design">Webdesign</a>
                </li>
                <li>
                    <a href="#!" data-filter=".development">Development</a>
                </li>
                <li>
                    <a href="#!" data-filter=".wordpress">Wordpress</a>
                </li>
            </ul>
          @foreach ($courses as $course)
             <div class="row event_box">
                <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 design">
                    <div class="events_item">
                                    <div class="thumb">
                                        <a href="{{route('showdetailscourse.showDetailCourse' ,$course->id)}}"><img
                                                src="{{ asset( 'storage/'.$course->img) }}" alt="" width="200" height="400"></a>
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
            @endforeach

         
        </div>
    </section> --}}
    
      {{-- <section class="section courses" id="courses">
            <div class="container">
                <div class=" side-video-list">
                  @foreach ($courses as $course)
                    <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 design">
                        <div class="events_item">
                            <div class="thumb">
                 <a href="{{route('showdetailscourse.showDetailCourse' ,$course->id)}}"><img src="{{asset ('images/team-04.png') }}" alt="" width="200" height="400"></a>
                 <a href="{{route('showdetailscourse.showDetailCourse' ,$course->id)}}"><img src="{{ asset( 'storage/'.$course->img) }}" alt="" width="200" height="400"></a>
                                <span class="category">{{$course->duration}}</span>
                                <span class="price">
                                    <h6><em>$</em>{{$course->price}}</h6>
                                </span>
                            </div>
                            <div class="down-content">
                                <span class="author">hhhhhhh</span>
                            <h2>{{$course->description}}</h2>
                            </span>
                            <button class="add-to-cart" data-name="Product 2" data-price="20">
                                Add to Cart
                            </button>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </section> --}}
        
         <section class="section courses" id="courses">
            <div class="container">
                <div class=" side-video-list">
                  @for ( $i =0 ; $i<8;$i++)
                    <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 design">
                        <div class="events_item">
                            <div class="thumb">
                 <img src="{{ asset('images/course-05.jpg') }}" alt="" width="200" height="400">
                                <span class="category">12:2:22</span>
                                <span class="price">
                                    <h6><em>$</em>888</h6>
                                </span>
                            </div>
                            <div class="down-content">
                                <span class="author">hhhhhhh</span>
                            <h2>Alaa LLLLLLLLLLLLLLLLLLLLL</h2>
                            </span>
                            <button class="add-to-cart" data-name="Product 2" data-price="20">
                                Add to Cart
                            </button>
                            </div>
                        </div>
                    </div>
                    @endfor
                </div>
            </div>
        </section>

    <footer>
        <div class="container">
            <div class="col-lg-12">
                <p>Copyright © 2036 Scholar Organization. All rights reserved. &nbsp;&nbsp;&nbsp; Design: moufeed </p>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{ asset('vendor/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/isotope.min.js')}}  "></script>
    <script src="{{ asset('js/owl-carousel.js')}}  "></script>
    <script src="{{ asset('js/counter.js') }}"></script>
    <script src="{{ asset('js/custom.js') }}"></script>
</body>

</html>

