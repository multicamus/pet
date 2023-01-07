<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!doctype html>
<html class="no-js" lang="ko">
    <head>
        <meta charset="utf-8">
        <title>sitter</title>
        <script type="text/javascript">
        
        
        </script>
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
                                        <li class="breadcrumb-item" aria-current="page"><a href="javascript:void(0)">Home</a></li>
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
                                            <p>자격증</p>
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
                                        <span class="wow fadeInDown" data-wow-delay=".2s">${user.sitter_id}님, 안녕하세요!</span>
                                        <h2 class="wow fadeInUp" data-wow-delay=".4s">시터님의 정보를 입력하고 <br>수정해주세요</h2>
                                        <!-- <p class="wow fadeInUp" data-wow-delay=".6s">언제든지 열려있습니다. </p> -->
                                        
                                    </div>
                                </div>
                            </div>
                            <form action="assets/php/mail.php" class="contact-form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" name="name" id="name" placeholder="이름" disabled="disabled">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="email" name="email" id="email" placeholder="Email" disabled="disabled">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" ></br>
                                        <input type="text" name="phone" id="phone" placeholder="전화번호" disabled="disabled">
                                    </div>
                                    <div class="col-md-6"></br>
                                        <input type="text" name="address" id="address" placeholder="주소" disabled="disabled">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" >
                                        <input type="text" name="sitter" id="sitter" placeholder="펫 종류" disabled="disabled">
                                    </div>
                                </div>
                                	<div class="row">
	                                    <div class="col-12">
	                                        <h4>자기 소개</h4>
	                                        <textarea name="message" id="자기소개" placeholder="남들에게 보여질 자기소개를 입력해주세요" rows="5" disabled="disabled"></textarea>
	                                    </div>
	                                </div>
	                                <div class="row">
	                                    <div class="col-12">
	                                        <h4>서비스 가능 지역</h4>
	                                       
	                                    </div>
	                                </div>
                                <div>
	                               <button class=" btn btn-primary " type="submit">서울시 종로구</button>
	                               <button class=" btn btn-primary " type="submit">서울시 성북구</button>
	                               <button class=" btn btn-primary " type="submit">서울시 마포구</button> 
	                               <button class=" btn btn-primary " type="submit">서울시 영등포구</button>    
                                </div></br></br>
            
                                <div class="row">
                                    <div class="col-12">
                                        <div class="button text-center">
                                            <button onclick="location='/pet/src/main/webapp/WEB-INF/views/mypage/sitter2.jsp'" type="submit" class="theme-btn">수정</button>
                                            <button onclick="location='/pet/src/main/webapp/WEB-INF/views/mypage/sitter.jsp'" type="reset" class="theme-btn">취소</button>
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
