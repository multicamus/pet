<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<title>Top</title>
	<meta charset="UTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="/pet/resources/assets/img/favicon.png">
	<!-- ========================= CSS here ========================= -->
	<link rel="stylesheet" href="/pet/resources/assets/css/bootstrap-5.0.0-beta1.min.css">
	<link rel="stylesheet" href="/pet/resources/assets/css/LineIcons.2.0.css">
	<link rel="stylesheet" href="/pet/resources/assets/css/animate.css">
	<link rel="stylesheet" href="/pet/resources/assets/css/tiny-slider.css">
	<link rel="stylesheet" href="/pet/resources/assets/css/glightbox.min.css">
	<link rel="stylesheet" href="/pet/resources/assets/css/main.css">
</head>

<body>
	<header class="header bg-white navbar-area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg">
						<a class="navbar-brand" href="/pet"> <img style="width:100px " src="/pet/resources/assets/img/logo/logo1.png" alt="Logo"></a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="toggler-icon"></span> <span class="toggler-icon"></span>
							<span class="toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
							<ul id="nav" class="navbar-nav ms-auto">
								<c:choose>
									<c:when test="${user!=null}">
										<li class="nav-item"><a class="page-scroll">안녕하세요. ${user.code}님^^7</a></li>
										<li class="nav-item"><a class="page-scroll"></a></li>
										<li class="nav-item"><a class="page-scroll"></a></li>
									</c:when>
								</c:choose>
								
								<li class="nav-item"><a
									class="page-scroll dd-menu collapsed" href="javascript:void(0)"
									data-bs-toggle="collapse" data-bs-target="#submenu-1-1"
									aria-controls="navbarSupportedContent" aria-expanded="false"
									aria-label="Toggle navigation">돌봄 서비스</a>
									
									<ul class="sub-menu collapse" id="submenu-1-1">
										<li class="nav-item"><a href="/pet/menu/service/care.do">방문 돌봄</a></li>
										<li class="nav-item"><a href="/pet/menu/service/walk.do">방문 산책</a></li>
										<li class="nav-item"><a href="/pet/views/404.html">방문 목욕과 미용</a></li>
									</ul>
								</li>
								
								<c:choose>
									<c:when test="${user == null}">
										<li class="nav-item"><a class="page-scroll active" href="/pet/menu/login.do">로그인</a></li>
									</c:when>
									<c:otherwise>
										<li class="nav-item"><a class="page-scroll active" href="/pet/erp/logout.do">로그아웃</a></li>
									</c:otherwise>
								</c:choose>
								
								<li class="nav-item"><a
									class="page-scroll dd-menu collapsed" href="javascript:void(0)"
									data-bs-toggle="collapse" data-bs-target="#submenu-1-2"
									aria-controls="navbarSupportedContent" aria-expanded="false"
									aria-label="Toggle navigation">이용 후기</a>
									
									<ul class="sub-menu collapse" id="submenu-1-2">
										<li class="nav-item"><a href="/pet/menu/review.do">이용 후기 게시판</a></li>
										<li class="nav-item"><a href="/pet/menu/review/write.do">이용 후기 작성</a></li>
										<li class="nav-item"><a href="/pet/menu/review/detail.do">이용 후기 상세</a></li>
									</ul>
								</li>
								
								<c:choose>
									<c:when test="${user == null}">
										<li class="nav-item"><a class="page-scroll" href="#">예약하기</a></li>
									</c:when>
									<c:when test="${user.code == 'B'}">
										<li class="nav-item"><a class="page-scroll" href="/pet/menu/reserve/resv1_mb.do">예약하기</a></li>
									</c:when>
									<c:otherwise>
										<li class="nav-item"><a class="page-scroll" href="#">예약확인</a></li>
									</c:otherwise>
								</c:choose>
								
								
								<c:choose>
									<c:when test="${user == null}">
										<li class="nav-item"><a class="page-scroll" href="#">마이페이지</a></li>
									</c:when>
									<c:when test="${user.code == 'A'}">
										<li class="nav-item"><a class="page-scroll" href="/pet/menu/mypage/admin.do">마이페이지</a></li>
									</c:when>
									<c:when test="${user.code == 'B'}">
										<li class="nav-item"><a class="page-scroll" href="/pet/menu/mypage/user.do">마이페이지</a></li>
									</c:when>
									<c:otherwise>
										<li class="nav-item"><a class="page-scroll" href="/pet/menu/mypage/sitter.do">마이페이지</a></li>
									</c:otherwise>
								</c:choose>
								
								<li class="nav-item"><a class="page-scroll" target="_blank" href="https://docs.google.com/forms/d/1Gxm7aSqZRTbJ8SvTCeD2HRxpetM5g_0lqyLEmYeYfX4/edit">펫시터 지원</a></li>
							</ul>

						</div>
						<!-- navbar collapse -->
					</nav>
					<!-- navbar -->
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
		
	<!-- ========================= JS here ========================= -->

	<script src="/pet/resources/assets/js/bootstrap.bundle-5.0.0-beta1.min.js"></script>
	<script src="/pet/resources/assets/js/contact-form.js"></script>
	<script src="/pet/resources/assets/js/count-up.min.js"></script>
	<script src="/pet/resources/assets/js/tiny-slider.js"></script>
	<script src="/pet/resources/assets/js/isotope.min.js"></script>
	<script src="/pet/resources/assets/js/glightbox.min.js"></script>
	<script src="/pet/resources/assets/js/wow.min.js"></script>
	<script src="/pet/resources/assets/js/imagesloaded.min.js"></script>
	<script src="/pet/resources/assets/js/main.js"></script>

	</header>
</body>
</html>