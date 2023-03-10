<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
    <meta charset="utf-8">
    <title>resv1_mb</title>
    <style>
          select {
          border-radius: 25px;
            
          border: 1px solid #F4EEFB;
          transition: all 0.3s ease-out 0s;    
          width: 300px; 
          height: 60px;
          padding: .8em .5em; 
          margin-bottom: 25px;
          margin-top: 15px;
          /* border: 1px solid #999; */
          

          font-family: inherit;  
          background: url('arrow.jpg') no-repeat 95% 50%; 
          
          -webkit-appearance: none; 
          -moz-appearance: none;
          appearance: none;

          padding: 0.6em 1.4em 0.5em 0.8em;
          }
          
          .homepass{
              font-size: 13px;
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
             margin-left: 180px;
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

          .form_check_btn {
	width: 80%;
          display: inline-block;
	height : 45px;
  		border: 1px solid #EAE7E7;
  		border-radius: 30px;
          margin:auto;
          margin-bottom: 20px;
}
.form_check_btn input[type=checkbox] {
	display: none;
}
.form_check_btn label {
	display: block;
  		border-radius: 30px;
 			margin: 0 auto;
  		text-align: center;
  		height: -webkit-fill-available;
  		line-height: 45px;
}
 
/* Checked */
.form_check_btn input[type=checkbox]:checked + label {
	background: #3763ec;
	color: #fff;
          
}
 
/* Hover */
.form_check_btn label:hover {
	color: #666;
}
 
/* Disabled */
.form_check_btn input[type=checkbox] + label {
	background: #F9FAFC;
	color: #666;
}
      
      input[type="checkbox"]:checked + label {
          background:#3763ec ;
      }


      .form_radio_btn {
	width: 80%;
          display: inline-block;
	height : 45px;
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
  		line-height: 45px;
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
      
      input[type="radio"]:checked + label {
          background:#3763ec ;
      }

      #date{
          border: 1px solid #F4EEFB;
          border-radius: 25px;
          padding: .8em .5em;     
          width: 350px;
          margin-top: 10px;  
          margin-bottom:30px;
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
            <!-- ?????? container -->
            <div class="container">
                <!-- ?????? form -->
                <form action="/pet/menu/reserve/resv2_mb.do" class="contact-form">
                    <!-- ?????? row -->
                    <div class="row">

                        <!-- 1?????? ??? -->
                        <div class="col-md-4"> 
                            <!-- 1?????? ??? row -->
                            <div class="row"> 
                                <!-- 1?????? ??? wrapper -->                    
                                <div class="contact-form-wrapper">

                                    <!-- 1?????? ??? ???????????? ?????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20" >
                                                <span class="wow fadeInDown" data-wow-delay=".2s">???????????? ??????</span>
                                            </div>
                                        </div>
                                        <span class="wow fadeInDown" data-wow-delay=".2s" style="margin-bottom: 30px; font-weight: bold;">??????????????? ??? ???????????? ????????? ???????????????.<br>
                                                                                            ??? ??????(+10,000???), ??? ??????(+20,000)</span>
                                    </div>
                                    <!-- 1?????? ??? ???????????? ?????? ?????? -->
                                    <div class="row">
                                        <div class="col-12" style="margin-bottom: 15px; font-size: 20px;">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <input type="checkbox" name="pet" >???????????? ????????????1  
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="checkbox" name="pet" >???????????? ????????????2
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="checkbox" name="pet" >???????????? ????????????3
                                                </div>
                                            </div>
                                        </div>                                              
                                    </div>

                                    <!-- 1?????? ??? ??????/?????? ?????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s" style="margin-top:20px;" >????????? ??????</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 1?????? ??? ??????/?????? ?????? ?????? -->
                                    <div  class="row">
                                        <div class="mb-3">
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >
                                                <div class="form_check_btn radio_male">
                                                    <input id="check-1" type="checkbox" name="servicecode" checked onClick="return false;">
                                                    <label for="check-1">[??????]??????(25,000???)</label>
                                                </div>
                                            </div> 
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >                
                                                <div class="form_check_btn">
                                                    <input id="check-2" type="checkbox" name="servicecode" >
                                                    <label for="check-2">[??????]??????(+5,000???)</label>
                                                </div>
                                            </div>
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >                
                                                <div class="form_check_btn">
                                                    <input id="check-3" type="checkbox"  name="servicecode">
                                                    <label for="check-3">[??????]??????(+3,000???)</label>
                                                </div>
                                            </div>
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >                
                                                <div class="form_check_btn">
                                                    <input id="check-4" type="checkbox" class="servicecode">
                                                    <label for="check-4">[??????]??????(+5,000???)</label>
                                                </div>
                                            </div>
                                        </div>                                              
                                    </div>

                                    <!-- 1?????? ??? ?????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s" style="margin-top:25px ;">????????? ?????? ?????? ??????</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 1?????? ??? ?????? ?????? -->
                                    <div  class="row">
                                        <div class="mb-3">
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >
                                                <div class="form_radio_btn radio_male">
                                                    <input id="radio-5" type="radio" name="howtomatch"  >
                                                    <label for="radio-5">????????????</label>
                                                </div>
                                            </div> 
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >                
                                                <div class="form_radio_btn">
                                                    <input id="radio-6" type="radio" name="howtomatch" value="female">
                                                    <label for="radio-6">????????? ???????????? ????????? ?????????</label>
                                                </div>
                                            </div>
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >       
                                                <div class="form_radio_btn">
                                                    <input id="radio-7" type="radio" name="howtomatch" value="female">
                                                    <label for="radio-7">????????????</label>
                                                </div>
                                            </div> 
                                        </div>                                              
                                    </div>

                                </div>
                                <!-- 1?????? ??? wrapper ??? -->
                            </div>
                            <!-- 1?????? ??? row ??? -->
                        </div>
                        <!-- 1?????? ??? ???-->
                
                        <!-- 2?????? ???  ============ -->
                        <div class="col-md-4">
                            <!-- 2?????? ??? row -->
                            <div class="row"> 
                                <!-- 2?????? ??? wrapper -->                    
                                <div class="contact-form-wrapper">
                                    <!-- 2?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">????????????</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 2?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-12">
                                            <label for="date">????????? ??????????????????
                                                <input type="date" id="date">
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <!-- 2?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">????????????</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 2?????? ??? ???????????? ??????=============== -->
                                    <div class="row">
                                        <div class="col-12">
                                        ??????????????? ??????????????????
                                            <select>
                                                <option>?????? 8:00</option>
                                                <option>?????? 9:00</option>
                                                <option>?????? 10:00</option>
                                                <option>?????? 11:00</option>
                                                <option>?????? 12:00</option>
                                                <option>?????? 1:00</option>
                                                <option>?????? 2:00</option>
                                                <option>?????? 3:00</option>
                                                <option>?????? 4:00</option>
                                                <option>?????? 5:00</option>
                                                <option>?????? 6:00</option>
                                                <option>?????? 7:00</option>
                                                <option>?????? 8:00</option>
                                            </select> 
                                        </div>
                                    </div>
                                    <!-- 2?????? ??? ???????????? ??????=============== -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">????????????</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 2?????? ??? ???????????? ??????=============== -->
                                    <div class="row">
                                        <div class="col-12">
                                        ??????????????? ??????????????????
                                            <div  class="row" style="margin-top: 15px;" id="servicehour">
                                                <div class="mb-3">
                                                    <div class="form_toggle row-vh d-flex flex-row justify-content-between" >
                                                        <div class="form_radio_btn radio_hour">
                                                            <input id="radio-8" type="radio" name="servicehour"  >
                                                            <label for="radio-8">1??????</label>
                                                        </div>
                                                    </div> 
                                                    <div class="form_toggle row-vh d-flex flex-row justify-content-between" >                
                                                        <div class="form_radio_btn radio_hour">
                                                            <input id="radio-9" type="radio" name="servicehour" >
                                                            <label for="radio-9">2??????</label>
                                                        </div>
                                                    </div>
                                                    <div class="form_toggle row-vh d-flex flex-row justify-content-between" >       
                                                        <div class="form_radio_btn radio_hour">
                                                            <input id="radio-10" type="radio" name="servicehour" >
                                                            <label for="radio-10">3??????</label>
                                                        </div>
                                                    </div> 
                                                </div>                                              
                                            </div> 
                                        </div>
                                    </div>

                                    <!-- </form> -->
                                </div>
                                <!-- 2?????? ??? wrapper -->
                            </div>
                            <!-- 2?????? ??? row -->
                        </div>
                        <!-- 2?????? ??? -->

                        <!-- 3?????? ??? -->
                        <div class="col-md-4"> 
                            <!-- 3?????? ??? row -->
                            <div class="row"> 
                                <!-- 3?????? ??? wrapper -->
                                <div class="contact-form-wrapper">
                                    <!-- 3?????? ??? ???????????? ????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">???????????? ?????????</span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 3?????? ??? ???????????? ????????? ?????? -->
                                    <p style="margin-bottom: 10px;" ><strong>????????????</strong></p>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="resv1_prefergender" >
                                                <div class="form_radio_btn radio_gender">
                                                    <input id="radio-11" type="radio" name="sittergender"  >
                                                    <label for="radio-11">??????</label>
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="col-md-4">
                                            <div class="resv1_prefergender" >
                                                <div class="form_radio_btn radio_gender">
                                                    <input id="radio-12" type="radio" name="sittergender"  >
                                                    <label for="radio-12">??????</label>
                                                </div>
                                            </div>                                         
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >
                                                <div class="form_radio_btn radio_gender">
                                                    <input id="radio-13" type="radio" name="sittergender"  >
                                                    <label for="radio-13">????????????</label>
                                                </div>
                                            </div>                                         
                                        </div>
                                    </div>

                                    <p style="margin-bottom: 10px;" ><strong>????????? ???????????? ?????? ???????????? ??????</strong></p>
                                    <div  class="row">
                                        <div class="mb-3">
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >
                                                <div class="form_radio_btn radio_male">
                                                    <input id="radio-14" type="radio" name="dogsize"  >
                                                    <label for="radio-14">????????? ?????? ????????? ?????? ??????</label>
                                                </div>
                                            </div> 
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >                
                                                <div class="form_radio_btn">
                                                    <input id="radio-15" type="radio" name="dogsize" >
                                                    <label for="radio-15">????????? ?????? ????????? ?????? ??????</label>
                                                </div>
                                            </div>
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >                
                                                <div class="form_radio_btn">
                                                    <input id="radio-16" type="radio" name="dogsize" >
                                                    <label for="radio-16">????????? ?????? ????????? ?????? ??????</label>
                                                </div>
                                            </div>
                                            <div class="form_toggle row-vh d-flex flex-row justify-content-between" >                
                                                <div class="form_radio_btn">
                                                    <input id="radio-17" type="radio" name="dogsize">
                                                    <label for="radio-17">????????????</label>
                                                </div>
                                            </div>
                                        </div>                                              
                                    </div>

                                    <!-- 3?????? ??? ????????? ?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-xl-10 col-lg-8 mx-auto">
                                            <div class="section-title text-center mb-20" style="margin-top:50px">
                                                <span class="wow fadeInDown" data-wow-delay=".2s">?????? ??? ?????? ??? ????????????</span>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 3?????? ??? ????????? ?????? ??? ???????????? ?????? -->
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea class="message" name="message" id="emergency" placeholder="" rows="10"></textarea>
                                        </div>
                                    </div>
                                    

                                </div>
                                <!-- 3?????? ??? wrapper ??? -->
                            </div>
                            <!-- 3?????? ??? row ??? -->
                        </div>
                        <!-- 3?????? ??? ???  -->
                    </div>
                    <!-- ?????? row ??? -->

                    <!-- ???????????? -->
                        <div class="col-12">
                            <div class="button text-center">
                                <button type="submit" class="theme-btn" onclick="location.href='/pet/menu/reserve/resv2_mb.do'" style="margin-left: 1150px;">??????</button>
                                
                            </div>
                        </div>
                    </div>
                </form>
                <!-- ?????? form ??? -->
            </div>
            <!-- ?????? container ??? -->  
        </section>
        <script type="text/javascript">
            var today = new Date();
            console.log(document.getElementById("date"));
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!
            var yyyy = today.getFullYear();

            if (dd < 10) {
            dd = '0' + dd;
            }

            if (mm < 10) {
            mm = '0' + mm;
            } 
                
            today = yyyy + '-' + mm + '-' + dd;
            document.getElementById("date").setAttribute("min", today);
        </script> 
    </body>
</html>
