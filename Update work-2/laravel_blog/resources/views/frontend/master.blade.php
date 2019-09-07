<!DOCTYPE html>
<html lang="en">
<head>
	<title>{{$title}}</title>
	<meta charset="UTF-8">
	<!-- Favicon -->
	<link href="{{url('/')}}/assets/{{url('/')}}/assets/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="{{url('/')}}/assets/css/google.css" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="{{url('/')}}/assets/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="{{url('/')}}/assets/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="{{url('/')}}/assets/css/owl.carousel.css"/>
	<link rel="stylesheet" href="{{url('/')}}/assets/css/style.css"/>
	<link rel="stylesheet" href="{{url('/')}}/assets/css/animate.css"/>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container-fluid">
			<!-- logo -->
			<div class="site-logo">
				<img src="{{url('/')}}/assets/img/logo.png" alt="logo">
			</div>
			<!-- responsive -->
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-right">
				<a href="cart.html" class="card-bag"><img src="{{url('/')}}/assets/img/icons/bag.png" alt=""><span>2</span></a>
			</div>
			<!-- site menu -->
			<ul class="main-menu">
				<li><a href="index.html">Home</a></li>
				<li><a href="categorie.html">Woman</a></li>
				<li><a href="categorie.html">Man</a></li>
				<li><a href="categorie.html">Child</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
		</div>
	</header>
	<!-- Header section end -->

@yield('content')
	
		<!-- Footer section -->
	<footer class="footer-section">
		<div class="container">
			<p class="copyright">
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			</p>
		</div>
	</footer>
	<!-- Footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="{{url('/')}}/assets/js/jquery-3.2.1.min.js"></script>
	<script src="{{url('/')}}/assets/js/bootstrap.min.js"></script>
	<script src="{{url('/')}}/assets/js/owl.carousel.min.js"></script>
	<script src="{{url('/')}}/assets/js/mixitup.min.js"></script>
	<script src="{{url('/')}}/assets/js/sly.min.js"></script>
	<script src="{{url('/')}}/assets/js/jquery.nicescroll.min.js"></script>
	<script src="{{url('/')}}/assets/js/main.js"></script>
    </body>
</html>
