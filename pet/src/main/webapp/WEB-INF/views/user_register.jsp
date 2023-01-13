<%@page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
	<meta charset="utf-8">
	<title>register</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<style type="text/css">
		#member_id_result {
			color: red;
		}
	</style>
</head>
<body>
	<!-- ========================= pricing-section start ========================= -->
	<section id="pricing" class="pricing-section pt-140 pb-100">
	    <div class="container">
	        <div class="row">
	            <div class="col-xl-12">
	                <div class="pricing-btn text-center wow fadeInUp" data-wow-delay=".3s">
	                    <ul class="nav justify-content-center mb-90" id="pills-tab" role="tablist">
	                        <li class="nav-item">
	                            <a class="nav-link active" id="pills-1-tab" data-bs-toggle="pill" href="#pills-1" role="tab" aria-controls="pills-1" aria-selected="true">Client</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" id="pills-2-tab" data-bs-toggle="pill" href="#pills-2" role="tab" aria-controls="pills-2" aria-selected="false">Sitter</a>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	        
	        <!-- client start -->
	        <div class="tab-content" id="pills-tabContent">
	            <div class="tab-pane fade show active" id="pills-1" role="tabpanel" aria-labelledby="pills-home-tab">
	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12">
                   	  	 	<!-- 일반 사용자 -->
	                        <div class="single-pricing active mb-50">
	                            <div class="contact-form-wrapper">
	                            	 <!-- 일반 사용자 --> 
					                 <div class="row">
					                     <div class="col-xl-10 col-lg-8 mx-auto">
					                         <div class="section-title text-center mb-50">
					                             <span class="wow fadeInDown" data-wow-delay=".2s">일반사용자</span>
					                             <h2 class="wow fadeInUp" data-wow-delay=".4s">회원가입</h2>
					                         </div>
					                     </div>
					                </div>
					                
					                <!-- form start -->
					                <div class="container row col-12">
					                <div class="container row col-3"></div>
					                <div class="container row col-8">
					                <form action="/pet/erp/user/insert.do" class="contact-form" method="post">
					                	  <!-- member_id start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>아이디</h4></div>
					                          <div class="col-md-auto">
					                              <input type="text" name="member_id" id="member_id" placeholder="아이디" required="required" value="${member.member_email }">
					                          </div>
					                          <div class="col-md-auto" id="member_id_result"></div>
					                      </div>
					                	  <!-- member_pass start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>비밀번호</h4></div>
					                          <div class="col-md-4">
					                              <input type="password" name="member_pass" id="member_pass" placeholder="비밀번호" required="required" value="">
					                          </div>
					                      </div>
					                	  <!-- member_name start -->
					                       <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>성함</h4></div>
					                          <div class="col-md-4">
					                              <input type="text" name="member_name" id="member_name" placeholder="ex) 오승영" required value="${member.member_name }">
					                          </div>
					                      </div>
					                	  <!-- member_email start -->
					                       <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>이메일</h4></div>
					                          <div class="col-md-auto">
					                              <input type="email" name="member_email" id="member_email" placeholder="ex) ohsy94@gmail.com" required value="${member.member_email }">
					                          </div>
					                      </div>
					                	  <!-- member_birthday start -->
<!-- 					                      <div class="row align-items-center"> -->
<!-- 					                      	  <div class="col-md-auto"><h4>생일</h4></div> -->
<!-- 					                          <div class="col-md-4"> -->
<%-- 					                              <input type="date" name="member_id" id="member_id" placeholder="ex) 2020-10-25" required value="${member.member_birthdate }"> --%>
<!-- 					                          </div> -->
<!-- 					                      </div> -->
					                	  <!-- member_gender start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>성별</h4></div>
					                          <div class="col-md-auto">
					                            <div class="form-check form-check-inline" style="display: inline-flex;align-items:center;padding-left: 20px; // Override base .form-check  margin-right: $form-check-inline-margin-x;">
													<input class="form-check-input" type="radio" name="member_gender" id="member_genderM" value="M" checked style="{width:50px; position: static;margin-top: 0;margin-right: $form-check-inline-input-margin-x;margin-left: 0;}">
													<label class="form-check-label" for="member_genderM" style="width: 50px">남자</label>
												</div>
					                            <div class="form-check form-check-inline" style="display: inline-flex;align-items:center;padding-left: 20px; // Override base .form-check  margin-right: $form-check-inline-margin-x;">
													<input class="form-check-input" type="radio" name="member_gender" id="member_genderW" value="W" style="{width:50px; position: static;margin-top: 0;margin-right: $form-check-inline-input-margin-x;margin-left: 0;}">
													<label class="form-check-label" for="member_genderW" style="width: 50px">여자</label>
												</div>
					                          </div>
					                      </div>
					                	  <!-- member_phone start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>연락처</h4></div>
					                          <div class="col-md-4">
					                              <input type="text" name="member_phone" id="member_phone" placeholder="000-0000-0000" required>
					                          </div>
					                      </div>
					                	  <!-- member_addr start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>주소</h4></div>
					                          <div class="col-md-auto">
					                              <input type="text" name="member_addr1" id="addr1" placeholder="경기도 파주시 책향기로 371" required>
					                          </div>
					                          <div class="col-md-3">
					                              <input type="text" name="member_addr2" id="addr2" placeholder="611동 204호" required>
					                          </div>
					                      </div>
					                      
					                      <!-- hidden start -->
				                      	  <input name="user_type" id="user_type" type="hidden" value="M">
				                      	  <input name="member_status" id="member_status" type="hidden" value="Y">
										  <!-- hidden end -->
										  
										  <!-- 비밀번호 없는데 로그인 어떻게 하지? -->
					                      
					                      <!-- button -->
					                      <div class="pt-50">
				                             <button type="submit" class="theme-btn">확인</button>
			                              </div>
			                              <!-- button -->
				                 	</form>
        						    <!-- form end -->
				                 </div>
	                        </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            </div>
	            <!-- client end -->
	            
	            <!-- sitter start -->
	            <div class="tab-pane fade" id="pills-2" role="tabpanel" aria-labelledby="pills-2-tab">
	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12">
                    	  	<!-- 펫시터 -->
	                        <div class="single-pricing active mt-50 mb-50">
	                            <div class="contact-form-wrapper">
					                 <div class="row">
					                     <div class="col-xl-10 col-lg-8 mx-auto">
					                         <div class="section-title text-center mb-50">
					                             <span class="wow fadeInDown" data-wow-delay=".2s">펫시터</span>
					                             <h2 class="wow fadeInUp" data-wow-delay=".4s">회원가입</h2>
					                         </div>
					                     </div>
					                </div>
					                
					                
					                <!-- form start -->
					                <div class="container row col-12">
					                <div class="container row col-3"></div>
					                <div class="container row col-8">
					                <form action="/pet/erp/sitter/insert.do" class="contact-form" method="post">
					                	  <!-- id start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>아이디</h4></div>
					                          <div class="col-md-4">
					                              <input type="text" name="sitter_id" id="sitter_id" placeholder="아이디" required="required" value="${member.member_email }">
					                          </div>
					                      </div>
					                	  <!-- pass start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>비밀번호</h4></div>
					                          <div class="col-md-4">
					                              <input type="password" name="sitter_pass" id="sitter_pass" placeholder="비밀번호" required="required" value="1234">
					                          </div>
					                      </div>
					                	  <!-- member_no start -->
					                       <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>성함</h4></div>
					                          <div class="col-md-4">
					                              <input type="text" name="sitter_name" id="sitter_name" placeholder="ex) 오승영" required value="${member.member_name }">
					                          </div>
					                      </div>
					                	  <!-- member_email start -->
					                       <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>이메일</h4></div>
					                          <div class="col-md-auto">
					                              <input type="email" name="sitter_email" id="sitter_email" placeholder="ex) ohsy94@gmail.com" required value="1234@naver.com">
					                          </div>
					                      </div>
					                	  <!-- member_birthday start -->
<!-- 					                      <div class="row align-items-center"> -->
<!-- 					                      	  <div class="col-md-auto"><h4>생일</h4></div> -->
<!-- 					                          <div class="col-md-4"> -->
<%-- 					                              <input type="date" name="member_id" id="member_id" placeholder="ex) 2020-10-25" required value="${member.member_birthdate }"> --%>
<!-- 					                          </div> -->
<!-- 					                      </div> -->
					                	  <!-- sitter_gender start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>성별</h4></div>
					                          <div class="col-md-auto">
					                            <div class="form-check form-check-inline" style="display: inline-flex;align-items:center;padding-left: 20px; // Override base .form-check  margin-right: $form-check-inline-margin-x;">
													<input class="form-check-input" type="radio" name="sitter_gender" id="sitter_genderM" value="M" checked style="{width:50px; position: static;margin-top: 0;margin-right: $form-check-inline-input-margin-x;margin-left: 0;}">
													<label class="form-check-label" for="sitter_genderM" style="width: 50px">남자</label>
												</div>
					                            <div class="form-check form-check-inline" style="display: inline-flex;align-items:center;padding-left: 20px; // Override base .form-check  margin-right: $form-check-inline-margin-x;">
													<input class="form-check-input" type="radio" name="sitter_gender" id="sitter_genderW" value="W" style="{width:50px; position: static;margin-top: 0;margin-right: $form-check-inline-input-margin-x;margin-left: 0;}">
													<label class="form-check-label" for="sitter_genderW" style="width: 50px">여자</label>
												</div>
					                          </div>
					                      </div>
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>종류</h4></div>
					                          <div class="col-md-auto">
					                            <div class="form-check form-check-inline" style="display: inline-flex;align-items:center;padding-left: 20px; // Override base .form-check  margin-right: $form-check-inline-margin-x;">
													<input class="form-check-input" type="radio" name="sitter_code" id="sitter_codeD" value="D" checked style="{width:50px; position: static;margin-top: 0;margin-right: $form-check-inline-input-margin-x;margin-left: 0;}">
													<label class="form-check-label" for="sitter_codeD" style="width: 100px">강아지</label>
												</div>
					                            <div class="form-check form-check-inline" style="display: inline-flex;align-items:center;padding-left: 20px; // Override base .form-check  margin-right: $form-check-inline-margin-x;">
													<input class="form-check-input" type="radio" name="sitter_code" id="sitter_codeC" value="C" style="{width:50px; position: static;margin-top: 0;margin-right: $form-check-inline-input-margin-x;margin-left: 0;}">
													<label class="form-check-label" for="sitter_codeC" style="width: 100px">고양이</label>
												</div>
					                            <div class="form-check form-check-inline" style="display: inline-flex;align-items:center;padding-left: 20px; // Override base .form-check  margin-right: $form-check-inline-margin-x;">
													<input class="form-check-input" type="radio" name="sitter_code" id="sitter_codeA" value="A" style="{width:50px; position: static;margin-top: 0;margin-right: $form-check-inline-input-margin-x;margin-left: 0;}">
													<label class="form-check-label" for="sitter_codeA" style="width: 50px">모두</label>
												</div>
					                          </div>
					                      </div>
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>생일</h4></div>
					                          <div class="col-md-4">
					                              <input type="text" name="sitter_birthdate" id="sitter_birthdate" placeholder="ex) 2000-01-01" required value="2000-01-01">
					                          </div>
					                      </div>
					                	  <!-- sitter_phone start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>연락처</h4></div>
					                          <div class="col-md-4">
					                              <input type="text" name="sitter_phone" id="sitter_phone" placeholder="000-0000-0000" required value="000-0000-0000">
					                          </div>
					                      </div>
					                	  <!-- sitter_addr start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>주소</h4></div>
					                          <div class="col-md-auto">
					                              <input type="text" name="sitter_addr1" id="siaddr1" placeholder="경기도 파주시 책향기로 371"value="경기도 파주시 책향기로 371" required>
					                          </div>
					                          <div class="col-md-3">
					                              <input type="text" name="sitter_addr2" id="siaddr2" placeholder="611동 204호" value="371-111"required>
					                          </div>
					                      </div>
				                          <!-- service area start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>서비스 제공 구역</h4></div>
					                          <div class="col-md-12">
					                              <input type="text" name="service_area" id="service_area" placeholder="서울특별시 서대문구, 서울특별시 은평구, 3개 까지 등록 가능" required value="서울특별시 서대문구">
					                          </div>
					                      </div>
					                      <!-- sitter_intro start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>자기 소개</h4></div>
					                          <div class="col-md-12">
					                              <input type="text" name="sitter_info" id="sitter_info" placeholder="다른 사람들에게 보여질 자기 소개를 적어주세요!" required value="다른 사람들에게 보여질 자기 소개를 적어주세요!">
					                          </div>
					                      </div>
					                      <!-- sitter_photo start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>프로필 사진</h4></div>
					                          <div class="col-md-auto">
					                              <input type="text" name="sitter_photo" id="sitter_photo" placeholder="test">
					                          </div>
					                      </div>
					                      <!-- sitter_certificate start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>자격증 등록</h4></div>
					                          <div class="col-md-auto">
					                              <input type="text" name="sitter_certificate" id="sitter_certificate" placeholder="test">
					                          </div>
					                      </div>
					                      <!-- sitter_지원서 start -->
					                      <div class="row align-items-center">
					                      	  <div class="col-md-auto"><h4>추가 서류 작성</h4></div>
					                          <div class="col-md-auto">
					                              <a type="button" class="thema-btn" class="page-scroll" target="_blank" href="https://docs.google.com/forms/d/1Gxm7aSqZRTbJ8SvTCeD2HRxpetM5g_0lqyLEmYeYfX4/edit">펫시터 지원</a>
					                          </div>
					                      </div>
					                    
					                      <!-- hidden start -->
				                      	  <input name="user_type" id="user_type_s" type="hidden" value="S">
				                      	  <input name="sitter_status" id="sitter_status" type="hidden" value="Y">
				                      	  <input name="valid" id="valid" type="hidden" value="N">
										  <!-- hidden end -->
										  
					                      <!-- button -->
					                      <div class="pt-50">
				                             <button type="submit" class="theme-btn">확인</button>
			                              </div>
			                              <!-- button -->
				                 	</form>
				                 	</div>
        						    <!-- form end -->
                   				</div>
	                		</div>
               			</div>
	                </div>
	            </div>
	            <!-- sitter end -->
	            
	        </div>
	    </div>
	    </div>
	</section>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	document.getElementById("addr1").addEventListener("click", function() {
		new daum.Postcode({
			oncomplete: function(data) {
	        document.getElementById("addr1").value = data.address;
	        document.querySelector("input[id=addr2]").focus();
	        }
	    }).open();
	});
	
	document.getElementById("siaddr1").addEventListener("click", function() {
		new daum.Postcode({
			oncomplete: function(data) {
	        document.getElementById("siaddr1").value = data.address;
	        document.querySelector("input[id=siaddr2]").focus();
	        }
	    }).open();
	});
	
	$(document).ready(function() {
		$("#member_id").on("keyup", function() {
			var member_id = {"member_id":$("#member_id").val()};
			$.ajax({
				url: "/pet/erp/member/idCheck.do",
				type: "get",
				data: member_id,
				success: success_run,
				error: error_run
			})
		})
	})
	function success_run(msg){
		$("#member_id_result").html("<p>" + msg + "</p>")
	}
	
	function error_run(obj, msg, statusMsg) {
		alert("오류발생 → " + obj + ", " + msg + ", " + statusMsg)
	}
		
  
</script>
</html>
