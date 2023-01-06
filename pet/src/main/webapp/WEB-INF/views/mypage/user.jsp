<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <section class="contact-section pt-130">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4">
                        <div class="contact-item-wrapper">
                            <div class="row">
                                <div class="col-12 col-md-6 col-xl-12">
	                                <a href="/pet/menu/mypage/pet.do">
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
                                    </a>
                                </div>
                                <div class="col-12 col-md-6 col-xl-12">
                                	<a href="/pet/menu/mypage/pet.do">
	                                    <div class="contact-item">
	                                        <div class="contact-icon">
	                                            <i class="lni lni-map-marker"></i>
	                                        </div>
	                                        <div class="contact-content">
	                                            <h4>반려동물 2's name</h4>
												<p>반려동물's 종류</p>
												<p>반려동물's 품종</p>
	                                        </div>
	                                    </div>
                                    </a>
                                </div>
                                <div class="col-12 col-md-6 col-xl-12">
                                	<a href="/pet/menu/reserve/resvhistory_mb_list.do">
	                                    <div class="contact-item">
	                                        <div class="contact-icon">
	                                            <i class="lni lni-alarm-clock"></i>
	                                        </div>
	                                        <div class="contact-content">
	                                            <h4>나의 예약 및 결제</h4>
												<p>예정 중인 예약</p>
												<p>예정 중인 예약</p>
	                                        </div>
	                                    </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8">
                        <div class="contact-form-wrapper">
                            <div class="row">
                                <div class="col-xl-10 col-lg-8 mx-auto">
                                    <div class="section-title text-center mb-50">
                                        <span class="wow fadeInDown" data-wow-delay=".2s">XXX님, 안녕하세요!</span>
                                        <h2 class="wow fadeInUp" data-wow-delay=".4s">이용자님의 정보를 입력하고<br> 수정해주세요</h2>
                                    </div>
                                </div>
                            </div>
                            <form action="assets/php/mail.php" class="contact-form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" name="name" id="name" placeholder="이름" value="${user.name}" required>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="email" name="email" id="email" placeholder="Email" value="${user.member_email}" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6"><button class=" btn btn-primary " style="margin-left: 30px;" type="submit">번호 변경</button></br>
                                        <input type="text" name="phone" id="phone" placeholder="전화번호" value="${user.member_phone}" required>
                                    </div>
                                    <div class="col-md-6"><button class=" btn btn-primary " style="margin-left: 30px;" type="submit">주소 변경</button></br>
                                        <input type="text" name="address" id="address" placeholder="주소" value="${user.member_addr1}" required> 
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <h4>서비스 이용 지역</h4>
                                        <textarea name="message" id="message" placeholder="서비스 가능구역 입력" rows="5">
                                        </textarea>
                                    </div>
                                    </div>
                                    <div>
                                        <button class=" btn btn-primary " type="submit">서울시 종로구</button>
                                        <button class=" btn btn-primary " type="submit">서울시 성북구</button>
                                        <button class=" btn btn-primary " type="submit">서울시 마포구</button> 
                                        <button class=" btn btn-primary " type="submit">서울시 영등포구</button>    
                                    </div>
                                    <br>
                                    <br>                    
                                <div class="row">
                                    <div class="col-12">
                                        <div class="button text-center">
                                            <button type="submit" class="theme-btn">등록/수정</button>
                                            <button type="reset" class="theme-btn">취소</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ========================= contact-section end ========================= -->
    </body>
