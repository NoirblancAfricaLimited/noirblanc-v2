<head>
    <meta charset="utf-8"/>
    <title>{{env('APP_NAME')}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <meta name="title" content="{{env('APP_NAME')}}">
    <meta name="description" content="{{env('APP_DESC')}}">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{env('APP_URL')}}">
    <meta property="og:title" content="{{env('APP_NAME')}}">
    <meta property="og:description" content="{{env('APP_DESC')}}">
    <meta property="og:image" content="{{asset('img/logo-black.jpeg')}}">

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="{{env('APP_URL')}}">
    <meta property="twitter:title" content="{{env('APP_URL')}}">
    <meta property="twitter:description" content="{{env('APP_DESC')}}">
    <meta property="twitter:image" content="{{asset('img/logo-black.jpeg')}}">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"/>
    <link href="{{asset('')}}/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css"/>

    <link href="{{asset('')}}plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-timepicker/0.5.2/css/bootstrap-timepicker.css"
          rel="stylesheet" type="text/css"/>
    <link href="{{asset('')}}css/wizard-4.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css"/>

    <link href="{{asset('')}}plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css"/>
    <link href="{{asset('')}}plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css"/>
    <link href="{{asset('')}}css/style.css" rel="stylesheet" type="text/css"/>
    <link href="{{asset('')}}css/login-3.css" rel="stylesheet" type="text/css"/>

    <link rel="shortcut icon" href="{{asset('')}}media/logos/favicon.ico"/>
    @livewireStyles

</head>
