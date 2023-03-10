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
                            <h2 class="text-white">????????????</h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item" aria-current="page"><a href="/pet/">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">????????????</li>
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
        <!-- ?????? section -->
        <section class="contact-section pt-130">
            <!-- ?????? ???????????? -->
            <div class="container">
                <!-- ?????? form -->
                <form action="assets/php/mail.php" class="contact-form">
                    <!-- ?????? row -->
                    <div class="row">
                        
                        <!-- 1?????? ??? -->
                        <div class="col-md-4"> 
                            <!-- 1?????? ??? row -->
                            <div class="row"> 
                                <!-- 1?????? ??? wrapper -->
                                <div class="contact-form-wrapper">
                                <!-- <form action="assets/php/mail.php" class="contact-form"> -->
                                    <!-- 1?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">????????????(??????)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 1?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-12" >
                                            <select>
                                                <option>????????????</option>
                                                <option>????????????</option>
                                            </select> 
                                        </div>    
                                    </div>
                                    <!--1?????? ??? ???????????? ?????? ?????? (???????????? ????????? ??? ????????? ???????????????) -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s" style="margin-top:20px ;">????????????(??????)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--1?????? ??? ???????????? ?????? ??? (???????????? ????????? ??? ????????? ???????????????) -->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input type="text" class= "homepass" name="homepass1" id="homepass1" placeholder="????????????????????????" required>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="email" class= "homepass" name="homepass1" id="homepass2" placeholder="?????????????????????" required>
                                        </div>
                                    </div>
                                    <!-- 1?????? ??? ???????????? ??????(????????????????????? ??? ????????? ???????????????) -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s" style="margin-top:25px ;">????????????(??????)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 1?????? ??? ???????????? ?????????(????????????????????? ??? ????????? ???????????????) -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea name="message" id="message" placeholder="??????????????? ???????????? ??????(??????)" rows="5"></textarea>
                                        </div>
                                    </div>  
                                </div> 
                                <!-- 1?????? ??? wrapper ??? -->
                            </div>
                            <!-- 1?????? ??? row ??? -->
                        </div>
                        <!-- 1?????? ??? ??? -->
                        
                        <!-- 2?????? ??? -->
                        <div class="col-md-4"> 
                            <!-- 2?????? ??? row -->
                            <div class="row"> 
                                <!-- 2?????? ??? wrapper -->
                                <div class="contact-form-wrapper">
                                    <!-- 2?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">????????????(??????)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 2?????? ??? ???????????? ?????? -->    
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="parking" placeholder="???????????? ????????? ?????? ??????????????????, ???????????? ?????? ????????? ??????????????????(??????)" rows="5"></textarea>
                                        </div>
                                    </div>
                                <!-- <form action="assets/php/mail.php" class="contact-form"> -->
                                    <!-- 2?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">????????????(??????)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 2?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="feed" placeholder="??????????????? ??????????????? ?????? ????????? ???????????? ????????? ???????????????(??????)" rows="5"></textarea>
                                        </div>
                                    </div>
                                <!-- </form> -->
                                </div>
                                <!-- 2????????? wrapper -->
                            </div>
                            <!-- 2????????? row -->
                        </div>  
                        <!-- 2?????? ??? -->
                        
                        <!-- 3?????? ??? -->
                        <div class="col-md-4"> 
                            <!-- 3?????? ??? row -->
                            <div class="row">   
                                <!-- 3?????? ??? wrapper -->
                                <div class="contact-form-wrapper">
                                    <!-- 3?????? ??? ??????????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">?????? ??? ????????? ????????????</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3?????? ??? ??????????????? ?????? -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="clean" placeholder="" rows="5"></textarea>
                                        </div>
                                    </div>
                                <!-- <form action="assets/php/mail.php" class="contact-form"> -->
                                    
                                    <!-- 3?????? ??? ??????????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">???????????????</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3?????? ??? ??????????????? ?????? -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="emergency" placeholder="" rows="5"></textarea>
                                        </div>
                                    </div>
                                    
                                    <!-- 3????????? ?????? ?????? -->
                                    <!-- <div class="row">
                                        <div class="col-12">
                                            <div class="button text-center">
                                                <button type="submit" class="theme-btn">??????</button>
                                            </div>
                                        </div>
                                    </div> -->

                                </div>
                                <!-- 3?????? ??? wrapper -->
                            </div>
                                <!--3?????? ??? row  -->
                        </div>
                            <!--3?????? ???  -->
                    </div>
                    <!-- ?????? row???  -->

                    <!-- ???????????? -->
                        <div >
                            <div class="button text-center">
                                <button type="submit" class="theme-btn" onclick="location.href='/pet/menu/reserve/resv1_mb.do'" style="display:inline-block; margin-left:1000px">??????</button>
                                <button type="submit" class="theme-btn" style="display:inline-block; ">??????</button>
                            </div>
                        </div>    
                    

                </form>
                <!-- ?????? form ??? -->
            </div>
            <!-- ?????? container??? -->
        </section>
    </body>
</html>
