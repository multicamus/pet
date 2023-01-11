<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
<title>Review Detail</title>
</head>

<body>
	<!-- ========================= page-banner-section start ========================= -->
	<section class="page-banner-section pt-200 pb-200 img-bg"
		style="background-image: url('/pet/resources/assets/images/dog.jpg')">
	</section>
	<!-- ========================= page-banner-section end ========================= -->

	<!-- ========================= feature-section start ========================= -->
	<section class="feature-section pt-130">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-7 col-md-9 mx-auto">
					<div class="section-title text-center mb-55">
						<h2 class="wow fadeInUp" data-wow-delay=".4s">후기를 자세히 살펴보세요!</h2>
					</div>
				</div>
			</div>

			<div class="row" style="display: flex; align-items: center">
				<div class="col-lg-2 col-md-6">
					<a 
						href="/pet/menu/review/detail.do?review_no=${review.review_no}&state=READ"
						style="float: right;"><img
						src="/pet/resources/assets/images/direction_left.png"
						style="width: 50px; height: 50px"></a>
				</div>

				<div class="col-lg-8 col-md-6">
					<div class="feature-box box-style">
						<div style="display: flex; position: relative;">

							<div class="col-lg-10 row">
								<div class="col-lg-1">

									<img
										src="/pet/resources/assets/images/${review.member_photo}.jpg"
										style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover;">
								</div>
								<div class="col-lg-9"
									style="padding-top: 10px; padding-left: 30px;">
									<h4>
										<%-- ${pet.pet_name}PETNAME --%>
									</h4>
								</div>
							</div>

							<%-- <c:choose>
							${review.review_no}
								<c:when test="${user == null} "> --%>

							<!-- 삭제 버튼 경로넣어야함 -->
							<div class="col-lg-1">
								<p
									style="font-weight: 600; color: #6A92FE; font-size: 12px; line-height: 40px">
									<a href="/pet/review/delete.do?review_no=${review.review_no}"
										style="margin: auto; width: 80px; height: 40px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">삭제</a>
								</p>
							</div>

							<div class="col-lg-2"
								style="font-weight: 600; color: #6A92FE; font-size: 12px; line-height: 40px">
								<a
									href="/pet/review/update_read.do?review_no=${review.review_no}&state=UPDATE"
									style="margin: auto; width: 80px; height: 40px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">
									수정 </a>
							</div>
							<%-- 	</c:when>
							</c:choose> --%>
						</div>
						<br />
						<div class="display: flex; flex-direction: column;">
							<h4>${review.member_addr1 }</h4>
							<div class="row">
								<div class="col-2">
									<p
										style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">${review.write_date_rv}
									</p>
								</div>
								<div class="col-2">
									<p
										style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">평점
										${review.review_rate}</p>
								</div>
							</div>
							<br />
							<p>${review.review}</p>
						</div>
					</div>
					<a href="/pet/menu/review.do"
						style="margin: auto; width: 304px; height: 59px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">
						<span
						style="font-size: 26px; margin-bottom: 2px; color: #6A92FE; margin-right: 6px">+</span>
						<p
							style="font-weight: 600; color: #6A92FE; font-size: 18px; line-height: 40px">전체
							후기 보기</p>
					</a>
				</div>

				<div class="col-lg-2 col-md-6">
					<a
						href="/pet/menu/review/detail.do?review_no=${review.review_no}&state=READ"><img
						src="/pet/resources/assets/images/direction_left.png"
						style="width: 50px; height: 50px; transform: rotateY(180deg)"></a>
				</div>
			</div>
			<br /> <br />
		</div>
	</section>

</body>

</html>