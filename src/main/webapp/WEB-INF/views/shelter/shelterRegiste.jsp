<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>Dashio - Bootstrap Admin Template</title>

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="lib/bootstrap/css/bootstrap1.min.css" rel="stylesheet">
<!--external css-->
<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />




<!-- Custom styles for this template -->
<link href="css/activitystyle/activitystyle.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />


<style>
#show_profile {
	width: 20%;
	height: 20%;
}
.ck-blurred ck ck-content ck-editor__editable ck-rounded-corners ck-editor__editable_inline{
 width:466px;
}

</style>
<!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	<section id="container">
		<!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
		<!--header start-->
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="fa fa-bars tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<!--logo start-->
			<a href="index.jsp" class="logo"><b>IT<span>GOO</span></b></a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu">
				<!--  notification start -->
				<ul class="nav top-menu">
					<!-- settings start -->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="index.html#"> <i
							class="fa fa-tasks"></i> <span class="badge bg-theme"></span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-green"></div>

							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- settings end -->
					<!-- inbox dropdown start-->
					<li id="header_inbox_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-envelope-o"></i> <span class="badge bg-theme"></span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-green"></div>


							<li><a href="index.html#">See all messages</a></li>
						</ul></li>
					<!-- inbox dropdown end -->
					<!-- notification dropdown start-->
					<li id="header_notification_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
							<i class="fa fa-bell-o"></i> <span class="badge bg-warning"></span>
					</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-yellow"></div>

						</ul></li>
					<!-- notification dropdown end -->
				</ul>
				<!--  notification end -->
			</div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li>
					<a class="logout" href="#" onclick="document.getElementById('logout-form').submit();">Logout</a>
		           <form id="logout-form" action='logout' method="POST">
					   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
					</form>
					</li>
				</ul>
			</div>
		</header>
		<!--header end-->
		<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<p class="centered">
						<a href="sheltermyinfo"><img src="img/portfolio/itgoo2.PNG"
							class="img-circle" width="80"></a>
					</p>
					<h5 class="centered">SHELTER MANAGER</h5>
					<li class="mt"><a href="/ItGoo/"> <i
							class="fa fa-dashboard"></i> <span>홈으로 </span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;">
							<i class="fa fa-desktop"></i> <span>정보보기</span>
					</a>
						<ul class="sub">
							<li><a href="sheltermyinfo">보호소 정보보기</a></li>
						</ul></li>



					<li class="sub-menu"><a href="javascript:;"> <i
							class="fa fa-book"></i> <span>보호소 사진</span>
					</a>
						<ul class="sub">
							<li><a href="sheltercard">사업자등록증</a></li>
							<li><a href="shelterpicinfo">시설사진</a></li>
						</ul>
					</li>


					<li class="sub-menu"><a href="javascript:;" class="active" > <i
							class="fa fa-th"></i> <span>입양 공고</span>
					</a>
						<ul class="sub">
							<li><a href="shelterregiste">등록</a></li>
							<li><a href="shelterdelete">삭제</a></li>
							<li><a href="aleadyadopt">입양 확정</a></li>
						</ul></li>
						
					<li class="sub-menu"><a href="javascript:;"> <i	class="fa fa-th"></i> <span>가상입양 관리</span>
					</a>
						<ul class="sub">
							<li><a href="virtualadoptlist?input=1">근황 입력</a></li>
							<li><a href="virtualadoptlist?input=0">근황 삭제</a></li>
						</ul></li>



					<li class=""><a href="javascript:;"><i
							class="fa fa-map-marker"></i> <span>보호소위치</span> </a>
						<ul class="sub">
							<li><a href="shelterlocationinfo">위치 및 수정</a></li>
						</ul></li>
					<!-- a href="google_maps.html"-->
				</ul>

					<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->

		<section id="main-content">
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 유기견 등록
				</h3>
				<!-- BASIC FORM ELELEMNTS -->
				<div class="row mt">
					<form action="shelterdogregi?${_csrf.parameterName}=${_csrf.token}"
						name="registe" method="post" id="registe"
						enctype="multipart/form-data">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<section class="panel">
								<h4 class="title"></h4>
								<div id="message"></div>


								<div class="form-group">
									<div class="main-p-tag">
										<table>
											<tr>
												<td><img id="show_profile" style="border-color: white;" /></td>
											</tr>
											<tr>
												<td>사진 첨부:</td>
												<td><input type="file" id="profile" class="profile"
													multiple name="dogpicby" accept=".jpg,.jpeg,.png,.gif,.bmp" /></td>
											</tr>
										</table>
									</div>
								</div>



								<div class="form-group">
									<div class="main-p-tag">
										<table>
											<tr>
												<td>강아지 이름:</td>
												<td><input type="text" id="dogname" class="dogname"
													name="dogname" /></td>
											</tr>
										</table>
									</div>
								</div>


								<div class="form-group">
									<div class="main-p-tag">
										<table>
											<tr>
												<td>강아지 나이:</td>
												<td><input type="text" id="dogage" class="dogage"
													name="dogage" maxlength="15" /></td>
											</tr>
										</table>
									</div>
								</div>


								<div class="form-group">
									<div class="main-p-tag">
										<table>
											<tr>
												<td>성별:</td>
												<td><select name="sex" id="sex" class="sex">
														<option value="선택">선택</option>
														<option value="0">수컷</option>
														<option value="1">암컷</option>

												</select></td>
											</tr>
										</table>
									</div>
								</div>


								<div class="form-group">
									<div class="main-p-tag">
										<table>
											<tr>
												<td>중성화 여부:</td>
												<td><select name="dogjungsung" id="activity-dog-cnt"
													class="activity-dog-cnt" name="dogiungsung">
														<option value="중성화여부">선택</option>
														<option value="1">O</option>
														<option value="2">X</option>

												</select></td>
											</tr>
										</table>
									</div>
								</div>


								<div class="form-group">
									<div class="main-p-tag">
										<table>
											<tr>

												<td>소개글</td>
												<td style="width:466px">
												<textarea id="editor" class="dogspecial"
														name="dogspecial"
														style="word-break: normal; height: 200px; width: 500px;"></textarea>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</section>
						</div>
						<div class="btn-div">

							<input type="submit" id="insertdogbtn"
								class="insertactivitybtn" value="유기견 등록" />
							<input type="button" id="canceldogbtn" class="cancelactivitybtn" value="취소" />
						</div>
					</form>
				</div>

				<!-- /row -->
				<div id="articleView_layer">
					<div id="bg_layer"></div>
					<div id="contents_layer"></div>
				</div>


				<!-- /row -->
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->
		<!--footer start-->
		<footer class="site-footer">
			<div class="text-center">
				<p>
					<a href="index.html"><img class="footerimg"
						src="img/mainlogo.png" alt="mainlogo" /></a>
				</p>
				<div class="credits">
					<!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
					@2020 ITGOO Korea Corporation All Rights Reserved.
				</div>
				<a href="advanced_form_components.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="lib/jquery.scrollTo.min.js"></script>
	<script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<!--script for this page-->
	<script src="lib/jquery-ui-1.9.2.custom.min.js"></script>

	<script type="text/javascript"
		src="lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>

	<script src="lib/advanced-form-components.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="lib/common-scripts.js"></script>
	<script src="ckeditor/ckeditor.js"></script>
	<script>
	ClassicEditor
    .create( document.querySelector( '#editor' ), {
        toolbar: [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
        heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' }
            ]
        }
    } )
    .catch( error => {
        console.log( error );
    } );
	
	</script>
	<script>
		$(function() {
			$("#profile").on("change", loadImage)
		});
		function loadImage() {
			console.log($('#profile'));
			var file = $("#profile")[0].files[0]; //한개의 프사만 등록
			var maxSize = 1024 * 1024; //1MB
			if (file.size > maxSize) {
				toastr.warning("사진은 1M이하여야 합니다.", "경고");
				$("#profile").val("");
				return false;//작업 실패
			}
			var reader = new FileReader();
			reader.onload = function(e) {
				console.log("e=", e);
				$('#show_profile').attr('src', e.target.result);
			}
			reader.readAsDataURL(file); //서버가 아닌 pc에서 파일을 읽어오기때문에 빠르다.
			return true;
		}
	</script>
</body>

</html>
