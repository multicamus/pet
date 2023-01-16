<%@page import="mutli.com.pet.erp.SitterDTO"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html class="no-js" lang="ko">
    <head>
        <meta charset="utf-8">
        <title>sitter</title>
    </head>
    <body>
        <!-- ========================= page-banner-section start ========================= -->
        <section class="page-banner-section pt-75 pb-75 img-bg" style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="banner-content">
                            <h2 class="text-white">Pet Sitter's Page </h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item" aria-current="page"><a href="/pet">Home</a></li>
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
        <section class="contact-section pt-100 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4">
                        <div class="contact-item-wrapper">
                            <div class="row">
                            
                            	<c:choose>
	                            	<c:when test="${fn:length(resvlist) != 0}">
										<div class="col-12 col-md-6 col-xl-12">
											<div class="contact-item">
												<div class="contact-icon">
													<i class="lni lni-alarm-clock"></i>
												</div>
												<div class="contact-content">
													<h4><a href="/pet/reserve/list.do">예약 확인하기!</a></h4>
													<c:forEach var="resv" items="${resvlist}" varStatus="status">
														<p><a href="/pet/reserve/list.do">${resv.member_id}</a></p>
													</c:forEach>
												</div>
											</div>
										</div>
									</c:when>
								</c:choose>
                                
                                <div class="col-12 col-md-6 col-xl-12">
                                    <div class="contact-item">
                                        <div class="contact-icon">
                                            <i class="lni lni-map-marker"></i>
                                        </div>
                                        <div class="contact-content">
                                            <h4><a href="/pet/menu/reserve/resvhistory_st_list.do">나의 점수</a></h4>
                                            <p>별점으로 표시</p>
                                            <p>${sitter.sitter_rate}</p>
                                            <p>가장 최근 후기</p>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-12 col-md-6 col-xl-12">
                                    <div class="contact-item">
                                        <div class="contact-icon">
                                            <i class="lni lni-alarm-clock"></i>
                                        </div>
                                        <div class="contact-content">
                                            <h4>자격증</h4>
                                            <%
								    		SitterDTO sitter = (SitterDTO) session.getAttribute("sitter");
                                   	   		if(sitter.getSitter_certificate() != null){
                                   	   		String[] certificate = sitter.getSitter_certificate().split(",");
                                   	   		int size = certificate.length;
                                   	   		for(int i = 0; i < size; i++){%>
                                   	   		<p><%=certificate[i] %></p>
                                   	   		<%}}%>
                                            
                                            <p><a href="http://www.kkc.or.kr/service/service_05.html" target="_black">한국 애견 협회</a></p>
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
                                        <span class="wow fadeInDown" data-wow-delay=".2s">${sitter.sitter_name }님, 안녕하세요!</span>
                                        <h2 class="wow fadeInUp" data-wow-delay=".4s">시터님의 정보를 확인하세요!</h2>
                                        
                                    </div>
                                </div>
                            </div>
                                <div class="contact-form">
                                    <div class="row align-items-center">
                                    	<div class="col-md-auto"><h4>이름</h4></div>
                                       	<div class="col-md-4">
                                       		<input type="text" name="photo" id="photo" placeholder="사진" value="${sitter.sitter_name}" disabled>
                                        </div>
                                    </div>
                                    
                                    <div class="row align-items-center">
                                    	<div class="col-md-auto"><h4>이름</h4></div>
                                       	<div class="col-md-4">
                                       		<input type="text" name="name" id="name" placeholder="이름" value="${sitter.sitter_name}" disabled>
                                        </div>
                                    </div>
                                    
                                    <div class="row align-items-center">
                                    	<div class="col-md-auto"><h4>이메일</h4></div>
                                    	<div class="col-md-auto">
                                        	<input type="email" name="email" id="email" placeholder="Email" value="${sitter.sitter_email}" disabled>
                                        </div>
                                    </div>
                                    
                                    <div class="row align-items-center">
                                    	<div class="col-md-auto"><h4>생일</h4></div>
                                    	<div class="col-md-auto">
                                        	<input type="date" name="sitter_birthdate" id="birthday" placeholder="생일" value="${sitter.sitter_birthdate}" disabled="disabled">
                                        </div>
                                    </div>
                                    
                                    <div class="row align-items-center">
                                    	<div class="col-md-auto"><h4>성별</h4></div>
                                    	<div class="col-md-auto">
                                    	<c:choose>
				                        	<c:when test="${sitter.sitter_gender == 'W'}">
				                        		<div class="form-check form-check-inline">
			                                        <input class="form-check-input" type="radio" name="sitter_gender" id="genderM" value="M" disabled="disabled">
			                                        <label class="form-check-label" for="genderM">남자</label>
		                                        </div>
		                                        <div class="form-check form-check-inline">
			                                        <input class="form-check-input" type="radio" name="sitter_gender" id="genderW" value="F" checked="checked" disabled="disabled">
			                                        <label class="form-check-label" for="genderW">여자</label>
		                                        </div>
				                        	</c:when>
				                        	<c:otherwise>
				                        		<div class="form-check form-check-inline">
			                                        <input class="form-check-input" type="radio" name="sitter_gender" id="genderM" value="M" checked="checked" disabled="disabled">
			                                        <label class="form-check-label" for="genderM">남자</label>
		                                        </div>
		                                        <div class="form-check form-check-inline">
			                                        <input class="form-check-input" type="radio" name="sitter_gender" id="genderW" value="F" disabled="disabled">
			                                        <label class="form-check-label" for="genderW">여자</label>
		                                        </div>
				                        	</c:otherwise>
			                        	</c:choose>
			                        	</div>
                                    </div>
                                    
                                    <div class="row align-items-center">
                                    	<div class="col-md-auto"><h4>연락처</h4></div>
                                    	<div class="col-md-auto">
                                        	<input type="text" name="phone" id="phone" placeholder="전화번호" value="${sitter.sitter_phone}" disabled>
                                        </div>                                        
                                    </div>
                                    
                                    <div class="row align-items-center">
                                    	<div class="col-md-auto"><h4>주소</h4></div>
                                    	<div class="col-md-auto">
	                                        <input type="text" name="sitter_addr" id="addr1" placeholder="주소" value="${sitter.sitter_addr1}" disabled>
                                        </div>
                                        <div class="col-md-3">
	                                        <input type="text" name="sitter_addr2" id="addr2" placeholder="상세 주소" value="${sitter.sitter_addr2}" disabled>
                                        </div>
                                    </div>
                                    
                                    <div class="row align-items-center">
                                    	<div class="col-md-auto"><h4>펫시터 종류</h4></div>
                                        <div class="col-md-auto">
                                        	<input type="text" name="sitter" id="sitter" placeholder="펫시터 종류" value="${sitter.sitter_code}" disabled>
                                        </div>
                                    </div>
                                    
                                    <div class="row align-items-center">
                                        <div class="col-md-auto"><h4>자기 소개</h4></div>
                                        <textarea name="sitter_info" id="자기소개" placeholder="남들에게 보여질 자기소개를 입력해주세요" rows="5" disabled>${sitter.sitter_info}</textarea>
                                    </div>
                                    
                                    <div class="row align-items-center">
                                        <h4>서비스 가능 지역</h4>
                                        <div class="pt-20">
                                   	   		<%
                                   	   		if(sitter.getService_area() != null){
                                   	   		String[] area = sitter.getService_area().split(",");
                                   	   		int size = area.length;
                                   	   		for(int i = 0; i < size; i++){%>
                                   	   		<button class="btn btn-outline-primary" type="button"><%=area[i] %></button>
                                   	   		<%}}%>
		                                </div>
	                                </div>
            
                                <div class="row pt-100">
                                    <div class="col-12">
                                        <div class="button text-center">
                                            <a type="button" class="theme-btn" href="/pet/erp/sitter/read.do?sitter_id=${sitter.sitter_id}&state=UPDATE">수정</a>
                                        </div>
                                    </div>
                                </div>
                      	    </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
