<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<style></style>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'BookList') }}</title>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap" rel="stylesheet">

    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css">
   <style>
   		* {
   			border-radius: 0px !important;
   		}
/*
   		.navbar-default {
		  background: none !important;
		}
   		.navbar {
		   background-color: transparent !important;
		   background: transparent !important;
		   border-color: transparent !important;
		     
		}*/

		.navbar {
		    -webkit-box-shadow: 0 8px 6px -6px #999;
		    -moz-box-shadow: 0 8px 6px -6px #999;
		    box-shadow: 0 8px 6px -6px #999;

		    /* the rest of your styling */
		}


   </style>
</head>
    <body style="background-color:#F7F7F7;">

       	<nav class="navbar navbar-inverse" role="navigation" style="background-color:white !important;">
		  <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="container">
		  	<div class="navbar-header">
			    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand" href="#" >Artististik</a>
			  </div>

			  <!-- Collect the nav links, forms, and other content for toggling -->
			  <div class="collapse navbar-collapse navbar-ex1-collapse">
			    <ul class="nav navbar-nav">
			      
			    </ul>
			    
			    <ul class="nav navbar-nav navbar-right">
			    	<li class="active"><a href="{{asset('/')}}">Home</a></li>
			    	<li><a href="#">About Us</a></li>
			    	<li><a href="#">Contact Us</a></li>
			      <li><a href="{{asset('/auth/login')}}">Login</a></li>
			    </ul>
			  </div><!-- /.navbar-collapse -->
		  </div>
		</nav>
        @yield('content')
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
