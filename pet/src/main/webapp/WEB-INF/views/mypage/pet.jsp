<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!doctype html>

<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<title>pet</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js">
	</script>	
	<style type="text/css">
		/* SECTION - BIRTH */
		.info#info__birth { display: flex; }
		
		.info#info__birth select { margin-left : 7px; } .info#info__birth
		select:first-child { margin-left : 0px; }
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
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js">
	</script>	
	<style type="text/css">
		/* SECTION - BIRTH */
		.info#info__birth { display: flex; }
		
		.info#info__birth select { margin-left : 7px; } .info#info__birth
		select:first-child { margin-left : 0px; }
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
	<section class="page-banner-section pt-75 pb-75 img-bg" style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="banner-content">
						<h2 class="text-white">Pet's Page</h2>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item" aria-current="page"><a href="/">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page"><a href="/pet/">reserve</a></li>
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
				<div class="col-xl-4">
					<div class="contact-item-wrapper">
						<div class="row">
							<div class="col-12 col-md-6 col-xl-12">
								<div class="contact-item">
									<div class="contact-icon">
										<i class="lni lni-phone"></i>
									</div>
									<div class="contact-content">
										<h4>${pet.pet_name }</h4>
										<p>${pet.pet_code }</p>
										<p>${pet.pet_kind }</p>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-6 col-xl-12">
								<div class="contact-item">
									<div class="contact-icon">
										<i class="lni lni-phone"></i>
									</div>
									<div class="contact-content">
										<h4>반려동물 2's name</h4>
										<p>반려동물's 종류</p>
										<p>반려동물's 품종</p>
									</div>
								</div>
							</div>
									<div class="col-12 col-md-6 col-xl-12">
								<div class="contact-item">
									<div class="contact-icon">
										<i class="lni lni-phone"></i>
									</div>
									<div class="contact-content">
										<h4>반려동물 3's name</h4>
										<p>반려동물's 종류</p>
										<p>반려동물's 품종</p>
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
									<span class="wow fadeInDown" data-wow-delay=".2s">${user.member_id }님,
										안녕하세요!</span>
									<h2 class="wow fadeInUp" data-wow-delay=".4s">
										반려동물의 정보를 입력하고<br> 수정해주세요
									</h2>
								</div>
							</div>
						</div>
						<form action="#" class="contact-form">
							<div style="display: flex; position: relative;">
								<a href="#"><img src="/pet/resources/assets/img/${pet.pet_photo }" style="width: 100px; height: 100px; border-radius: 50%; object-fit: cover;"></a>
							</div>
							<div>
								<label for="prod1">반려동물 종류</label>
								<select id="prod1">
									<option value="dog" selected>강아지</option>
									<option value="mdog" >강아지(중)</option>
									<option value="bdog" >강아지(대)</option>
									<option value="cat" >고양이</option>
								</select> <br>

							</div>
							<br>
							
							<div class="row">
								<div class="col-md-6">
									<input type="text" name="name" id="name" placeholder="이름" value="${pet.pet_name }" required>
								</div>

								<div>
									<fieldset>
										<legend>성별</legend>
										<div class="row">
											<div class="col-1">
												<div>
													<p>${pet.pet_gender }</p>
													<input type="radio" id="gender_m" name="gender" value="m" required> 
													<input type="radio" id="gender_w" name="gender" value="w" required>
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
								
								<!-- 남자아이 -->
								<div class="row">
									<div class="col-md-6">
										<input type="text" name="birth" id="birth" placeholder="생일" value="${pet.pet_birthdate }"	required>
										<div class="info" id="info__birth">
											<select class="box" id="birth-year">
												<option disabled selected>출생 연도</option>
											</select> <select class="box" id="birth-month">
												<option disabled selected>월</option>
											</select> <select class="box" id="birth-day">
												<option disabled selected>일</option>
											</select>
										</div>
										<input type="text" name="kind" id="kind" placeholder="품종" value="${pet.pet_kind }" required> 
										<input type="text" name="detailkind" id="dkind" placeholder="상세품종" value="${pet.pet_kind }" required>
									</div>

									<div class="col-md-6">
										<input type="text" name="weight" id="weight" placeholder="몸무게" value="${pet.pet_weight }" required>
										<input type="text" name="height" id="height" placeholder="크기" value="${pet.pet_size }" required>
									</div>

									<div>
										<fieldset>
											<legend>중성화</legend>
											<div class="row">
												<div class="col-1">
													<div>
														<p>${pet.neuter }</p>
														<input type="radio" id="neutral_y" name="neutral" value="yes" required> 
														<input type="radio" id="neutral_n" name="neutral" value="no" required>
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
									
									<div class="col-md-6">
										<input type="text" name="hospital" id="hospital" placeholder="동물병원 주소" value="${pet.animalhospital_addr }" required>
									</div>

									<div class="row">
										<div class="col-12">
											<h4>기타 참고사항</h4>
											<textarea name="message" id="message" placeholder="기타 참고사항" rows="5">${pet.pet_note }</textarea>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-12">
										<div class="button text-center">
											<button type="submit" class="theme-btn">등록/수정</button>
											<button type="submit" class="theme-btn">삭제</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
