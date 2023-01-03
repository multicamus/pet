<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
    <meta charset="utf-8">
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
        
        <!-- ========================= 펫시터 매칭-section start ========================= -->
<section id="pricing" class="pricing-section pt-50">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-10 mx-auto">
                <div class="section-title text-center mb-60">
                    <h2 class="wow fadeInUp" data-wow-delay=".4s">펫시터 매칭 방법 선택</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="pricing-btn text-center wow fadeInUp" data-wow-delay=".3s">
                    <ul class="nav justify-content-center mb-90" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-1-tab" data-bs-toggle="pill" href="#pills-1" role="tab" aria-controls="pills-1" aria-selected="true">직접 선택</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-2-tab" data-bs-toggle="pill" href="#pills-2" role="tab" aria-controls="pills-2" aria-selected="false">자동 매칭</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-3-tab" data-bs-toggle="pill" href="#pills-3" role="tab" aria-controls="pills-3" aria-selected="false">과거에 이용했던 펫시터</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-1" role="tabpanel" aria-labelledby="pills-home-tab">
                <div class="single-pricing active mb-50">
                    <div class="row justify-content-center">
                  		<div class="col-lg-4">
                            <h3>선호하는 펫시터</h3>
                            <h4>성별</h4>
                            	<select>
                            		<option>남자</option>
                            		<option>여자</option>
                            		<option>상관 없음</option>
                            	</select>
                            <h4>돌봄 경험 횟수</h4>
                            	<select>
                            		<option>소형견 돌봄 경험이 많은 사람</option>
                            		<option>중형견 돌봄 경험이 많은 사람</option>
                            		<option>대형견 돌봄 경험이 많은 사람</option>
                            		<option>상관 없음</option>
                            	</select>
                            <form>
                           		<a href="javascript:void(0)" class="theme-btn" style="margin-left: 0px;">확인</a>
                           	</form>
                           	<p>펫시터분들을 확인해보세요!</p>
						</div>
						
                  		<div class="col-lg-8 row align-self-center">
                  		
	                  		<div class="col-lg-4">
		                  		<div class="card">
									  <img src="/pet/resources/assets/images/1.jpg" class="card-img-top" alt="...">
									  <div class="card-body">
									    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									  </div>
								</div>
							</div>
							
							<div class="col-lg-4">
		                  		<div class="card">
									  <img src="/pet/resources/assets/images/3.gif" class="card-img-top" alt="...">
									  <div class="card-body">
									    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									  </div>
								</div>
							</div>
							
							<div class="col-lg-4">
		                  		<div class="card">
									  <img src="/pet/resources/assets/images/4.png" class="card-img-top" alt="...">
									  <div class="card-body">
									    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									  </div>
								</div>
							</div>
							
						</div>
                   
                    </div>
                    
                </div>
            </div>
        
            <div class="tab-pane fade" id="pills-2" role="tabpanel" aria-labelledby="pills-2-tab">
                <div class="single-pricing active mb-50">
                        <div class="row">
                            <div class="col-4 justify-content-center">
                            <h3>선호하는 펫시터</h3>
                            <h4>성별</h4>
                            	<select>
                            		<option>남자</option>
                            		<option>여자</option>
                            		<option>상관 없음</option>
                            	</select>
                            <h4>돌봄 경험 횟수</h4>
                            	<select>
                            		<option>소형견 돌봄 경험이 많은 사람</option>
                            		<option>중형견 돌봄 경험이 많은 사람</option>
                            		<option>대형견 돌봄 경험이 많은 사람</option>
                            		<option>상관 없음</option>
                            	</select>
                            <form>
                           		<a href="javascript:void(0)" class="theme-btn">확인</a>
                           	</form>
                           	<p>펫시터분들을 확인해보세요!</p>
						</div>
						
                  		<div class="col-8 justify-content-center">
                            <h3>이용자</h3>
                            <h4>$25.99</h4>
                            <ul>
                                <li>30 Users</li>
                                <li>Minimal Report</li>
                                <li>1GB Data Storage</li>
                                <li>7/24 Support</li>
                                <li>Multiple Agents</li>
                            </ul>
						</div>
                    </div>
                </div>
            </div>
            
            <div class="tab-pane fade" id="pills-3" role="tabpanel" aria-labelledby="pills-3-tab">
                <div class="single-pricing active mb-50">
                     <div class="col-lg-12 row align-self-center">
                  		
	                  		<div class="col-lg-4">
	                  			<h4>12월 31일</h4>
		                  		<div class="card">
									  <img src="/pet/resources/assets/images/1.jpg" class="card-img-top" alt="...">
									  <div class="card-body">
									    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									  </div>
								</div>
							</div>
							
							<div class="col-lg-4">
								<h4>1월 4일</h4>
		                  		<div class="card">
									  <img src="/pet/resources/assets/images/3.gif" class="card-img-top" alt="...">
									  <div class="card-body">
									    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									  </div>
								</div>
							</div>
							
							<div class="col-lg-4">
								<h4>1월 7일</h4>
		                  		<div class="card">
									  <img src="/pet/resources/assets/images/4.png" class="card-img-top" alt="...">
									  <div class="card-body">
									    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
									  </div>
								</div>
							</div>
							
						</div>
                </div>
            </div>
            
        </div>
    </div>
</section>
<!-- ========================= 펫시터-section end ========================= -->

	     <!-- 버튼 -->
	     <form>
	         <div class="button text-center pb-50">
        		 <button type="submit" class="theme-btn" formaction="/pet/menu/reserve/resv1_mb.do" style="display:inline-block; margin-left:1000px">이전</button>
            	 <button type="submit" class="theme-btn" formaction="/pet/menu/reserve/resv3_mb.do" style="display:inline-block; margin-left:0px">다음</button>
	         </div>
	     </form>
    </body>
</html>
