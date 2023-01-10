<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>

<html class="no-js" lang="ko">
<head>
	<meta charset="utf-8">
	<title>pet</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>	
	<style type="text/css">
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
									<li class="breadcrumb-item active" aria-current="page"><a href="/pet/"></a>Pet Update</li>
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
							<!-- 동물 정보 시작 -->
							<c:choose>
								<c:when test="${fn:length(mypetlist)}=0 ">
									<div class="col-12 col-md-6 col-xl-12">
									<div class="contact-item">
										<div class="contact-icon">
											<img src="">
										</div>
										<div class="contact-content">
											<h4>
												<a type="button" href="/pet/pet/read.do?pet_id=${pet.pet_id}&state=READ">${pet.pet_name}
												${user.name} 님의 귀여운 아이를 등록 해주세요!</a>
											</h4>
										</div>
									</div>
								</div>
								</c:when>
								<c:otherwise>
									<c:forEach var="pet" items="${mypetlist}" varStatus="status">
										<div class="col-12 col-md-6 col-xl-12">
											<div class="contact-item">
												<div class="contact-icon">
													<img src="">
												</div>
												<div class="contact-content">
													<h4><a type="button" href="/pet/mypet/read.do?pet_id=${pet.pet_id}&state=READ">${pet.pet_name}</a></h4>
													<p>${pet.pet_code}</p>
													<p>${pet.pet_kind}</p>
													<p><a type="button" href="/pet/mypet/delete.do?pet_id=${pet.pet_id}">삭제</a></p>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							<!-- 동물 정보 끝 -->
						</div>
					</div>
				</div>
				
				<div class="col-xl-8">
					<div class="contact-form-wrapper">
						<div class="row">
							<div class="col-xl-10 col-lg-8 mx-auto">
								<div class="section-title text-center mb-50">
									<span class="wow fadeInDown" data-wow-delay=".2s">반려동물의 정보를<br>확	인하고 수정해주세요</span>
									<h2 class="wow fadeInUp" data-wow-delay=".4s">${user.name}님, 안녕하세요!</h2>
								</div>
							</div>
						</div>
						<form action="/pet/pet/update.do" method="post" class="contact-form">
							<div style="display: flex; position: relative;">
								<a href="#"><img src="/pet/resources/assets/img/${pet.pet_photo }" style="width: 100px; height: 100px; border-radius: 50%; object-fit: cover;"></a>
							</div>
							<div>
								<label for="prod1">반려동물 종류</label>
								<select name=pet_code id="prod1">
									<option value="dog" selected>강아지</option>
									<option value="cat">고양이</option>
								</select>
							</div>
							
							<div class="row">
								<div class="col-md-6">
									<legend>이름</legend>
									<input type="text" name="pet_name" id="name" placeholder="이름" value="${pet.pet_name}" required>
								</div>

								<div>
									<fieldset>
										<legend>성별 ${pet.pet_gender}</legend>
										<div class="row">
											<div class="col-1">
												<div>
													<input type="radio" id="gender_m" name="pet_gender" value="M" required checked="checked"> 
													<input type="radio" id="gender_w" name="pet_gender" value="F" required>
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
										<legend>생일</legend>
										<input type="text" name="pet_birthdate" id="birth" placeholder="생일" value="${pet.pet_birthdate}" required>
										<legend>품종</legend>
										<input type="text" name="pet_kind" id="kind" placeholder="품종" value="${pet.pet_kind}" required>
										<legend>상세 품종</legend> 
										<input type="text" name="pet_kind" id="dkind" placeholder="상세품종" value="${pet.pet_kind}" required>
										<legend>몸무게</legend>
										<input type="text" name="pet_weight" id="weight" placeholder="몸무게" value="${pet.pet_weight}" required>Kg
										<legend>크기</legend>
										<input type="text" name="pet_size" id="height" placeholder="크기" value="${pet.pet_size}" required>cm
									</div>

									<div>
										<fieldset>
											<legend>중성화 ${pet.neuter }</legend>
											<div class="row">
												<div class="col-1">
													<div>
														<input type="radio" id="neutral_y" name="neuter" value="Y" required> 
														<input type="radio" id="neutral_n" name="neuter" value="N" required checked="checked">
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
										<input type="text" name="animalhospital_name" id="hospital_name" placeholder="동물병원 이름" value="${pet.animalhospital_name}" required>
										<input type="text" name="animalhospital_addr" id="hospital_addr" placeholder="동물병원 주소" value="${pet.animalhospital_addr }" required>
									</div>

									<div class="row">
										<div class="col-12">
											<h4>기타 참고사항</h4>
											<textarea name="pet_note" id="message" placeholder="기타 참고사항" rows="5">${pet.pet_note }</textarea>
										</div>
									</div>
								</div>
								
							<!-- hidden start -->
								<input type="hidden" name="pet_id"  value="${pet.pet_id}">
								<input type="hidden" name="pet_number" value="${pet.pet_number}">
								<input type="hidden" name="pet_photo" value="${pet.pet_photo}">
							<!-- hidden end -->
								
								<div class="row">
									<div class="col-12">
										<div class="button text-center">
											<button type="submit" class="theme-btn">확인</button>
											<a type="button" class="theme-btn" href="/pet/mypet/read.do?pet_id=${pet.pet_id}&state=READ">취소</a>
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
