<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html class="no-js" lang="ko">
<head>
<meta charset="UTF-8">
<title>Review</title>
</head>
<body>
<!-- ========================= page-banner-section start ========================= -->
<section class="page-banner-section pt-200 pb-200 img-bg" style="background-image: url('/pet/resources/assets/images/dog.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="banner-content">
					<div class="page-breadcrumb">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb"></ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- ========================= page-banner-section end ========================= -->
<!-- ========================= feature-section start ========================= -->
	<section class="feature-section pt-130">
		<div class="container">
			<div class="">
				<div class="col-xl-6 col-lg-7 col-md-9 mx-auto">
					<div class="section-title text-center mb-55">
						<span class="wow fadeInDown" data-wow-delay=".2s">${fn:length(review)}개의 후기</span>
						<h2 class="wow fadeInUp" data-wow-delay=".4s">실시간 이용후기</h2>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-1"></div>
			<div class="col-lg-10 row">
				<c:forEach var="review" items="${review}">
					<div class="col-lg-4 col-md-4">
						<div class="feature-box box-style" style="float: left;">
							<div style="display: flex; position: relative;">
								<img src="/pet/resources/pet/${review.pet_photo}" style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover;">
							</div>

							<div style="display: flex; flex-direction: column;">
								
								<h4><a href="/pet/menu/review/detail.do?review_no=${review.review_no}">${review.member_addr1 }</a></h4>
								<div class="row">
									<div class="col-2">
										<p style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">${review.write_date_rv}</p>
									</div>
									<div class="col-3">
										<p style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">평점 ${review.review_rate }</p>
									</div>
								</div>
							</div>
							
							<!-- 후기 내용 -->
							<div class="box-content-style feature-content">${review.review}</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="col-1"></div>
		</div>
	</section>
</body>
</html>