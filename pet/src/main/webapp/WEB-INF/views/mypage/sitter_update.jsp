<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="ko">
    <head>
        <meta charset="utf-8">
        <title>sitter</title>
    </head>
    <body>
        <!-- ========================= page-banner-section start ========================= -->
        <section class="page-banner-section pt-75 pb-75 img-bg" style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="banner-content">
                            <h2 class="text-white">Pet Sitter's Page </h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item" aria-current="page"><a href="/pet">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">page</li>
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
                                	<a href="/pet/menu/reserve/resvhistory_st_list.do">
	                                    <div class="contact-item">
	                                        <div class="contact-icon">
	                                            <i class="lni lni-phone"></i>
	                                        </div>
	                                        <div class="contact-content">
	                                            <h4>나의 예약 보기</h4>
	                                            <p>예약 정보 띄우기</p>
	                                            <p>예약 정보 띄우기</p>
	                                        </div>
	                                    </div>
                                    </a>
                                </div>
                                <div class="col-12 col-md-6 col-xl-12">
	                                <a href="/pet/menu/reserve/resvhistory_st_list.do">
	                                    <div class="contact-item">
	                                        <div class="contact-icon">
	                                            <i class="lni lni-map-marker"></i>
	                                        </div>
	                                        <div class="contact-content">
	                                            <h4>나의 점수</h4>
	                                            <p>별점으로 표시</p>
	                                            <p>${user.sitter_rate}</p>
	                                            <p>가장 최근 후기</p>
	                                        </div>
	                                    </div>
                                    </a>
                                </div>
                                
                                <div class="col-12 col-md-6 col-xl-12">
                                    <div class="contact-item">
                                        <div class="contact-icon">
                                            <i class="lni lni-alarm-clock"></i>
                                        </div>
                                        <div class="contact-content">
                                            <h4>자격증</h4>
                                            <p>${user.sitter_certificate}</p>
                                            <p>자격증</p>
                                            <p><a href="#">등록</a></p>
                                            <p><a href="http://www.kkc.or.kr/service/service_05.html" target="_black">자격증 따기</a></p>
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
                                        <span class="wow fadeInDown" data-wow-delay=".2s">${user.name}님, 안녕하세요!</span>
                                        <h2 class="wow fadeInUp" data-wow-delay=".4s">시터님의 정보를 입력하고 <br>수정해주세요</h2>
                                        <!-- <p class="wow fadeInUp" data-wow-delay=".6s">언제든지 열려있습니다. </p> -->
                                        
                                    </div>
                                </div>
                            </div>
                            <form action="/pet/erp/sitter/update.do" class="contact-form" method="post">
                               	 	<div>
                                    	<h4>이름</h4>
                                        <input type="text" name="sitter_name" id="name" placeholder="이름" value="${user.name}" required>
                                    </div>
                               	 	<div>
                                    	<h4>성별</h4>
                                    	<div class="form-check form-check-inline">
	                                        <input class="form-check-input" type="radio" name="sitter_gender" id="genderM" value="M" required>
	                                        <label class="form-check-label" for="genderM">남자</label>
                                        </div>
                                        <div class="form-check form-check-inline">
	                                        <input class="form-check-input" type="radio" name="sitter_gender" id="genderW" value="F" required>
	                                        <label class="form-check-label" for="genderW">여자</label>
                                        </div>
                                    </div>
                                    <div>
                                    	<h4>이메일</h4>
                                        <input type="email" name="sitter_email" id="email" placeholder="Email" value="${user.sitter_email}" required>
                                    </div>
                                    <div>
                                    	<h4>생일</h4>
                                        <input type="date" name="sitter_birthdate" id="birthday" placeholder="생일" value="${user.sitter_birthdate}" required>
                                    </div>
                                    	<h4>연락처</h4>
                                        <input type="text" name="sitter_phone" id="phone" placeholder="전화번호" value="${user.sitter_phone}" required>
                                    <div>
                                    	<h4>주소</h4>
                                        <input type="text" name="sitter_addr" id="address" placeholder="주소" value="${user.sitter_addr1}" required>
                                        <input type="text" name="sitter_addr2" id="address" placeholder="상세 주소" value="${user.sitter_addr1}" required>
                                    </div>
                                    <div>
                                    	<h4>펫시터 종류</h4>
                                        <input type="text" name="sitter_code" id="sitter" placeholder="펫시터 종류" value="${user.sitter_code}" required>
                                    </div>
                                    <div class="col-12">
                                        <h4>자기 소개</h4>
                                        <textarea name="sitter_info" id="자기소개" placeholder="남들에게 보여질 자기소개를 입력해주세요" rows="5">${user.sitter_info}</textarea>
                                    </div>
                                    <div class="col-12">
                                        <h4>서비스 가능 지역</h4>
                                        <div class="pt-20">
                                        	<!-- <button class=" btn btn-primary wide seoul" type="button" id="seoul">서울</button>
			                               <button class=" btn btn-primary wide" type="button" id="suwon">경기 수원</button>
			                               <button class=" btn btn-primary wide" type="button">인천</button>  -->
                                        </div>
	                                    <div class="area seoul">
												    	<input type="checkbox" id="default1" value="서울특별시 강남구" name="service_area">
	                                        			<label for="default1">강남구</label>
	                                        			<input type="checkbox" id="default2" value="서울특별시 강동구" name="service_area">
	                                        			<label for="default2">강동구</label>
	                                        			<input type="checkbox" id="default3" value="서울특별시 강북구" name="service_area">
	                                        			<label for="default3">강북구</label>
	                                     </div>
	                                     <div class="area suwon">
												    	<input type="checkbox" id="default4"  value="경기도 수원시 영통구" name="service_area">
	                                        			<label for="default4">영통구</label>
	                                        			<input type="checkbox" id="default5"  value="경기도 수원시 권선구" name="service_area">
	                                        			<label for="default5">권선구</label>
	                                        			<input type="checkbox" id="default6"  value="경기도 수원시 장안구" name="service_area">
	                                        			<label for="default6">장안구</label>
	                                     </div>  
            						</div>
            					<script>
            						 $(document).ready(function() {
            							$(".area").hide();
            							
            							$("#seoul").on("click", function(){
            								$(".area").hide()
            								$(".seoul").show()
            							})
            							$("#suwon").on("click", function(){
            								$(".area").hide()
            								$(".suwon").show()
            							})
            							
            							$(".narrow").on("click", function(){
            								val = $(this).attr("value")
            								alert(val)
            							})
            							
            							$("")
            						}) 
            					</script>	
	                                
	                                <!-- hidden start -->
	                                <input type="hidden" name="sitter_id" value="${user.sitter_id}">
	                                <!-- hidden end -->
            
	                                <div class="row pt-100">
	                                    <div class="col-12">
	                                        <div class="button text-center">
	                                            <button type="submit" class="theme-btn">확인</button>
	                                            <a type="button" class="theme-btn" href="/pet/menu/mypage/sitter.do">취소</a>
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
