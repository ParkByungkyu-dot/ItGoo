<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Itgoo :: Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-2.2.2.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>

@import
	url('https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&subset=cyrillic,cyrillic-ext,devanagari,greek,greek-ext,latin-ext,vietnamese')
	;

body {
	width: 100%;
	height:80%;
	background: #000;
	overflow: hidden;
}

/* #Cursor
================================================== */
.cursor, .cursor2, .cursor3 {
	position: fixed;
	border-radius: 50%;
	transform: translateX(-50%) translateY(-50%);
	pointer-events: none;
	left: -100px;
	top: 50%
}

.cursor {
	background-color: #fff;
	height: 0;
	width: 0;
	z-index: 99999;
}

.cursor2, .cursor3 {
	height: 36px;
	width: 36px;
	z-index: 99998;
	-webkit-transition: all 0.3s ease-out;
	transition: all 0.3s ease-out
}

.cursor2.hover, .cursor3.hover {
	-webkit-transform: scale(2) translateX(-25%) translateY(-25%);
	transform: scale(2) translateX(-25%) translateY(-25%);
	border: none
}

.cursor2 {
	border: 2px solid #fff;
	box-shadow: 0 0 22px rgba(255, 255, 255, 0.6);
}

.cursor2.hover {
	background: rgba(255, 255, 255, .1);
	box-shadow: 0 0 12px rgba(255, 255, 255, 0.2);
}

/* #Slider
================================================== */
.section {
	position: relative;
	width: 100%;
	display: block;
	overflow: hidden;
	height: 100vh;
	background-color: #212121;
}

/* Case Study Showcase
================================================== */
.case-study-wrapper {
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: 10;
	width: auto;
	margin: 0;
	padding: 0;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	list-style: none;
}

.case-study-wrapper .case-study-name a {
	position: relative;
	list-style: none;
	margin: 0;
	display: block;
	text-align: center;
	padding: 0;
	font-size: 28px;
	margin-top: 25px;
	margin-bottom: 25px;
	font-family: 'Poppins', sans-serif;
	font-weight: 500;
	line-height: 1.3;
	letter-spacing: 2px;
	color: #8e8d9a;
	opacity: 0.5;
	text-decoration: none;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear;
}

.case-study-wrapper .case-study-name a:hover {
	text-decoration: none;
}

.case-study-wrapper .case-study-name.active a {
	opacity: 1;
	color: #fff;
}

.case-study-images {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	margin: 0;
	z-index: 2;
}

.case-study-images li {
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	overflow: hidden;
	list-style: none;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear;
}

.case-study-images li .img-hero-background {
	position: absolute;
	width: 100%;
	height: 100%;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
	top: 0;
	left: 0;
	overflow: hidden;
	list-style: none;
	opacity: 0;
	-webkit-transform: translateY(-30px);
	transform: translateY(-30px);
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear;
}

.case-study-images li.show .img-hero-background {
	opacity: 1;
	-webkit-transform: translateY(0);
	transform: translateY(0);
}

.case-study-images li .case-study-title {
	position: absolute;
	bottom: 30px;
	left: 30px;
	display: block;
	opacity: 0;
	color: #fff;
	z-index: 19;
	letter-spacing: 1px;
	font-size: 14px;
	font-family: 'Roboto', sans-serif;
	-webkit-writing-mode: vertical-lr;
	writing-mode: vertical-lr;
	font-weight: 400;
	line-height: 16px;
	color: #fff;
	font-style: italic;
	-webkit-transform: translateX(-100%);
	transform: translateX(-100%);
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear;
}

.case-study-images li.show .case-study-title {
	opacity: 1;
	-webkit-transform: translateX(0);
	transform: translateX(0);
}

.case-study-images li .hero-number-back {
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	display: block;
	list-style: none;
	opacity: 0;
	font-size: 18vw;
	font-family: 'Poppins', sans-serif;
	font-weight: 900;
	line-height: 1;
	color: rgba(255, 255, 255, .12);
	z-index: 1;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear;
}

.case-study-images li .hero-number {
	position: absolute;
	bottom: 40px;
	left: 50%;
	width: 40px;
	margin-left: -70px;
	display: block;
	letter-spacing: 2px;
	text-align: center;
	list-style: none;
	opacity: 0;
	font-size: 13px;
	font-family: 'Poppins', sans-serif;
	font-weight: 300;
	line-height: 1;
	color: #fff;
	z-index: 6;
	-webkit-transform: translateY(100%);
	transform: translateY(100%);
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear;
}

.case-study-images li .hero-number-fixed {
	position: absolute;
	bottom: 40px;
	left: 50%;
	margin-left: 30px;
	width: 40px;
	text-align: center;
	display: block;
	letter-spacing: 2px;
	list-style: none;
	font-size: 13px;
	font-family: 'Poppins', sans-serif;
	font-weight: 300;
	line-height: 1;
	color: #fff;
	z-index: 6;
}

.case-study-images li .hero-number-fixed:before {
	position: absolute;
	content: '';
	top: 50%;
	left: -60px;
	width: 60px;
	height: 1px;
	z-index: 1;
	background-color: rgba(255, 255, 255, .4);
}

.case-study-images li.show .hero-number {
	opacity: 1;
	-webkit-transform: translateY(0);
	transform: translateY(0);
}

.case-study-images li.show .hero-number-back {
	opacity: 1;
}

.dark-over-hero {
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	z-index: 5;
	background-color: #050505;
	opacity: 0.2;
}

.case-study-images li:nth-child(1) .img-hero-background {
	background-image: url("img/slidepic/namju.PNG");
}

.case-study-images li:nth-child(2) .img-hero-background {
	background-image: url("img/slidepic/seojun.PNG");
}

.case-study-images li:nth-child(3) .img-hero-background {
	background-image: url("img/slidepic/chulsoo.PNG");
}

.case-study-images li:nth-child(4) .img-hero-background {
	background-image: url("img/slidepic/saerone.PNG");
}

/* #Media
================================================== */
@media ( max-width : 991px) {
	.case-study-images li .hero-number-back {
		font-size: 26vw;
	}
}

@media ( max-width : 767px) {
	.case-study-wrapper .case-study-name a {
		font-size: 20px;
		letter-spacing: 1px;
	}
	.case-study-images li .hero-number-back {
		font-size: 32vw;
	}
}

/* #Link to page
================================================== */
.link-to-portfolio {
	position: fixed;
	top: 30px;
	right: 30px;
	z-index: 20;
	cursor: pointer;
	width: 40px;
	height: 40px;
	text-align: center;
	border-radius: 3px;
	background-position: center center;
	background-size: cover;
	background-image: url('https://ivang-design.com/ig-logo.jpg');
	box-shadow: 0 0 0 2px rgba(255, 255, 255, .3);
	transition: opacity .2s, border-radius .2s, box-shadow .2s;
	transition-timing-function: ease-out;
}

.link-to-portfolio:hover {
	opacity: 0.8;
	border-radius: 50%;
	box-shadow: 0 0 0 2px rgba(255, 255, 255, 0);
}

#logout {
	border: 0;
	outline: 0;
	color: blue;
}

#logo {
	width: 350px;
	height: 200px;
}

.bg-dark {
	background-color: #0f9ce3;
}
</style>
</head>
<body>
	<!-- header -->

	<div class="jumbotron text-center" id="logo">
		<img alt="잇구로고" src="img/portfolio/itgoo1004.png" id="logo">
		<p>(주)ITGOO corporation</p>
		<div style="text-align: right;">
			<sec:authorize access="isAnonymous()">

				<a href="login" id="login">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="joinform">회원가입</a>
			</sec:authorize>

			<sec:authorize access="isAuthenticated()">
				<form method="post" action="logout">
					<input type="submit" value="로그아웃" id="logout"> <input
						type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</sec:authorize>
		</div>
	</div>



	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<a href="#" class="navbar-brand">ITGOO</a>
		<!-- Toggle Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="introduce.jsp" class="nav-link">ITGOO소개</a></li>
				<li class="nav-item"><a href="companyjoinform.jsp"
					class="nav-link">업체 회원가입</a></li>
				<li class="nav-item"><a href="#" class="nav-link">커뮤니티</a></li>
				<li class="nav-item"><a href="#" class="nav-link">입양공고</a></li>
				<li class="nav-item"><a href="itgoostar.jsp" class="nav-link">ITGOO_STAR</a></li>
			</ul>
		</div>
	</nav>
	<!-- content -->
	<div class="container pt-3">
		<div class="section">
			<ul class="case-study-wrapper">
				<li class="case-study-name"><a href="#" class="hover-target">russian
						model</a></li>
				<li class="case-study-name"><a href="#" class="hover-target">girl
						in boots</a></li>
				<li class="case-study-name"><a href="#" class="hover-target">autumn
						leaves</a></li>
				<li class="case-study-name"><a href="#" class="hover-target">in
						the woods</a></li>
			</ul>
			<ul class="case-study-images">
				<li>
					<div class="img-hero-background"></div>
					<div class="dark-over-hero"></div>
					<div class="hero-number-back">01</div>
					<div class="hero-number">01</div>
					<div class="hero-number-fixed">04</div>
					<div class="case-study-title">graphic design, interaction</div>
				</li>
				<li>
					<div class="img-hero-background"></div>
					<div class="hero-number-back">02</div>
					<div class="hero-number">02</div>
					<div class="case-study-title">advertising, art direction</div>
				</li>
				<li>
					<div class="img-hero-background"></div>
					<div class="hero-number-back">03</div>
					<div class="hero-number">03</div>
					<div class="case-study-title">photography, retouching</div>
				</li>
				<li>
					<div class="img-hero-background"></div>
					<div class="hero-number-back">04</div>
					<div class="hero-number">04</div>
					<div class="case-study-title">photography, advertising</div>
				</li>
			</ul>
		</div>

		<!-- Page cursor
        ================================================== -->

		<div class='cursor' id="cursor"></div>
		<div class='cursor2' id="cursor2"></div>
		<div class='cursor3' id="cursor3"></div>

		<!-- Link to page
    ================================================== -->

	</div>


	<!-- footer -->
	<div class="jumbotron text-center mt-5 mb-0">
		<h3 class="text-secondary">IT GOO corporation</h3>
		<p>
			IT GOO’s Homepage is powered by <span class="text-primary">itcia</span>
			/ Designed by <span class="text-primary">itcia</span>
		</p>
	</div>
</body>
<script type="text/javascript">
	(
					function($) {
						"use strict";

						//Page cursors

						document.getElementsByTagName("body")[0]
								.addEventListener("mousemove", function(n) {
									t.style.left = n.clientX + "px",
											t.style.top = n.clientY + "px",
											e.style.left = n.clientX + "px",
											e.style.top = n.clientY + "px",
											i.style.left = n.clientX + "px",
											i.style.top = n.clientY + "px"
								});
						var t = document.getElementById("cursor"), e = document
								.getElementById("cursor2"), i = document
								.getElementById("cursor3");
						function n(t) {
							e.classList.add("hover"), i.classList.add("hover")
						}
						function s(t) {
							e.classList.remove("hover"), i.classList
									.remove("hover")
						}
						s();
						for (var r = document.querySelectorAll(".hover-target"), a = r.length - 1; a >= 0; a--) {
							o(r[a])
						}
						function o(t) {
							t.addEventListener("mouseover", n), t
									.addEventListener("mouseout", s)
						}

						$(document)
								.ready(
										function() {

											/* Hero Case study images */

											$('.case-study-name:nth-child(1)')
													.on(
															'mouseenter',
															function() {
																$(
																		'.case-study-name.active')
																		.removeClass(
																				'active');
																$(
																		'.case-study-images li.show')
																		.removeClass(
																				"show");
																$(
																		'.case-study-images li:nth-child(1)')
																		.addClass(
																				"show");
																$(
																		'.case-study-name:nth-child(1)')
																		.addClass(
																				'active');
															})
											$('.case-study-name:nth-child(2)')
													.on(
															'mouseenter',
															function() {
																$(
																		'.case-study-name.active')
																		.removeClass(
																				'active');
																$(
																		'.case-study-images li.show')
																		.removeClass(
																				"show");
																$(
																		'.case-study-images li:nth-child(2)')
																		.addClass(
																				"show");
																$(
																		'.case-study-name:nth-child(2)')
																		.addClass(
																				'active');
															})
											$('.case-study-name:nth-child(3)')
													.on(
															'mouseenter',
															function() {
																$(
																		'.case-study-name.active')
																		.removeClass(
																				'active');
																$(
																		'.case-study-images li.show')
																		.removeClass(
																				"show");
																$(
																		'.case-study-images li:nth-child(3)')
																		.addClass(
																				"show");
																$(
																		'.case-study-name:nth-child(3)')
																		.addClass(
																				'active');
															})
											$('.case-study-name:nth-child(4)')
													.on(
															'mouseenter',
															function() {
																$(
																		'.case-study-name.active')
																		.removeClass(
																				'active');
																$(
																		'.case-study-images li.show')
																		.removeClass(
																				"show");
																$(
																		'.case-study-images li:nth-child(4)')
																		.addClass(
																				"show");
																$(
																		'.case-study-name:nth-child(4)')
																		.addClass(
																				'active');
															})
											$('.case-study-name:nth-child(1)')
													.trigger('mouseenter')

										});

					})(jQuery);
</script>

</html>
