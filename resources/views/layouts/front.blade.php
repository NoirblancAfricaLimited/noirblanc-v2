<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

    <title>{{env('APP_NAME')}}</title>
    <!-- Loading third party fonts -->
    <link href="{{asset('front')}}/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="{{asset('front')}}/fonts/novecento-font/novecento-font.css" rel="stylesheet" type="text/css">
    <!-- Loading main css file -->
    <link rel="stylesheet" href="{{asset('front')}}/style.css">

<!--[if lt IE 9]>
    <script src="{{asset('front')}}/js/ie-support/html5.js"></script>
    <script src="{{asset('front')}}/js/ie-support/respond.js"></script>
    <![endif]-->

</head>


<body class="homepage header-collapse">

<div id="site-content">

    <header class="site-header">
        <div class="container">
            <a id="branding" href="index.html">
                <img src="{{asset('')}}media/logos/logo.jpg" width="100" alt="Company name" class="logo">
                <div class="logo-copy">
                    {{--                    <h1 class="site-title">{{env('APP_NAME')}}</h1>--}}
                    {{--                    <small class="site-description">Your style choice</small>--}}
                </div>
            </a> <!-- #branding -->


            <!-- Default snippet for navigation -->
            <div class="main-navigation">
                <button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
                <ul class="menu">
                    <li class="menu-item current-menu-item"><a href="index.html">Home</a></li>
                    <li class="menu-item"><a href="about.html">About</a></li>
                    <li class="menu-item"><a href="service.html">Services</a></li>
                    <li class="menu-item"><a href="gallery.html">Gallery</a></li>
                    <li class="menu-item"><a href="contact.html">Contact</a></li>
                </ul> <!-- .menu -->
            </div> <!-- .main-navigation -->

            <div class="mobile-navigation"></div>
        </div>
    </header>

    <div class="hero hero-slider">
        <ul class="slides">
            <li data-bg-image="{{asset('front')}}/dummy/1.jpg">
                <div class="container">
                    <h3 class="slider-subtitle">Find your favourite Stylist anytime</h3>
                    <h2 class="slider-title">Book Now</h2>
                    <p>Are you tired of always not being able to find a stylist, makeup artist or even Barber. Well,
                        look no further</p>
                    <a href="#" class="button large">Find a Service</a>
                </div>
            </li>
            <li data-bg-image="{{asset('front')}}/dummy/2.jpg">
                <div class="container">
                    <h3 class="slider-subtitle">Interested in Joining our Network</h3>
                    <h2 class="slider-title">Join Here</h2>
                    <p>Be a part of our family</p>
                    <a href="#" class="button large">Join</a>
                </div>
            </li>
            <li data-bg-image="{{asset('front')}}/dummy/3.jpg">
                <div class="container">
                    <h3 class="slider-subtitle">Find your favourite Stylist anytime</h3>
                    <h2 class="slider-title">Book Now</h2>
                    <p>Are you tired of always not being able to find a stylist, makeup artist or even Barber. Well,
                        look no further</p>
                    <a href="#" class="button large">Find a Service</a>
                </div>
            </li>
        </ul>
    </div>

    <main class="main-content">

        {{$slot}}

    </main>

    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="widget contact-widget">
                        <h3 class="widget-title">Contact</h3>
                        <div class="contact-info">
                            <address>
                                <img src="{{asset('front')}}/images/icon-map-small.png" class="icon">
                                <p><strong>{{env('APP_NAME')}}</strong> 12345, Off something lane, Woodlands, Lusaka</p>
                            </address>
                            <a href="mailto:contact@companyname.com" class="mail"><img
                                    src="{{asset('front')}}/images/icon-envelope-small.png" class="icon">info@noirblanc.co</a>
                            <a href="tel:(500)942042259" class="phone"><img
                                    src="{{asset('front')}}/images/icon-phone-small.png" class="icon">(+260) 912 345 678</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="widget">
                        <h3 class="widget-title">Social Media</h3>
                        <p>Please like, share, subscribe, follow or comment on our Socials</p>
                        <div class="social-links">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
{{--                <div class="col-md-6">--}}
{{--                    <div class="widget">--}}
{{--                        <h3 class="widget-title">Newsletter</h3>--}}
{{--                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident et praesentium </p>--}}
{{--                        <form action="#" class="subscribe-form">--}}
{{--                            <input type="email" placeholder="Enter our email...">--}}
{{--                            <input type="submit" value="Sign up">--}}
{{--                        </form>--}}
{{--                    </div>--}}
{{--                </div>--}}
            </div>

            <div class="colophon">
                <p>Copyright {{date('Y')}} {{env('APP_NAME')}}. Designed by Smartified Technology. All rights
                    reserved.</p>
            </div>
        </div>
    </footer>
</div>


<script src="{{asset('front')}}/js/jquery-1.11.1.min.js"></script>
<script src="{{asset('front')}}/js/plugins.js"></script>
<script src="{{asset('front')}}/js/app.js"></script>

</body>

</html>
