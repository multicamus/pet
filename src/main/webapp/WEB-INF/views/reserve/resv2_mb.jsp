<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>resv2_mb</title>
    <style>
        select {
        border-radius: 25px;
          
        border: 1px solid #F4EEFB;
        transition: all 0.3s ease-out 0s;    
        width: 300px; 
        height: 60px;
        padding: .8em .5em; 
        margin-bottom: 25px;
        /* border: 1px solid #999; */
        

        font-family: inherit;  
        background: url('arrow.jpg') no-repeat 95% 50%; 
        
        -webkit-appearance: none; 
        -moz-appearance: none;
        appearance: none;
        }
        
        .input{
        border: 1px solid #F4EEFB;
        border-radius: 25px;
        padding: .8em .5em;     
        width: 150px;
        margin:auto;
        }

        .homepass{
        font-size: 13px;
        border: 1px solid #F4EEFB;
        border-radius: 25px;
        padding: .8em .5em;     
        width: 150px;
        margin-bottom: 40px;
        }

        #message{
        border: 1px solid #F4EEFB;
        border-radius: 25px;
        padding: .8em .5em;     
        width: 350px;  
        margin-bottom: 35px;   
        }

        #parking{
        border: 1px solid #F4EEFB;
        border-radius: 25px;
        padding: .8em .5em;     
        width: 350px;     
        }

        .message{
        border: 1px solid #F4EEFB;
        border-radius: 25px;
        padding: .8em .5em;     
        width: 350px; 
        margin-bottom: 60px;
        }

        .theme-btn{
           margin-left: 10px;
           margin-top: 60px;
        }

        #clean{
            margin-bottom:20px;
        }

        #emergency{
            margin-bottom: 15px;
        }

        #feed{
            margin-bottom : 95px;
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
                            <h2 class="text-white">예약하기</h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item" aria-current="page"><a href="/pet/">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">예약하기</li>
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
        <!-- 전체 section -->
        <section class="contact-section pt-130">
            <!-- 전체 컨테이너 -->
            <div class="container">
                <!-- 전체 form -->
                <form action="assets/php/mail.php" class="contact-form">
                    <!-- 전체 row -->
                    <div class="row">
                        
                        <!-- 1번째 칸 -->
                        <div class="col-md-4"> 
                            <!-- 1번째 칸 row -->
                            <div class="row"> 
                                <!-- 1번재 칸 wrapper -->
                                <div class="contact-form-wrapper">
                                <!-- <form action="assets/php/mail.php" class="contact-form"> -->
                                    <!-- 1번째 칸 방문방법 제목 -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">방문방법(필수)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 1번째 칸 방문방법 선택 -->
                                    <div class="row">
                                        <div class="col-12" >
                                            <select>
                                                <option>비밀번호</option>
                                                <option>직접만남</option>
                                            </select> 
                                        </div>    
                                    </div>
                                    <!--1번째 칸 비밀번호 입력 제목 (비밀번호 선택시 이 화면이 보여지도록) -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s" style="margin-top:20px ;">비밀번호(필수)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--1번째 칸 비밀번호 입력 칸 (비밀번호 선택시 이 화면이 보여지도록) -->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input type="text" class= "homepass" name="homepass1" id="homepass1" placeholder="공동현관비밀번호" required>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="email" class= "homepass" name="homepass1" id="homepass2" placeholder="집현관비밀번호" required>
                                        </div>
                                    </div>
                                    <!-- 1번째 칸 직접만남 제목(직접만남선택시 이 화면이 보여지도록) -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s" style="margin-top:25px ;">직접만남(필수)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 1번째 칸 직접만남 입력칸(직접만남선택시 이 화면이 보여지도록) -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea name="message" id="message" placeholder="대면만남시 특이사항 기입(필수)" rows="5"></textarea>
                                        </div>
                                    </div>  
                                </div> 
                                <!-- 1번째 칸 wrapper 끝 -->
                            </div>
                            <!-- 1번째 칸 row 끝 -->
                        </div>
                        <!-- 1번째 칸 끝 -->
                        
                        <!-- 2번째 칸 -->
                        <div class="col-md-4"> 
                            <!-- 2번째 칸 row -->
                            <div class="row"> 
                                <!-- 2번째 칸 wrapper -->
                                <div class="contact-form-wrapper">
                                    <!-- 2번째 칸 주차여부 제목 -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">주차여부(필수)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 2번째 칸 주차여부 입력 -->    
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="parking" placeholder="펫시터가 방문할 시의 주차가능여부, 주차장소 등의 정보를 기입해주세요(필수)" rows="5"></textarea>
                                        </div>
                                    </div>
                                <!-- <form action="assets/php/mail.php" class="contact-form"> -->
                                    <!-- 2번째 칸 용품위치 제목 -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">용품위치(필수)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 2번째 칸 용품위치 입력 -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="feed" placeholder="펫시터님이 반려동물을 위해 사용할 용품들의 위치를 알려주세요(필수)" rows="5"></textarea>
                                        </div>
                                    </div>
                                <!-- </form> -->
                                </div>
                                <!-- 2번째칸 wrapper -->
                            </div>
                            <!-- 2번째칸 row -->
                        </div>  
                        <!-- 2번째 칸 -->
                        
                        <!-- 3번째 칸 -->
                        <div class="col-md-4"> 
                            <!-- 3번째 칸 row -->
                            <div class="row">   
                                <!-- 3번째 칸 wrapper -->
                                <div class="contact-form-wrapper">
                                    <!-- 3번째 칸 배변쓰레기 제목 -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">배변 및 쓰레기 버리는법</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3번째 칸 배변쓰레기 입력 -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="clean" placeholder="" rows="5"></textarea>
                                        </div>
                                    </div>
                                <!-- <form action="assets/php/mail.php" class="contact-form"> -->
                                    
                                    <!-- 3번째 칸 비상연락처 제목 -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">비상연락처</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3번째 칸 비상연락처 입력 -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="emergency" placeholder="" rows="5"></textarea>
                                        </div>
                                    </div>
                                    
                                    <!-- 3번째칸 다음 버튼 -->
                                    <!-- <div class="row">
                                        <div class="col-12">
                                            <div class="button text-center">
                                                <button type="submit" class="theme-btn">다음</button>
                                            </div>
                                        </div>
                                    </div> -->

                                </div>
                                <!-- 3번째 칸 wrapper -->
                            </div>
                                <!--3번째 칸 row  -->
                        </div>
                            <!--3번째 칸  -->
                    </div>
                    <!-- 전체 row끝  -->

                    <!-- 이전버튼 -->
                        <div >
                            <div class="button text-center">
                                <button type="submit" class="theme-btn" onclick="location.href='/pet/menu/reserve/resv1_mb.do'" style="display:inline-block; margin-left:1000px">이전</button>
                                <button type="submit" class="theme-btn" style="display:inline-block; ">다음</button>
                            </div>
                        </div>    
                    

                </form>
                <!-- 전체 form 끝 -->
            </div>
            <!-- 전체 container끝 -->
        </section>
    </body>
</html>
