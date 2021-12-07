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
    @livewireStyles

</head>


<body>

<div id="site-content">

    <header class="site-header">
        <div class="container">
            <a id="branding" href="index.html">
                <img src="{{asset('')}}media/logos/logo.jpg" alt="Company name" class="logo">
{{--                <div class="logo-copy">--}}
{{--                    <h1 class="site-title">Company Name</h1>--}}
{{--                    <small class="site-description">Slogan goes here</small>--}}
{{--                </div>--}}
            </a> <!-- #branding -->


            <div class="main-navigation">
                <button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
                <ul class="menu">
                    <li class="menu-item current-menu-item"><a href="index.html">Home</a></li>
                    <li class="menu-item"><a href="about.html">About</a></li>
                    <li class="menu-item"><a href="{{route('service.browse')}}">Services</a></li>
                    <li class="menu-item"><a href="contact.html">Contact</a></li>
                    <li class="menu-item"><a href="{{route('login')}}">Login</a></li>

                </ul> <!-- .menu -->
            </div> <!-- .main-navigation -->

            <div class="mobile-navigation"></div>
        </div>
    </header>

    <main class="main-content">
        <div class="page">
            <div class="container">
               {{$slot}}
            </div>
        </div>
    </main>

    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="widget contact-widget">
                        <h3 class="widget-title">Contact</h3>
                        <div class="contact-info">
                            <address>
                                <img src="images/icon-map-small.png" class="icon">
                                <p><strong>Company name</strong> 563 Avenue Street, New York</p>
                            </address>
                            <a href="mailto:contact@companyname.com" class="mail"><img src="images/icon-envelope-small.png" class="icon">contact@companyname.com</a>
                            <a href="tel:(500)942042259" class="phone"><img src="images/icon-phone-small.png" class="icon">(500)942042259</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="widget">
                        <h3 class="widget-title">Social Media</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident et praesentium </p>
                        <div class="social-links">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="widget">
                        <h3 class="widget-title">Newsletter</h3>
                        <form action="#" class="subscribe-form">
                            <input type="email" placeholder="Enter our email...">
                            <input type="submit" value="Sign up">
                        </form>
                    </div>
                </div>
            </div>

            <div class="colophon">
                <p>Copyright 2014 Company name. Designed by Themezy. All rights reserved.</p>
            </div>
        </div>
    </footer>
</div>


<script src="{{asset('front')}}/js/jquery-1.11.1.min.js"></script>
<script src="{{asset('front')}}/js/plugins.js"></script>
<script src="{{asset('front')}}/js/app.js"></script>
@livewireScripts

</body>

</html>
