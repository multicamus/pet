<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!doctype html>
<html class="no-js" lang="ko">
<head>
	<meta charset="utf-8">
	<title>user</title>
</head>
<!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>

<script>
/** 우편번호 찾기 */
function execDaumPostcode() {
    daum.postcode.load(function(){
        new daum.Postcode({
            oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
              $("#postcode").val(data.zonecode);
              $("#address").val(data.roadAddress);
            }
        }).open();
    });
}
</script>

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
												<h4>반려동물 1's name</h4>
												<p>반려동물's 종류</p>
												<p>반려동물's 품종</p>
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
                                        <span class="wow fadeInDown" data-wow-delay=".2s">${user.member_id}님, 안녕하세요!</span>
                                        <h2 class="wow fadeInUp" data-wow-delay=".4s">이용자님의 정보를 입력하고<br> 수정해주세요</h2>
                                        <!-- <p class="wow fadeInUp" data-wow-delay=".6s">언제든지 열려있습니다. </p> -->
                                    </div>
                                </div>
                            </div>
                            <form action="assets/php/mail.php" class="contact-form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" name="name" id="name" placeholder="이름" required>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="email" name="email" id="email" placeholder="Email" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6"><button class=" btn btn-primary " style="margin-left: 30px;" type="submit">번호 변경</button></br>
                                        <input type="text" name="phone" id="phone" placeholder="전화번호" required>
                                    </div>
                                      <div class="col-md-3">
                                      <input type="text" class="form-control m-input" name="postcode" id="postcode" placeholder="우편번호" readonly />
                                    </div>
                                    <div class="col-md-4 postcode-btn">
                                      <button type="button" class="btn btn-primary" onclick="execDaumPostcode()">우편번호 찾기</button>
                                    </div>
                                    <div class="col-md-4 offset-md-5" style="margin-left: 75px; padding-left:10px; " >
                                      <input
                                        type="text"
                                        class="form-control m-input"
                                        name="address"
                                        id="address"
                                        placeholder="도로명 주소"
                                        readonly
                                      />
                                    </div>
                                    <div class="col-md-4 offset-md-5" style="margin-left: 65px;">
                                      <input
                                        type="text"
                                        class="form-control m-input"
                                        name="detailAddress"
                                        placeholder="상세 주소"
                                        required
                                      />
                                    </div>
 
                                </div>
                                </div>
                              
                                   
                                    <br>
                                    <br>                    
                                <div class="row">
                                    <div class="col-12">
                                        <div class="button text-center">
                                            <button onclick="location='/pet/src/main/webapp/WEB-INF/views/mypage/user.jsp'" type="submit" class="theme-btn">등록</button>
                                            <button onclick="location='/pet/src/main/webapp/WEB-INF/views/mypage/user.jsp'" type="reset" class="theme-btn">취소</button>
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
