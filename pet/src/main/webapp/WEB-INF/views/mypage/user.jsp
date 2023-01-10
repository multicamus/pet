<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="ko">
<head>
	<meta charset="utf-8">
	<title>user</title>
</head>
<body>
<!-- ========================= page-banner-section start ========================= -->
<section class="page-banner-section pt-75 pb-75 img-bg" style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="banner-content">
                    <h2 class="text-white">Client's Page </h2>
                    <div class="page-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item" aria-current="page"><a href="/pet">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">${user.name}님</li>
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
<section class="contact-section pt-130">
	<div class="container">
	<div class="row">
		<div class="col-xl-3">
			<div class="contact-item-wrapper">
				<div class="row">
					<!-- 동물 정보 시작 -->
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
								</div>
							</div>
						</div>
					</c:forEach>
					<!-- 동물 정보 끝 -->
					
					<!-- 예약 정보 시작 -->
					<div class="col-12 col-md-6 col-xl-12">
						<div class="contact-item">
							<div class="contact-icon">
								<i class="lni lni-alarm-clock"></i>
							</div>
							<div class="contact-content">
								<h4><a href="/pet/menu/reserve/resvhistory_mb_list.do">나의 예약 및 결제</a></h4>
								<p>예정 중인 예약</p>
								<p>예정 중인 예약</p>
							</div>
						</div>
					</div>
					<!-- 예약 정보 끝 -->
				</div>
			</div>
		</div>
		         
	         <div class="col-xl-9 pb-150">
	             <div class="contact-form-wrapper">
	                 <div class="row">
	                     <div class="col-xl-10 col-lg-8 mx-auto">
	                         <div class="section-title text-center mb-50">
	                            <span class="wow fadeInDown" data-wow-delay=".2s">${user.name}님, 안녕하세요!</span>
	                            <h2 class="wow fadeInUp" data-wow-delay=".4s">${user.name}님, 안녕하세요!</h2>
	                        </div>
	                    </div>
	                </div>
		                
	                <div class="contact-form">
	                    <div class="row">
	                        <div class="col-lg-8">
	                        	이름 : <input type="text" name="name" id="name" placeholder="이름" value="${user.name}" disabled>
	                        </div>
	                        <div class="col-lg-8">
	                        	성별 : <input type="text" name="gender" id="gender" placeholder="성별" value="${user.member_gender}" disabled>
	                        </div>
	                        <div class="col-lg-8">
	                        	이메일 : <input class="col-lg-2" type="email" name="email" id="email" placeholder="Email" value="${user.member_email}" disabled>
	                        </div>
	                        <div class="col-lg-8">
	                        	연락처 : <input type="text" name="phone" id="phone" placeholder="연락처" value="${user.member_phone}" disabled>
	                        </div>
	                        <div class="col-lg-8">
	                        	주소: <input type="text" name="addr1" id="addr1" placeholder="주소" value="${user.member_addr1}" disabled> 
	                        </div>
	                        <div class="col-lg-8">
	                        	상세 주소: <input type="text" name="addr2" id="addr2" placeholder="상세 주소" value="${user.member_addr2}" disabled> 
	                        </div>
	                        <div class="col-lg-8">
	                        	프로필 사진: <input type="text" name="photo" id="photo" placeholder="프로필 사진" value="${user.member_photo}" disabled> 
	                        </div>
	                        
	                        <div class="col-12">
	                            <div class="button text-center">
	                                <a type="button" class="theme-btn" href="/pet/menu/mypage/user_update.do">수정</a>
	                            </div>
	                        </div>
	                        
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</section>
<!-- ========================= contact-section end ========================= -->
</body>
</html>
