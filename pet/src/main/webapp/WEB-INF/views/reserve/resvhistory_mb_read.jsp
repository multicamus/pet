<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
    <meta charset="utf-8">
    <title>resvhistory_mb_read</title>
    <style>
          .form_radio_btn {
	 width: 200px; 
          display: inline-block;
	height : 70px;
  		border: 1px solid #EAE7E7;
  		border-radius: 30px;
          margin:auto;
          margin-bottom: 20px;
          
          
}
.form_radio_btn input[type=radio] {
	display: none;
}
.form_radio_btn label {
	display: block;
  		border-radius: 30px;
 			margin: 0 auto;
  		text-align: center;
  		height: -webkit-fill-available;
  		line-height: 70px;
          font-weight: bold;
          font-size: large;
}
 
/* Checked */
.form_radio_btn input[type=radio]:checked + label {
	background: #3763ec;
	color: #fff;
}
 
/* Hover */
.form_radio_btn label:hover {
	color: #666;
}
 
/* Disabled */
.form_radio_btn input[type=radio] + label {
	background: #F9FAFC;
	color: #666;
}

      .service-box{
          width:1200px;
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
                            <h2 class="text-white">예약 및 결제내역</h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item" aria-current="page"><a href="/pet/">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">예약 및 결제내역</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ========================= page-banner-section end ========================= -->

        <!-- ========================= service-section start ========================= -->
        <section id="service" class="service-section pt-130 pb-100">
            <!-- 컨테이너 시작 -->
            <div class="container">
                <!-- 진행예약/지난예약 버튼 -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="resv_history" >
                                    <div class="form_radio_btn radio_gender">
                                        <input id="radio-20" type="radio" name="reserved" >
                                        <label for="radio-20" >진행예약</label>
                                    </div>
                                </div> 
                            </div>
                            <div class="col-md-6">
                                <div class="resv_history" >
                                    <div class="form_radio_btn radio_gender">
                                        <input id="radio-21" type="radio" name="reserved"  >
                                        <label for="radio-21">지난예약</label>
                                    </div>
                                </div>                                         
                            </div>
                        </div>
                    </div>    
                </div>
                <!-- 진행예약/지난예약 버튼 끝 -->

                <!-- 예약/결제 내역  정보 -->
                <!-- 예약/결제 내역 row -->
                <div class="row">
                    <!-- 예약/결제 내역 칸 -->
                    <div class="col-lg-12 col-md-6">
                        <!-- 전체 row -->
                        <div class="row">
                            <!-- 예약정보 컬럼  -->
                            <div class="col-6"> 
                                <!-- 예약정보  row-1 -->
                                <div class="row"> 
                                    <!-- 예약정보 칸 wrapper -->
                                    <div class="contact-form-wrapper">
                                        <!-- 예약정보 row-2 -->
                                        <div class="row">
                                            <!-- 예약정보 제목 -->
                                            <div class="col-xl-10 col-lg-8 mx-auto">
                                                <div class="section-title text-center mb-20">
                                                    <span class="wow fadeInDown" data-wow-delay=".2s">예약정보</span>
                                                </div>
                                            </div>
                                            <!-- 반려동물정보 제목 -->
                                            <div>
                                                <span style="margin:10px"><h3>반려동물정보</h3></span>
                                            </div>
                                            <!-- 반려동물사진 & 반려동물이름 & 고양이/강아지-->
                                            <div>
                                                <img src="https://www.dailysecu.com/news/photo/202104/123449_145665_1147.png"
                                                    alt="해당 서비스 이용 반려동물" style="width: 100px; height: 100px; border-radius: 100px;  pointer-events: none; float:left;">
                                                
                                                <h5 style="float:left; margin-left: 50px; margin-top: 35px;" >반려동물 이름</h5>
                                                <h5 style="float:left; margin-left: 50px; margin-top: 35px;" >고양이/강아지</h5>
                                            </div>
                                            
                                            <!-- 예약상세정보 -->
                                            <div style="margin-top:20px; ">
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">동물이름:</h5> 
                                                    <span style="font-size:20px">탄이</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">예약날짜:</h5> 
                                                    <span style="font-size:20px">ㅇㅇㅇㅇ-ㅇㅇ-ㅇㅇ</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">취소여부:</h5> 
                                                    <span style="font-size:20px">취소 안함</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">서비스 이용 날짜:</h5> 
                                                    <span style="font-size:20px">ㅇㅇㅇㅇ-ㅇㅇ-ㅇㅇ</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">서비스 이용 시작시간:</h5> 
                                                    <span style="font-size:20px">ㅇㅇ시</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">서비스 이용 종료시간:</h5> 
                                                    <span style="font-size:20px">ㅇㅇ시</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">총 서비스 이용시간:</h5> 
                                                    <span style="font-size:20px">ㅇ시간</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">서비스 종류:</h5> 
                                                    <span style="font-size:20px">돌봄(기본)+산책</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">주의사항:</h5> 
                                                    <span style="font-size:20px">탄이는 입질이 심해요</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">서비스 이용 날짜:</h5> 
                                                    <span style="font-size:20px">ㅇㅇㅇㅇ-ㅇㅇ-ㅇㅇ</span>
                                                </div> 
                                                
                                            </div>
                                            <!-- 예약상세정보끝 -->
                                            <!-- 펫시터정보 제목 -->
                                            <div style="margin-top: 50px;">
                                                <span style="margin:10px"><h3>펫시터정보</h3></span>
                                            </div>
                                            <!-- 펫시터사진 & 펫시터이름 & 고양이/강아지/둘다 펫시터-->
                                            <div>
                                                <img src="https://e7.pngegg.com/pngimages/798/436/png-clipart-computer-icons-user-profile-avatar-profile-heroes-black.png"
                                                    alt="해당 서비스 펫시터" style="width: 100px; height: 100px; border-radius: 100px;  pointer-events: none; float:left;">
                                                
                                                <h5 style="float:left; margin-left: 50px; margin-top: 35px;" >펫시터 이름</h5>
                                                <h5 style="float:left; margin-left: 50px; margin-top: 35px;" >고양이/강아지/둘다 펫시터</h5>
                                            </div>
                                        </div>
                                        <!-- 예약정보 row-2끝 -->
                                    </div>
                                    <!-- 예약정보 wrapper 끝 -->
                                </div>
                                <!-- 예약정보  row-1끝 -->
                            </div>
                            <!-- 예약정보 컬럼 끝  -->


                            <!-- 결제정보 컬럼  -->
                            <div class="col-6"> 
                                <!-- 결제정보  row-1 -->
                                <div class="row"> 
                                    <!-- 결제정보 칸 wrapper -->
                                    <div class="contact-form-wrapper">
                                        <!-- 결제정보 row-2 -->
                                        <div class="row">
                                            <!-- 결제정보 제목 -->
                                            <div class="col-xl-10 col-lg-8 mx-auto" style="margin-bottom:50px ;">
                                                <div class="section-title text-center mb-20">
                                                    <span class="wow fadeInDown" data-wow-delay=".2s">결제정보</span>
                                                </div>
                                            </div>
                                            <!-- 결제정보 제목 끝-->

                                            <!-- 예약상세정보 -->
                                            <div style="margin-top:20px; ">
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">결제 상태:</h5> 
                                                    <span style="font-size:20px">결제 완료</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">결제 날짜:</h5> 
                                                    <span style="font-size:20px">ㅇㅇㅇㅇ-ㅇㅇ-ㅇㅇ</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">결제방법:</h5> 
                                                    <span style="font-size:20px">삼성비자/일시불</span>
                                                </div>
                                                <div>
                                                    <h5 style="line-height:500%;display: inline;">지불금액:</h5> 
                                                    <span style="font-size:20px">27,000원</span>
                                                </div>
                                            </div>
                                            <!-- 예약상세정보끝 -->
                                        </div>
                                        <!-- 예약정보 row-2끝 -->
                                    </div>
                                    <!-- 예약정보 wrapper 끝 -->
                                </div>
                                <!-- 예약정보  row-1끝 -->
                            </div>
                            <!-- 예약정보 컬럼 끝  -->
                        </div>
                        <!-- 전체 row끝 -->
                    </div>
                    <!-- 예약/결제 내역 칸 -->
                </div>
                <!-- 예약/결제 내역 row 끝 -->
            </div>
            <!-- 컨테이너 끝 -->
        </section> 
        <!-- section끝 -->
        <!-- ========================= service-section end ========================= -->
    </body>
</html>
