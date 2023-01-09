<%@page import="multi.com.pet.resv.ResvDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		/* background: url('arrow.jpg') no-repeat 95% 50%;  */
          
          -webkit-appearance: none; 
          -moz-appearance: none;
          appearance: none;

          padding: 0.6em 1.4em 0.5em 0.8em;
          }
          

        font-family: inherit;  
        
        
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
      
      .direct{
          width : 70%;
          height: 10%;
          display: inline-block;
          margin-left: 0px;
          margin-top:0px;
          text-align: center;
          padding-left : 6%;
          padding-top:5%;
          padding-bottom:5%;
          font-size : 80%;
          font-weight:bold;
		  background: linear-gradient(to left, #8a8a8a 0%, #8e8e8e 50.39%, #939393 100%); 
          
      }
      
      .selectsitter{
        background: #303030;
        width : 70%;
      	height: 100%;
      	padding-left : 23%;

      	
      }
      
	#selectspan{
		padding-left : 20%;
	}
      
      #sittername{
      	  font-weight:bold; 
      	  
      }

		.modal{ 
			  position:fixed; 
			  
			  background: rgba(0,0,0,0.8); 
			  top:0; left:0; bottom:0; right:0;
			  display:none;
			}
			
		.modal_content{
		  width:60%; height:80%;
		  background:#fff; border-radius:10px;
		  position: fixed;
			top: 50%;
			left: 50%;
			-webkit-transform: translate(-50%, -50%);
			-moz-transform: translate(-50%, -50%);
			-ms-transform: translate(-50%, -50%);
			-o-transform: translate(-50%, -50%);
			transform: translate(-50%, -50%);
		  
		  /* position:fixed; top:50%; left:50%;
		  margin-top:-100px; margin-left:-200px; */
		  
		   padding:74px 0;
		  line-height:23px; 
		  cursor:pointer;
		  box-sizing:border-box;
		  text-align:center;
		}
		
		.sitterdetail{
			position: fixed;
			left:70%;
			bottom: 6%;
			width: 20%;
			 display: inline-block;
			 text-align: center;
			 margin-left: 0%;
             margin-top: 0px;
              padding-left : 5%;
          padding-top:0%;
          padding-bottom:0%;
          background: #303030;
          font-size: 150%;
          
         
		}
      
      table {
  border: 1px #3e62eb solid;
  font-size: 1.3em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 90%;
  border-collapse: collapse;
  border-radius: 20px;
  overflow: hidden;
  margin-left:auto; 
    margin-right:auto;
}

th {
  text-align: center;
  width: 40%;
}
  
thead {
  font-weight: bold;
  color: #fff;
  background: #3e62eb;
}
  
 td, th {
  padding: 1em .5em;
  vertical-align: middle;
}
  
 td {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #fff;
  width: 60%;
}
      
 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
  }
  
  th {
    text-align: right;
  }
  
  table {
    position: relative; 
    padding-bottom: 0;
    border: none;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
  }
  
  thead {
    float: left;
    white-space: nowrap;
  }
  
  tbody {
    overflow-x: auto;
    overflow-y: hidden;
    position: relative;
    white-space: nowrap;
  }
  
  tr {
    display: inline-block;
    vertical-align: top;
  }
  
  th {
    border-bottom: 1px solid #4061eb;
  }
  
  td {
    border-bottom: 1px solid #e5e5e5;
  }
  
  
  }      

            
      
          </style>
    <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>   
    
    
    <script>
	    
		$(document).ready(function() {
			
			$("#nextbtn").on("click", function(){
				value =  $("#sitter_id").attr("value")
				
			})
			//직접선택에서 선호성별과 돌봄횟수가많은선호사이즈 선택후 확인버튼을 눌렀을 때 옆에 해당 펫시터 리스트 뿌리기
			$("#direct_button").on("click", function(){
				var gender = $("#prefer_gender option:selected").val();
				var size = $("#prefer_size option:selected").val();
				var code = $("#pet_codelist").val()
				
				$.ajax({
					url : "/pet/sitter/ajax/list.do",
					type: "get",
					data : {
						"gender" : gender,
						"size" : size,
						"code" : code
					},
					success:function(data){
						
						mydata = "";
						for(i=0;i<data.length;i++){
							mydata = mydata + 
							"<div class='col-lg-4 cardbox'>"
							+"<div class='card'  style='cursor: pointer;'' id='" + data[i].sitter_id +"card'>"
								  +"<img src='/pet/resources/assets/images/1.jpg' class='card-img-top' alt='...' >"
								  +"<div class='card-body'>"
									    	+"<p class='card-text'>"
									    	+"<span id='sittername'>"
									    	+data[i].sitter_name
									    	+"</span>"
									    	+"</p><br/>"
									    +"<div class=row>"
									    	
									    	+"<div class=col-6>"
											    +"<div  class='detailread' id=" +  data[i].sitter_id+">" 
											    	+"<button type='button' class='theme-btn direct' value='"+data[i].sitter_id+ "' >상세정보</button>"
										    	+"</div>"  
									    	+"</div>"
									    	
									    	+"<div class=col-6>"
										    	+"<div   id='" +  data[i].sitter_id +"select'>" 
										    		+"<button type='button' class='theme-btn direct selectsitter' value='"+data[i].sitter_id+ "'><span id='selectspan'>선택</span></button>"
								    			+"</div>" 
								    		+"</div>"
								    		
							    		 +"</div>"
								  +"</div>"
							+"</div>"
						+"</div>"
						}
						$("#directsitterlist").empty();
						$("#directsitterlist").append(mydata);
						
						$(".detailread").on("click", function(event){
							sitter_id = $(this).attr("id");
							  $.ajax({
								url:"/pet/sitter/ajax/read.do",
								type: "get",
								data: {
									"sitter_id": sitter_id
								},
								success:function(sitter){
									
									sitter_code = sitter.sitter_code;
									if(sitter_code =="D"){
										sitter_code  = "강아지"
									}else if(sitter_code =="C"){
										sitter_code  = "고양이"
									}else{
										sitter_code  = "강아지 고양이"
									}
									
									sitter_gender = sitter.sitter_gender;
									if(sitter_gender == "M"){
										sitter_gender = "남자"
									}else{
										sitter_gender = "여자"
									}
									
								   mydata = "";
								   mydata = mydata + "<h3 style='margin-bottom: 10%; color:#3e62eb;'>펫시터 상세정보</h3>";
							       mydata = mydata + "<table><thead><tr>"  
							       mydata = mydata +"<th>이름</th><td style='color:black;'>"+sitter.sitter_name+"</td></tr></thread>";
							       mydata = mydata +"<tr><th>만 나이</th><td style='color:black;'>"+sitter.sitter_age+"</td></tr>";
							       mydata = mydata +"<tr><th>성별</th><td style='color:black;'>"+sitter_gender+"</td></tr>";
							        mydata = mydata +"<tr><th>사는 지역</th><td style='color:black;'>"+sitter.sitter_shortAddr+"</td></tr>";
							        mydata = mydata +"<tr><th>돌봄가능 반려동물종</th><td style='color:black;'>"+sitter_code+"</td></tr>";
							        mydata = mydata +"<tr><th>자기소개</th><td style='color:black;'>"+sitter.sitter_info+"</td></tr></table>";  
							        
							        $("#detailcontent").empty();
							        $("#detailcontent").append(mydata);
							        
								},
								error:function(data){
									
								}
							})
							$(".modal").fadeIn();
						})
						
						
						
						$(".selectsitter").on("click", function(){
							//새로 누르기 바로 직전에 선택했던 시터카드 id값 불러오기
							preCardId = "#"+$(".card[selected=selected]").attr("id");
							
							$(".card").css("border-color", ''); 
							
							//현재 선택한 시터의 id
							id = $(this).attr("value")
							//cardid는 (sitter의 id+card)
							cardId = "#"+ id + "card";
							
							//만약 지금눌렀던 시터가 이전에 눌렀던 시터와 같다면
							if(cardId == preCardId){
								//selected속성과 테두리속성을 해제시킨다
								$(".card").css("border-color", '');
								$(".card").removeAttr("selected");
								//input태그의 sitter_id의 value값을 초기화시킨다
								$("#sitter_id").attr("value", "");
							}else{//이전눌렀던 시터와 다른 시터를 누른다면 테두리css속성 적용, input value값에 해당 id입력
							    //기존의 selected속성과 테두리속성을 모두 해제시킨다.
								$(".card").css("border-color", '');
								$(".card").removeAttr("selected");
								//현재 누른 카드에 selected속성과 테두리css를 적용시킨다.
								$(cardId).attr("selected", "selected");
								$(cardId).css("border-color", "#3763eb");
								$(cardId).css("border-width", "5pt");
								//현재 누른 카드의 시터id를 input태그의 value에 집어넣는다.
								$("#sitter_id").attr("value", id);
							}
						})
						
						//펫시터 상세정보창의 닫기버튼을 누르면 상세정보창이 닫힌다.
						$("#closebtn").on("click", function(){
							$(".modal").fadeOut();
						}) 
						
						
						
						
					},
					error:function(data){
						
					}
				})
				
				
			})
			
		
						
			
			
			
		})
      </script>    
      
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
       
    	<!-- 펫시터 매칭방법 선택 제목-->
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-10 mx-auto">
                <div class="section-title text-center mb-60">
                    <h2 class="wow fadeInUp" data-wow-delay=".4s">펫시터 매칭 방법 선택</h2>
                </div>
            </div>
        </div>
		<!-- 제목끝  -->
		
		<!-- 직접선택 / 자동매칭 / 과거 선택 탭 -->
        <div class="row">
            <div class="col-lg-12">
                <div class="pricing-btn text-center wow fadeInUp" data-wow-delay=".3s">
                    <ul class="nav justify-content-center mb-90" id="pills-tab"  role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-1-tab" data-bs-toggle="pill" href="#pills-1" role="tab"  aria-controls="pills-1" aria-selected="true">직접 선택</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-2-tab"  data-bs-toggle="pill" href="#pills-2" role="tab" aria-controls="pills-2" aria-selected="false">자동 매칭</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-3-tab"  data-bs-toggle="pill" href="#pills-3" role="tab" aria-controls="pills-3" aria-selected="false">과거에 이용했던 펫시터</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 선택탭끝 -->
        
        <!-- 내용 시작 -->
        <div class="tab-content" id="pills-tabContent">
        	<!-- 직접선택 시작 -->
            <div class="tab-pane fade show active" id="pills-1" role="tabpanel" aria-labelledby="pills-home-tab">
                <div class="single-pricing active mb-50">
                    <div class="row justify-content-center">
                    	<form action="/pet/reserve/resv2_mb.do" method="post" >
                    		<div class=row>
		                  		<div class="col-lg-4">
		                  			<input type="hidden" id="match_method" name="match_method"  value="direct_match">
		                            <h3>선호하는 펫시터</h3>
		                            <h4>성별</h4>
		                            	<select name="prefer_gender" id="prefer_gender">
		                            		<option value="M">남자</option>
		                            		<option value="F">여자</option>
		                            		<option value="A">상관 없음</option>
		                            	</select>
		                            <c:if test="${pet_codelist=='A' || pet_codelist=='D'}"> 
			                            <h4>돌봄 경험 횟수</h4>
			                            	<select name="prefer_size" id="prefer_size">
			                            		<option value="S">소형견 돌봄 경험이 많은 사람</option>
			                            		<option value="M">중형견 돌봄 경험이 많은 사람</option>
			                            		<option value="L">대형견 돌봄 경험이 많은 사람</option>
			                            		<option value="A" >상관 없음</option>
			                            	</select>
		                            </c:if>		
		                            <input type="hidden" id="pet_codelist" value="${pet_codelist }"/>
	                           		<a href="javascript:void(0)" class="theme-btn" id="direct_button" style="margin-left: 0px;">확인</a>
	                           		<p>펫시터분들을 확인해보세요!</p>
								</div>
						
	                  		<div class="col-lg-8 row align-self-center" id="directsitterlist">
		                  		
								
							</div>
						</div>
						<div>
					         <div class="button text-center pb-50">
					       		 <button type="button" class="theme-btn" onclick="location.href='javascript:history.back()'" style="display:inline-block; margin-left:800px">이전</button>
								<button type="submit" id="nextbtn" class="theme-btn" style="display:inline-block; margin-left:0px">다음</button>
					         </div>
						</div>
						
						<!-- input hidden -->
				        <input type="hidden" name="visit_date" value="${resvdto.visit_date }">
				        <input type="hidden" name="service_starttime" value="${resvdto.service_starttime }">
				        <input type="hidden" name="service_endtime" value="${resvdto.service_endtime }">
				        <input type="hidden" name="service_time" value="${resvdto.service_time }">
				        <input type="hidden" name="default_service" value="${resvdto.default_service }">
				        <input type="hidden" name="bath_service" value="${resvdto.bath_service }">
				        <input type="hidden" name="walk_service" value="${resvdto.walk_service }">
				        <input type="hidden" name="beauty_service" value="${resvdto.beauty_service }">
				        <input type="hidden" name="service_note" value="${resvdto.service_note }">
				        <input type="hidden" name="pet1_reserved" value="${resvdto.pet1_reserved }">
				        <input type="hidden" name="pet2_reserved" value="${resvdto.pet2_reserved }">
				        <input type="hidden" name="pet3_reserved" value="${resvdto.pet3_reserved }">
						<input type="hidden" name="sitter_id" id="sitter_id" value="">
                  	 </form>
                    </div>
                </div>
            </div>
        	<!-- 직접선택 끝 -->
        	
        	<!-- 자동매칭 시작 -->
            <div class="tab-pane fade" id="pills-2" role="tabpanel" aria-labelledby="pills-2-tab">
                <div class="single-pricing active mb-50">
               		 <form action="/pet/reserve/resv2_mb.do" method="post" >
                        <div class="row">
                            <div class="col-4 justify-content-center">
                            <input type="hidden" id="match_method" name="match_method"  value="auto_match">
                            <h3>선호하는 펫시터</h3>
                            <h4>성별</h4>
                            	<select name="prefer_gender" style="cursor:pointer;">
                            		<option value="male" style="cursor:pointer;">남자</option>
                            		<option value="female" style="cursor:pointer;">여자</option>
                            		<option value="allgender" style="cursor:pointer;">상관 없음</option>
                            	</select>
                           
                            <h4>돌봄 경험 횟수</h4>
                            	<select name="prefer_size"  style="cursor:pointer;">
                            		<option value="small" style="cursor:pointer;">소형견 돌봄 경험이 많은 사람</option>
                            		<option value="medium" style="cursor:pointer;">중형견 돌봄 경험이 많은 사람</option>
                            		<option value="large" style="cursor:pointer;">대형견 돌봄 경험이 많은 사람</option>
                            		<option value="allsize" style="cursor:pointer;">상관 없음</option>
                            	</select>
                            	
                            	
                           		<a href="javascript:void(0)" class="theme-btn">확인</a>
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
			                    	  
				         <div class="button text-center pb-50">
				       		 <button type="button" class="theme-btn" onclick="location.href='javascript:history.back()'" style="display:inline-block; margin-left:800px">이전</button>
							<button type="submit" id="nextbtn" class="theme-btn" style="display:inline-block; margin-left:0px">다음</button>
				         </div>
				         
				         <!-- input hidden -->
				        <input type="hidden" name="visit_date" value="${resvdto.visit_date }">
				        <input type="hidden" name="service_starttime" value="${resvdto.service_starttime }">
				        <input type="hidden" name="service_endtime" value="${resvdto.service_endtime }">
				        <input type="hidden" name="service_time" value="${resvdto.service_time }">
				        <input type="hidden" name="default_service" value="${resvdto.default_service }">
				        <input type="hidden" name="bath_service" value="${resvdto.bath_service }">
				        <input type="hidden" name="walk_service" value="${resvdto.walk_service }">
				        <input type="hidden" name="beauty_service" value="${resvdto.beauty_service }">
				        <input type="hidden" name="service_note" value="${resvdto.service_note }">
				        <input type="hidden" name="pet1_reserved" value="${resvdto.pet1_reserved }">
				        <input type="hidden" name="pet2_reserved" value="${resvdto.pet2_reserved }">
				        <input type="hidden" name="pet3_reserved" value="${resvdto.pet3_reserved }">
				         
                    </form>
                </div>
            </div>
            <!-- 자동매칭끝 -->
            
            <!-- 과거리스트 시작 -->
            <div class="tab-pane fade" id="pills-3" role="tabpanel" aria-labelledby="pills-3-tab">
                <div class="single-pricing active mb-50">
                     <div class="col-lg-12 row align-self-center">
                     	<form action="/pet/reserve/resv2_mb.do" method="post" >
	                  		<div class="col-lg-4">
	                  		<input type="hidden" id="match_method" name="match_method"  value="past_match">
	                  		<input type="hidden" id="prefer_gender" name="prefer_gender"  value="">
	                  		<input type="hidden" id="prefer_size" name="prefer_size"  value="">
	                  		
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
							
							  
						         <div class="button text-center pb-50">
						       		 <button type="button" class="theme-btn" onclick="location.href='javascript:history.back()'" style="display:inline-block; margin-left:700px">이전</button>
									<button type="submit" id="nextbtn" class="theme-btn" style="display:inline-block; margin-left:0px">다음</button>
						         </div>
									<!-- input hidden -->
							        <input type="hidden" name="visit_date" value="${resvdto.visit_date }">
							        <input type="hidden" name="service_starttime" value="${resvdto.service_starttime }">
							        <input type="hidden" name="service_endtime" value="${resvdto.service_endtime }">
							        <input type="hidden" name="service_time" value="${resvdto.service_time }">
							        <input type="hidden" name="default_service" value="${resvdto.default_service }">
							        <input type="hidden" name="bath_service" value="${resvdto.bath_service }">
							        <input type="hidden" name="walk_service" value="${resvdto.walk_service }">
							        <input type="hidden" name="beauty_service" value="${resvdto.beauty_service }">
							        <input type="hidden" name="service_note" value="${resvdto.service_note }">
							        <input type="hidden" name="pet1_reserved" value="${resvdto.pet1_reserved }">
							        <input type="hidden" name="pet2_reserved" value="${resvdto.pet2_reserved }">
							        <input type="hidden" name="pet3_reserved" value="${resvdto.pet3_reserved }">
													
							</form>
						</div>
                </div>
            </div>
            <!-- 과거끝 -->
		     <!-- 버튼 -->

        </div>
        <!-- 내용끝 -->
		     
	   <!-- form끝 -->  
    </div>
</section>
<!-- ========================= 펫시터-section end ========================= -->
<script>


</script>
		<div class="modal">
		  <div class="modal_content" 
		       title="클릭하면 창이 닫힙니다.">
		       <div id="detailcontent">
				    
			    </div>
			    <div>
			    	<button type="button" class="theme-btn direct sitterdetail"  id="closebtn" style="display:inline-block;" >닫기</button>
		 		</div>
		  </div>
		</div>
    </body>
</html>
