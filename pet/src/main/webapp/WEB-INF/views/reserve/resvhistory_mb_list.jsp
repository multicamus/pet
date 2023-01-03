<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="ko">
    <head>
        <meta charset="utf-8">
        <title>resvhistory mb list</title>
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
                                        <input id="radio-20" type="radio" name="reserved" checked>
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

                <!-- 돌봄 예정 서비스 정보 -->
                <!-- 돌봄예정 서비스 row -->
                <div class="row">
                    <!-- 돌봄예정 서비스 칸 -->
                    <div class="col-lg-12 col-md-6">
                        <!-- 돌봄예정 서비스 service box -->
                        <div class="service-box box-style">
                            <!-- 돌봄예정 서비스 box content -->
                            <div class="box-content-style service-content">
                                <!-- 돌봄 예정 ㅇㅇㅇㅇ년 ㅇㅇ월 ㅇㅇ일 -->
                                <div class="row">
                                    <div class="col-2">
                                        <span style="margin-right:50px"><h4>돌봄 예정</h4></span>
                                    </div>
                                    <div class="col-10">
                                        <span><h5>방문날짜: </h5></span>
                                        <span><h5>0000년 00월 00일</h5></span>
                                    </div>
                                </div>
                                <!-- 돌봄 예정 ㅇㅇㅇㅇ년 ㅇㅇ월 ㅇㅇ일 끝-->

                                <!-- 반려동물 사진 / 서비스정보 -->
                                <div class="row" style="display: flex; align-items: center;  flex: 110%;">
                                    <div class="col-2">
                                        <img src="https://www.dailysecu.com/news/photo/202104/123449_145665_1147.png"
                                            alt="해당 서비스 이용 반려동물" style="width: 100px; height: 100px; border-radius: 100px;  pointer-events: none;">
                                    </div>
                                    <div class="col-8 ">
                                        <div >
                                            <div style="font-size: 20px; ">
                                                <span>반려동물 이름:</span>
                                                <span>ㅇㅇㅇ</span>
                                                <span style="margin-left:50px">돌봄 서비스 종류</span>
                                                <span>ㅇㅇㅇ</span>
                                            </div>

                                            <div style="font-size: 20px; margin-top: 20px ;">
                                                <span>돌봄 서비스 가격:</span>
                                                <span>ㅇㅇㅇ</span>
                                                <span style="margin-left:25px">시작시간 ~ 종료시간:</span>
                                                <span>ㅇㅇ시~ㅇㅇ시</span>
                                            </div>    
                                        </div>
                                    </div>
                                    
                    
                                    <!-- 더보기 -->
                                    <div class="col-2">        
                                        <div class="button text-center" >
                                            <button type="submit" onclick="location.href='/pet/menu/reserve/resvhistory_mb_read.do'" class="theme-btn">더보기</button>
                                        </div>
                                    </div>
                                    <!-- 더보기 끝 -->
                                </div>    
                                <!-- 반려동물 사진 / 서비스정보 끝-->       
                            </div>
                            <!-- 돌봄예정 서비스 box content 끝 -->    
                        </div>
                        <!-- 돌봄예정 서비스 service box 끝-->
                    </div>
                    <!-- 돌봄예정 서비스 칸 끝-->
                </div>
                <!-- 돌봄예정 서비스 row 끝-->



                

                <!-- 돌봄 예정 서비스 정보 -->
                <!-- 돌봄예정 서비스 row -->
                <div class="row">
                    <!-- 돌봄예정 서비스 칸 -->
                    <div class="col-lg-12 col-md-6">
                        <!-- 돌봄예정 서비스 service box -->
                        <div class="service-box box-style">
                            <!-- 돌봄예정 서비스 box content -->
                            <div class="box-content-style service-content">
                                <!-- 돌봄 예정 ㅇㅇㅇㅇ년 ㅇㅇ월 ㅇㅇ일 -->
                                <div class="row">
                                    <div class="col-2">
                                        <span style="margin-right:50px"><h4  style="color:red">예약 취소</h4></span>
                                    </div>
                                    <div class="col-10">
                                        <span><h5>방문날짜: </h5></span>
                                        <span><h5>0000년 00월 00일</h5></span>
                                    </div>
                                </div>
                                <!-- 돌봄 예정 ㅇㅇㅇㅇ년 ㅇㅇ월 ㅇㅇ일 끝-->

                                <!-- 반려동물 사진 / 서비스정보 -->
                                <div class="row" style="display: flex; align-items: center;  flex: 110%;">
                                    <div class="col-2">
                                        <img src="https://www.dailysecu.com/news/photo/202104/123449_145665_1147.png"
                                            alt="해당 서비스 이용 반려동물" style="width: 100px; height: 100px; border-radius: 100px;  pointer-events: none;">
                                    </div>
                                    <div class="col-8 ">
                                        <div >
                                            <div style="font-size: 20px; ">
                                                <span>반려동물 이름:</span>
                                                <span>ㅇㅇㅇ</span>
                                                <span style="margin-left:50px">돌봄 서비스 종류</span>
                                                <span>ㅇㅇㅇ</span>
                                            </div>

                                            <div style="font-size: 20px; margin-top: 20px ;">
                                                <span>돌봄 서비스 가격:</span>
                                                <span>ㅇㅇㅇ</span>
                                                <span style="margin-left:25px">시작시간 ~ 종료시간:</span>
                                                <span>ㅇㅇ시~ㅇㅇ시</span>
                                            </div>    
                                        </div>
                                    </div>
                                    <!-- 더보기 -->
                                    <div class="col-2">        
                                        <div class="button text-center" >
                                            <button type="submit" onclick="location.href='/pet/menu/reserve/resvhistory_mb_read.do'" class="theme-btn" >더보기</button>
                                        </div>
                                    </div>
                                    <!-- 더보기 끝 -->
                                </div>    
                                <!-- 반려동물 사진 / 서비스정보 끝-->       
                            </div>
                            <!-- 돌봄예정 서비스 box content 끝 -->    
                        </div>
                        <!-- 돌봄예정 서비스 service box 끝-->
                    </div>
                    <!-- 돌봄예정 서비스 칸 끝-->
                </div>
                <!-- 돌봄예정 서비스 row 끝-->
            </div>
            <!-- 컨테이너 끝 -->
        </section>            
    </body>
</html>
