<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>    
<!DOCTYPE html>
<html lang="kr">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>ITGOO-Enjoy ITGOO</title>

<!-- Font Awesome Icons -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="css/swiper.min.css">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Theme CSS - Includes Bootstrap -->
<link href="css/creative.min.css" rel="stylesheet">

</head>
<style>
	#logout {
		border: 0px transparent solid;
		outline: 0;
		color: rgba(255, 255, 255, .7);
		background-color: transparent;
		font-weight: 700;
		font-size: .9rem;
	}
	html, body {
      position: relative;
      height: 100%;
    }
    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color:#000;
      margin: 0;
      padding: 0;
    }
    .swiper-container {
      width: 100%;
      height: 100%;
    }
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
	.auction-title {
		height: 50px;
		display: -webkit-box;
		display: -ms-flexbox;
		display: -webkit-flex;
		display: flex;
		-webkit-box-pack: center;
		-ms-flex-pack: center;
		-webkit-justify-content: center;
		justify-content: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		-webkit-align-items: center;
		align-items: center;
	}
	#bg{
		
		background: linear-gradient(to bottom,rgba(92,77,66,.8) 0,rgba(92,77,66,.8) 100%),url("img/bg-masthead.jpg");
		padding-top: 10rem;
    	padding-bottom: calc(30rem - 72px);
		background-position: center;
    	background-repeat: no-repeat;
    	background-attachment: scroll;
    	background-size: cover;
	}
	/* .card-label{
		width:300px;
	} */
	#auctionexplain{
		text-align: center;
	}
	#auctionexplain img{
		max-width: 100%;
	}
	.expired{
		display:none;
	}

</style>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="index.jsp">Start
				ITGOO</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#">경매</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">SERVICE</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">소모임</a></li>
					<sec:authorize access="isAuthenticated()">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#" onclick="document.getElementById('logout').submit();">로그아웃</a>
						<form id="logout" action="logout" method="POST">
							<input name="${_csrf.parameterName}" type="hidden"
								value="${_csrf.token}" />
						</form>
					</li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>






	<!-- Masthead -->
	<header>
		<div class="container">
			
		</div>
	</header>
	
<!-- Portfolio Section -->
	<section class="h-100">
		<div class="container-fluid" id="bg">
			<div class="container row" style="margin:auto">
				<div class="card col-lg-12">
					<div class="card-body row" id="auctionname" style="font-size:20px">
					<label class="card-label col-xs-12 col-sm-2 col-lg-2" >제목</label>
					</div>
				</div>
				<div class="card col-lg-12">
					<div class="card-body" id="auctionstart">
					<label class="card-label">시작 일시</label>
					</div>
				</div>
				<div class="card col-lg-12">
					<div class="card-body" id="auctionend">
					<label class="card-label">종료 일시</label>
					</div>
				</div>
				<div class="card col-lg-12">
					<div class="card-body" id="owner">
					<label class="card-label">주인</label>
					</div>
				</div>
				<div class="card col-lg-12">
					<div class="card-body" id="lowprice">
					<label class="card-label">시작가</label>
					</div>
				</div>
				<div class="expired card col-lg-12">
					<div class="card-body" id="buyer">
					<label class="card-label">낙찰자</label>
					</div>
				</div>
				<div class="expired card col-lg-12">
					<div class="card-body" id="realprice">
					<label class="card-label">낙찰가</label>
					</div>
				</div>
				<div class="card col-lg-12">
					
					<div class="card-body col-lg-12">
					
					<h5 class="card-title" style="font-size:14px">상세</h5>
					<div class="col-lg-12" id="auctionexplain"></div>
					<div class="col-lg-12" id="button" style="text-align: center"></div>
					</div>
					
				</div>
				<br>
				<br>
			</div>
		</div>
	</section>

	
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/creative.min.js"></script>
	
	<script>
	console.log(${auction});
	var a=${auction};
	var $btn=$('<button class="btn btn-primary">')
	
	
	$('#owner').append($('<label class="card-body col-xs-12 col-sm-10 col-lg-10" >').append(a.owner));
	$('#auctionstart').append($('<label class="card-body col-xs-12 col-sm-10 col-lg-10" >').append(a.auctionstart));
	$('#auctionend').append($('<label class="card-body col-xs-12 col-sm-10 col-lg-10" >').append(a.auctionend));
	$('#auctionname').append($('<label class="card-label col-xs-12 col-sm-10 col-lg-10" >').append(a.auctionname));
	$('#lowprice').append($('<label class="card-body col-xs-12 col-sm-10 col-lg-10" >').append(a.lowprice));
	$('#auctionexplain').append($('<label class="card-body col-xs-12 col-sm-10 col-lg-10" >').append(a.auctionexplain));
	//버튼 추가
	if(a.status==1){
		$btn.text('경매참여').click(function() {
			location.href='auctionattend?auctionnum='+a.auctionnum;
		});
	}else{
		$btn.text('돌아가기').click(function() {
			location.href='itgoo1main';
		});
	}
	$('#button').append($btn)
	//종료된 경매
	if(a.status==2){
		console.log('나와야되ㅡㄴ디')
		$('.expired').css('display','flex');
		$('#buyer').append(a.buyer);
		$('#realprice').append(a.realprice);
	};
	
	</script>
	</body>

</html>