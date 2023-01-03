<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="ko">
    <head>
        <meta charset="utf-8">
        <title>Pet</title>
    </head>
    <body>
        <!-- ========================= page-banner-section start ========================= -->
        <section class="page-banner-section pt-75 pb-75 img-bg" style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="banner-content">
                            <h2 class="text-white">Pet's Page </h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item" aria-current="page"><a href="/pet/">Home</a></li>
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
                                    <div class="contact-item">
                                        <div class="contact-icon">
                                            <i class="lni lni-phone"></i>
                                        </div>
                                        <div class="contact-content">
                                            <h4>연락처</h4>
                                            <p>0984537278623</p>
                                            <p>yourmail@gmail.com</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-xl-12">
                                    <div class="contact-item">
                                        <div class="contact-icon">
                                            <i class="lni lni-map-marker"></i>
                                        </div>
                                        <div class="contact-content">
                                            <h4>주소</h4>
                                            <p>서울시 종로구</p>
                                            <p>대한민국</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-xl-12">
                                    <div class="contact-item">
                                        <div class="contact-icon">
                                            <i class="lni lni-alarm-clock"></i>
                                        </div>
                                        <div class="contact-content">
                                            <h4>이용시간</h4>
                                            <p>24 Hours / 7 Days Open </p>
                                            <p>10 AM - 5:30 PM</p>
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
                                        <span class="wow fadeInDown" data-wow-delay=".2s">XXX님, 안녕하세요!</span>
                                        <h2 class="wow fadeInUp" data-wow-delay=".4s">반려동물의 정보를 입력하고<br> 수정해주세요</h2>
                                        <!-- <p class="wow fadeInUp" data-wow-delay=".6s">언제든지 열려있습니다. </p> -->
                                        
                                    </div>
                                </div>
                            </div>
                            <form action="assets/php/mail.php" class="contact-form">
                                <!-- <img src="assets/img/dog.jpg" class="rounded float-center" alt="" width="30%"><h4>사진등록</h4> -->
                                <div style="display: flex; position: relative;"><a href=""><img src="assets/img/dog.jpg"
                                   style="width: 100px; height: 100px; border-radius: 50%; object-fit: cover;" ></a>
                           </div>
                                <div>
                                    <label for="prod1">반려동물 종류</label>
                                     <select id="prod1">
                                         <option value="dog" selected>강아지</option>
                                         <option value="mdog" selected>강아지(중)</option>
                                         <option value="bdog" selected>강아지(대)</option>
                                         <option value="cat" selected>고양이</option>

                                     </select>
                                     <br> 
                                     
                                </div><br>
                            

                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" name="name" id="name" placeholder="이름" required>
                                    </div>
                                </br>
                                
                                <div>                        
                                    <fieldset>
                                           <legend>성별</legend>
                                                <div class="row">
                                                    <div class="col-1">
                                                        <div>
                                                            <input type="radio" id="gender_m" name="gender" value="m" required>   
                                                            <input type="radio" id="gender_w" name="gender" value="w" required>
                                                                                        
                                                        </div>
                                                    </div>
                                                    <div class="col-11" style="margin-left: -20px;">
                                                        <div>
                                                            <label for="gender_m" style="display:inline-block">남자아이</label>
                                                        </div>
                                                        <div class="col-11" style="margin-left:-2px;"  >
                                                            <div style="padding-top: 17px;">
                                                            <label for="gender_w" style="display:inline-block">여자아이</label> 
                                                        </div>
                                                    </div>
                                                    </div>
                                                </div>            
                                    </fieldset>
                                </div>     
                                 <!-- 남자아이 -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" name="birth" id="birth" placeholder="생일" required>
                                        <input type="text" name="kind" id="kind" placeholder="품종" required>
                                        <input type="text" name="detailkind" id="dkind" placeholder="상세품종" required>
                                    </div>

                                    <div class="col-md-6">
                                        <input type="text" name="weight" id="weight" placeholder="몸무게" required>
                                        <input type="text" name="height" id="height" placeholder="크기" required>
                                    </div>

                                    <div>                        
                                        <fieldset>
                                           <legend>중성화</legend>
	                                             <div class="row">
	                                                 <div class="col-1">
	                                                     <div>
	                                                         <input type="radio" id="neutral_y" name="neutral" value="yes" required>   
	                                                         <input type="radio" id="neutral_n" name="neutral" value="no" required>
	                                                                                     
	                                                     </div>
	                                                 </div>
	                                                 <div class="col-11" style="margin-left: -20px;">
	                                                     <div>
	                                                         <label for="neutral_y" style="display:inline-block">중성화 했어요</label>
	                                                     </div>
	                                                     <div class="col-11" style="margin-left:-2px;"  >
	                                                         <div style="padding-top: 17px;">
	                                                         <label for="neutral_n" style="display:inline-block">아직 안했어요</label> 
	                                                     </div>
	                                                 </div>
	                                                 </div>
	                                             </div>            
                                        </fieldset>
                                    </div>   
                                <p> </p>
                                <div class="col-md-6">
                                    <input type="text" name="phospital" id="phospital" placeholder="동물병원 주소" required>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <h4>기타 참고사항</h4>
                                        <textarea name="message" id="message" placeholder="기타 참고사항" rows="5">
                                        </textarea>
                                    </div>
                                </div>
                            </div>
                            <br/>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="button text-center">
                                            <button type="submit" class="theme-btn">등록/수정</button>
                                            <button type="submit" class="theme-btn">삭제</button>
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
