@extends('frontend.master')

@section('content')
<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="{{url('/')}}/assets/img/bg.jpg">
		<div class="hero-slider owl-carousel">
			<div class="hs-item">
				<div class="hs-left"><img src="{{url('/')}}/assets/img/slider-img.png" alt=""></div>
				<div class="hs-right">
					<div class="hs-content">
						<div class="price">from $77.90</div>
						<h2><span>2019</span> <br>winter collection</h2>
						<a href="" class="site-btn">Go, GRAB!</a>
					</div>
				</div>
			</div>
			<div class="hs-item">
				<div class="hs-left"><img src="{{url('/')}}/assets/img/slider-img.png" alt=""></div>
				<div class="hs-right">
					<div class="hs-content">
						<div class="price">from $1.00</div>
						<h2><span>2019</span> <br>dhaka collection</h2>
						<a href="" class="site-btn">Now</a>
					</div>
				</div>
			</div>
			<div class="hs-item">
				<div class="hs-left"><img src="{{url('/')}}/assets/img/slider-img.png" alt=""></div>
				<div class="hs-right">
					<div class="hs-content">
						<div class="price">from $19.90</div>
						<h2><span>2019</span> <br>summer collection</h2>
						<a href="" class="site-btn">Shop NOW!</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end -->


	<!-- Intro section -->
	<section class="intro-section spad pb-0">
		<div class="section-title">
			<h2>premium products</h2>
			<p>We recommend</p>
		</div>
		<div class="intro-slider">
			<ul class="slidee">
				<li>
					<div class="intro-item">
						<figure>
							<a href="product.html">
								<img src="{{url('/')}}/assets/img/intro/1.jpg" alt="#">
							</a>
						</figure>
						<div class="product-info">
							<h5>Pink Sunglasses</h5>
							<p>$319.50</p>
							<a href="#" class="site-btn btn-line">ADD TO CART</a>
						</div>
					</div>
				</li>
				<li>
					<div class="intro-item">
						<figure>
							<a href="product.html">
								<img src="{{url('/')}}/assets/img/intro/2.jpg" alt="#">
							</a>
						</figure>
						<div class="product-info">
							<h5>Black Nighty</h5>
							<p>$319.50</p>
							<a href="#" class="site-btn btn-line">ADD TO CART</a>
						</div>
					</div>
				</li>
				<li>
					<div class="intro-item">
						<figure>
							<a href="product.html">
								<img src="{{url('/')}}/assets/img/intro/3.jpg" alt="#">
							</a>
							<div class="bache">NEW</div>
						</figure>
						<div class="product-info">
							<h5>Yellow Sholder bag</h5>
							<p>$319.50</p>
							<a href="#" class="site-btn btn-line">ADD TO CART</a>
						</div>
					</div>
				</li>
				<li>
					<div class="intro-item">
						<figure>
							<a href="product.html">
								<img src="{{url('/')}}/assets/img/intro/4.jpg" alt="#">
							</a>
						</figure>
						<div class="product-info">
							<h5>Yellow Sunglasses</h5>
							<p>$319.50</p>
							<a href="#" class="site-btn btn-line">ADD TO CART</a>
						</div>
					</div>
				</li>
				<li>
					<div class="intro-item">
						<figure>
							<a href="product.html">
								<img src="{{url('/')}}/assets/img/intro/5.jpg" alt="#">
							</a>
						</figure>
						<div class="product-info">
							<h5>Black Sholder bag</h5>
							<p>$319.50</p>
							<a href="#" class="site-btn btn-line">ADD TO CART</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="container">
			<div class="scrollbar">
				<div class="handle">
					<div class="mousearea"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- Intro section end -->


	<!-- Featured section -->
	<div class="featured-section spad">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="featured-item">
						<img src="{{url('/')}}/assets/img/featured/featured-1.jpg" alt="">
						<a href="#" class="site-btn">see more</a>
					</div>
				</div>
				<div class="col-md-6">
					<div class="featured-item mb-0">
						<img src="{{url('/')}}/assets/img/featured/featured-2.jpg" alt="">
						<a href="#" class="site-btn">see more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Featured section end -->


	<!-- Product section -->
	<section class="product-section spad">
		<div class="container">
			<ul class="product-filter controls">
				<li class="control" data-filter=".new">New arrivals</li>
				<li class="control" data-filter="all">Recommended</li>
				<li class="control" data-filter=".best">Best sellers</li>
			</ul>
			<div class="row" id="product-filter">
				@forelse($products as $viewproduct)
				<div class="mix col-lg-3 col-md-6 best">
					<div class="product-item">
						<figure>
							<img src="{{ Storage::url($viewproduct->product_image) }}" alt="" hight="50">
							<div class="pi-meta">
								<a href="{{asset('/product/view')}}/{{$viewproduct->id}}">
									<div class="pi-m-left">
										<img src="{{url('/')}}/assets/img/icons/eye.png" alt="">
										<p>view</p>
									</div>
								</a>
								<div class="pi-m-right">
									<img src="{{url('/')}}/assets/img/icons/heart.png" alt="">
									<p>save</p>
								</div>
							</div>
						</figure>
						<div class="product-info">
							<h6>{{ $viewproduct->product_name}}</h6>
							<p>৳.{{ $viewproduct->product_price}}</p>
							<a href="#" class="site-btn btn-line">ADD TO CART</a>
						</div>
					</div>
				</div>
				@empty
				<p>No Data</p>
				@endforelse
				
				
				
			</div>
		</div>
	</section>
	<!-- Product section end -->

	<!-- Footer top section -->
	<section class="footer-top-section home-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-8 col-sm-12">
					<div class="footer-widget about-widget">
						<img src="{{url('/')}}/assets/img/logo.png" class="footer-logo" alt="">
						<p>Donec vitae purus nunc. Morbi faucibus erat sit amet congue mattis. Nullam fringilla faucibus urna, id dapibus erat iaculis ut. Integer ac sem.</p>
						<div class="cards">
							<img src="{{url('/')}}/assets/img/cards/5.png" alt="">
							<img src="{{url('/')}}/assets/img/cards/4.png" alt="">
							<img src="{{url('/')}}/assets/img/cards/3.png" alt="">
							<img src="{{url('/')}}/assets/img/cards/2.png" alt="">
							<img src="{{url('/')}}/assets/img/cards/1.png" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="footer-widget">
						<h6 class="fw-title">usefull Links</h6>
						<ul>
							<li><a href="#">Partners</a></li>
							<li><a href="#">Bloggers</a></li>
							<li><a href="#">Support</a></li>
							<li><a href="#">Terms of Use</a></li>
							<li><a href="#">Press</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="footer-widget">
						<h6 class="fw-title">Sitemap</h6>
						<ul>
							<li><a href="#">Partners</a></li>
							<li><a href="#">Bloggers</a></li>
							<li><a href="#">Support</a></li>
							<li><a href="#">Terms of Use</a></li>
							<li><a href="#">Press</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="footer-widget">
						<h6 class="fw-title">Shipping & returns</h6>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">Track Orders</a></li>
							<li><a href="#">Returns</a></li>
							<li><a href="#">Jobs</a></li>
							<li><a href="#">Shipping</a></li>
							<li><a href="#">Blog</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="footer-widget">
						<h6 class="fw-title">Contact</h6>
						<div class="text-box">
							<p>Your Company Ltd </p>
							<p>1481 Creekside Lane  Avila Beach, CA 93424, </p>
							<p>+53 345 7953 32453</p>
							<p>office@youremail.com</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer top section end -->
@endsection