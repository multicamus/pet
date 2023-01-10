<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>

<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<title>pet</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js">
	
</script>
<style type="text/css">
/* SECTION - BIRTH */
.info#info__birth {
	display: flex;
}

.info#info__birth select {
	margin-left: 7px;
}

.info#info__birth
		select:first-child {
	margin-left: 0px;
}

.info#info__birth select::-webkit-scrollbar {
	width: 10px;
}

.info#info__birth select::-webkit-scrollbar-thumb {
	background-color: #b6b6b6;
	border-radius: 3px;
}

.info#info__birth select::-webkit-scrollbar-track {
	background-color: #ebe9e9;
	border-radius: 6px;
}
</style>

</head>
<head>
<meta charset="utf-8">
<title>pet</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js">
	
</script>
<style type="text/css">
/* SECTION - BIRTH */
.info#info__birth {
	display: flex;
}

.info#info__birth select {
	margin-left: 7px;
}

.info#info__birth
		select:first-child {
	margin-left: 0px;
}

.info#info__birth select::-webkit-scrollbar {
	width: 10px;
}

.info#info__birth select::-webkit-scrollbar-thumb {
	background-color: #b6b6b6;
	border-radius: 3px;
}

.info#info__birth select::-webkit-scrollbar-track {
	background-color: #ebe9e9;
	border-radius: 6px;
}
</style>

</head>

<body>
	<!-- ========================= page-banner-section start ========================= -->
	<section class="page-banner-section pt-75 pb-75 img-bg"
		style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="banner-content">
						<h2 class="text-white">Pet's Page</h2>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item" aria-current="page"><a
										href="/">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page"><a
										href="/pet/">reserve</a></li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ========================= page-banner-section end ========================= -->

	<!-- ========================= contact-section start ========================= -->
	<section class="contact-section pt-100 pb-100">
		<div class="container">
			<div class="row">
				<!-- 동물 정보 시작 -->
				<c:forEach var="pet" items="${mypetlist}" varStatus="status">
					<div class="col-12 col-md-6 col-xl-12">
						<div class="contact-item">
							<div class="contact-icon">
								<img src="">
							</div>
							<div class="contact-content">
								<h4>
									<a type="button"
										href="/pet/mypet/read.do?pet_id=${pet.pet_id}&state=READ">${pet.pet_name}</a>
								</h4>
								<p>${pet.pet_code}</p>
								<p>${pet.pet_kind}</p>
								<p>${fn:length(mypetlist)}</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 동물 정보 끝 -->
				<c:choose>
					<c:when test="${fn:length(mypetlist) == 1}">
						<div class="col-12 col-md-6 col-xl-12">
							<div class="contact-item">
								<div class="contact-icon">
									<img src="">
								</div>
								<div class="contact-content">
									<h4>
										반려동물은 3마리 까지<br /> 등록 할 수 있어요!
									</h4>
									<p>
										<a type="button" href="/pet/menu/mypage/pet_register.do"
											class="theme-btn">+ 추가 등록</a>
									</p>
								</div>
							</div>
						</div>
					</c:when>
				</c:choose>
				<!-- 동물 정보 끝 -->
			</div>
		</div>
		</div>

		</div>
		
		</div>
		</div>
		</div>
		<div class="col-xl-8">
			<div class="contact-form-wrapper">
				<div class="row">
					<div class="col-xl-10 col-lg-8 mx-auto">
						<div class="section-title text-center mb-50">
							<span class="wow fadeInDown" data-wow-delay=".2s">${user.name }님,
								안녕하세요!</span>
							<h2 class="wow fadeInUp" data-wow-delay=".4s">
								반려동물의 정보를 <br> 수정해주세요
							</h2>
							<!-- <p class="wow fadeInUp" data-wow-delay=".6s">언제든지 열려있습니다. </p> -->

						</div>
					</div>
				</div>
				<form action="assets/php/mail.php" class="contact-form">
					<!-- <img src="assets/img/dog.jpg" class="rounded float-center" alt="" width="30%"><h4>사진등록</h4> -->
					<div style="display: flex; position: relative;">
						<a href="#"><img src="/pet/resources/assets/images/dogf.jpg"
							style="width: 100px; height: 100px; border-radius: 50%; object-fit: cover;"></a>
					</div>

					<fieldset>
						<div class="row">
							<div class="col-md-3">
								<legend>펫종류</legend>
								<input type="text" name="petcode" id="petcode" placeholder="강아지"
									disabled="disabled">
							</div>
						</div>
					</fieldset>
					</br>


					<div>
						<fieldset>
							<div class="row">
								<div class="col-md-4">
									<legend>이름</legend>
									<input type="text" name="name" id="name" placeholder="이름"
										value="${pet.pet_name } disabled="disabled">
								</div>
							</div>
						</fieldset>
					</div>
					</br>

					<div>
						<fieldset>
							<legend>성별 ${pet.pet_gender }</legend>
										<div class="row">
											<div class="col-1">
												<div>
													<p></p>
													<input type="radio" id="gender_m" name="pet_gender" value="m" disabled> 
													<input type="radio" id="gender_w" name="pet_gender" value="w" checked disabled>
												</div>
											</div>
											<div class="col-11" style="margin-left: -20px;">
												<div>
													<label for="gender_m" style="display: inline-block">남자아이</label>
												</div>
												<div class="col-11" style="margin-left: -2px;">
													<div style="padding-top: 17px;">
														<label for="gender_w" style="display: inline-block">여자아이</label>
													</div>
												</div>
											</div>
										</div>
						</fieldset>
					</div>



					<div>
						<fieldset>
							<div class="row">
								<div class="col-md-6">
									<legend>생일</legend>
									<input type="text" name="birth" id="birth" placeholder="생일"
										disabled="disabled">
								</div>
							</div>
						</fieldset>
					</div>
					<div class="row">
									<div class="col-md-6">
										<legend>생일</legend>
											<input type="text" name="birth" id="birth" placeholder="생일" value="${pet.pet_birthdate }"	disabled="disabled">
										<legend>품종</legend>
											<input type="text" name="kind" id="kind" placeholder="품종" value="${pet.pet_kind }" disabled>
										<legend>상세 품종</legend> 
											<input type="text" name="detailkind" id="dkind" placeholder="상세품종" value="${pet.pet_kind }" disabled>
										<legend>몸무게</legend>
											<input type="text" name="weight" id="weight" placeholder="몸무게" value="${pet.pet_weight }" disabled>
										<legend>크기</legend>
											<input type="text" name="height" id="height" placeholder="크기" value="${pet.pet_size }" disabled>
									</div>
									
										<div>
										<fieldset>
											<legend>중성화 ${pet.neuter}</legend>
											<div class="row">
												<div class="col-1">
													<div>
														<input type="radio" id="neutral_y" name="neutral" value="yes" disabled="disabled"> 
														<input type="radio" id="neutral_n" name="neutral" value="no" disabled="disabled" checked="checked">
													</div>
												</div>
												<div class="col-11" style="margin-left: -20px;">
													<div>
														<label for="neutral_y" style="display: inline-block">중성화 했어요</label>
													</div>
													<div class="col-11" style="margin-left: -2px;">
														<div style="padding-top: 17px;">
															<label for="neutral_n" style="display: inline-block">아직 안했어요</label>
														</div>
													</div>
												</div>
											</div>
										</fieldset>
									</div>
									<div class="col-md-12">
										<h4>주로 다니는 병원의 이름과 주소</h4>
										<input type="text" name="animalhospital_name" id="hospital_name" placeholder="동물병원 이름" value="${pet.animalhospital_name}" disabled>
										<input type="text" name="animalhospital_addr" id="hospital_addr" placeholder="동물병원 주소" value="${pet.animalhospital_addr}" disabled>
									</div>

									<div class="row">
										<div class="col-12">
											<h4>기타 참고사항</h4>
											<textarea name="pet_note" id="message" placeholder="기타 참고사항" rows="5" disabled>${pet.pet_note}</textarea>
										</div>
									</div>
								</div>
									
									
					<div class="row">
									<div class="col-12">
										<div class="button text-center">
											<a type="button" class="theme-btn" href="/pet/mypet/read.do?pet_id=${pet.pet_id}&state=UPDATE">수정</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



					<!-- ========================= contact-section start ========================= -->

					<!-- ========================= contact-section end ========================= -->


					<!-- ========================= client-logo-section start ========================= -->


					<div class="client-logo">
						<img src="assets/img/client-logo/uideck-logo.svg" alt="">
					</div>
					<div class="client-logo">
						<img src="assets/img/client-logo/pagebulb-logo.svg" alt="">
					</div>
					<div class="client-logo">
						<img src="assets/img/client-logo/lineicons-logo.svg" alt="">
					</div>
					<div class="client-logo">
						<img src="assets/img/client-logo/graygrids-logo.svg" alt="">
					</div>
					<div class="client-logo">
						<img src="assets/img/client-logo/lineicons-logo.svg" alt="">
					</div>
			</div>
		</div>
		</div>
	</section>
	<!-- ========================= client-logo-section end ========================= -->



	<!-- ========================= footer start ========================= -->


	<div class="copyright-area">
		<div class="row align-items-center">
			<div class="col-md-6"></div>
		</div>
		<div class="col-md-6"></div>
	</div>
	</div>
	</div>
	</footer>
	<!-- ========================= footer end ========================= -->


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top"> <i class="lni lni-arrow-up"></i>
	</a>

	<!-- ========================= JS here ========================= -->
	<script src="assets/js/bootstrap.bundle-5.0.0-beta1.min.js"></script>
	<script src="assets/js/contact-form.js"></script>
	<script src="assets/js/count-up.min.js"></script>
	<script src="assets/js/tiny-slider.js"></script>
	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/glightbox.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/imagesloaded.min.js"></script>
	<script src="assets/js/main.js"></script>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.12.4.min.js"></script>

</body>
</html>
