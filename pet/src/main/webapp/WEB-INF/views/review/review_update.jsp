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
	<section class="feature-section pt-80">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-7 col-md-9 mx-auto">
					<div class="section-title text-center mb-55">
						<h2 class="wow fadeInUp" data-wow-delay=".4s">후기를 수정해보세요!</h2>
					</div>
				</div>
			</div>

			<form class="contact-form" action="/pet/review/update.do"
				method="post">
				<div class="row" style="display: flex; align-items: center;">
					<div class="col-lg-2 col-md-6"></div>

					<div class="col-lg-8 col-md-6">
						<div class="feature-box box-style">
							<!-- review start -->
							<div class="col-lg-12 row pb-30">
								<div class="col-lg-11 row">
									<div class="col-lg-1">
										<img
											src="/pet/resources/assets/images/${review.member_photo}.jpg"
											style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover;">
									</div>
									<div class="col-lg-8"
										style="padding-top: 10px; padding-left: 10px;">
										<h4>
											<%-- ${pet.pet_name} --%>
											PET NAME
										</h4>
									</div>
								</div>



							</div>

							<div class="col-lg-12">
								<h4>${review.member_addr1}</h4>
								<div class="row">
									<div class="col-2">
										<p
											style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">${review.write_date_rv}</p>
									</div>
									<div class="col-2">
										<p
											style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">평점:
											${review.review_rate}</p>
										<!-- <input type="text" name="review_rate" id="review_rate" placeholder="5" required="required"> -->
									</div>
								</div>
							</div>

							<div class="row align-items-center pt-10 pl-50">

								<div class="form-check col-1">
									<input id="review_rate" name="review_rate" type="radio"
										class="form-check-input" value="1" required> <label
										class="form-check-label" for="review_rate">1점</label>
								</div>
								<div class="form-check col-1">
									<input id="review_rate2" name="review_rate" type="radio"
										class="form-check-input" value="2" required> <label
										class="form-check-label" for="review_rate2">2점</label>
								</div>
								<div class="form-check col-1">
									<input id="review_rate3" name="review_rate" type="radio"
										class="form-check-input" value="3" required> <label
										class="form-check-label" for="review_rate3">3점</label>
								</div>
								<div class="form-check col-1">
									<input id="review_rate4" name="review_rate" type="radio"
										class="form-check-input" value="4" required> <label
										class="form-check-label" for="review_rate4">4점</label>
								</div>
								<div class="form-check col-1">
									<input id="review_rate5" name="review_rate" type="radio"
										class="form-check-input" value="5" checked required> <label
										class="form-check-label" for="review_rate5">5점</label>
								</div>
							</div>

							<div class="col-lg-12">
								<textarea name="review" id="review" placeholder="내용을 작성해주세요."
									rows="12" cols="102" class="form-control">${review.review}</textarea>
							</div>
							<br /> <br />

							<!-- review end -->

							<!-- hidden start -->
							<!-- <input type="hidden" name="modify_date_rv"  value=""> sysdate -->
							<!-- ${resv_no} -->
														
							<input type="hidden" name="review_no" value="${review.review_no}">
							<input type="hidden" name="memeber_id"
								value="${review.member_id}"> <input type="hidden"
								name="write_date_rv" value="${review.write_date_rv}"> <input
								type="hidden" name="resv_no" value="1111">
							<!-- 파일 업로드 후 처리 해야함 -->
							<input type="hidden" name="review_file" value="test">
							<!-- hidden end -->

							<!-- btn start -->
							<div class="row pb-10"">
								<div class="col-lg-3"></div>
								<div class="col-lg-3">
									<a
										href="/pet/menu/review/detail.do?review_no=${review.review_no}&state=READ"
										style="margin: auto; width: 100px; height: 55px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">
										<button type="submit"
											style="margin: auto; width: 100px; height: 55px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">
											<p
												style="font-weight: 600; color: #6A92FE; font-size: 18px; line-height: 40px">확인</p>
										</button>
									</a>
								</div>
								<div class="col-lg-3">
									<p
										style="font-weight: 600; color: #6A92FE; font-size: 18px; line-height: 40px">
										<a
											href="/pet/menu/review/detail.do?review_no=${review.review_no}&state=READ"
											style="margin: auto; width: 100px; height: 55px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">취소</a>
									</p>
								</div>
								<div class="col-lg-3"></div>
							</div>
							<!-- btn end -->
						</div>
					</div>
			</form>
		</div>

	</section>

</body>
</html>