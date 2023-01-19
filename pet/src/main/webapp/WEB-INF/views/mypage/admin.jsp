<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>user</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<style type="text/css">
	.count{padding: 4px 14px; width: 200px; }
	

	</style>
</head>
<body>

<!-- ========================= page-banner-section start ========================= -->
<section class="page-banner-section pt-75 pb-75 img-bg" style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="banner-content">
                    <h2 class="text-white">관리자 페이지</h2>
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
		<h2>관리자 페이지</h2></br>
		<div class="count" style="">
		<h7><b style="color: #0D6EFD">전체 시터: ${total }</b></h7></br>
		<h7><b style="color: #0D6EFD">승인완료 시터: ${atotal }</b></h7></br>
		<h7><b style="color: #0D6EFD">미승인 시터: ${untotal }</b></h7>
		</div>
			<div class="container">	
				<div class="container row align-items-center pb-30">
					<div class="col-lg-6"></div>
					<div class="col-lg-3">
						<select name="category" id="category" class="form-select" aria-label="Default select example">
							<option selected>전체</option>
							<option value="id">아이디</option>
							<option value="name">이름</option>
							<option value="email">이메일 주소</option>
							<option value="phone">전화번호</option>
							<option value="valid">미승인</option>
						</select>
					</div>
					<div class="col-lg-3">
						<form action="#" class="search-form">
							<input name="search_val" id="search_val" type="text" placeholder="Search">
							<button type="submit"><i class="lni lni-search-alt"></i></button>
						</form>
					</div>
				</div>
						
			<!-- sitter list start -->
			<div class="col-lg-12 pb-100">
				<div class="contact-form-wrapper">
				<!-- table start -->
					<div class="row">
						<table class="table text-center">
							<thead>
								<tr>	
									<th scope="col">펫시터 아이디</th>
									<th scope="col">이름</th>
									<th scope="col">성별</th>
									<th scope="col">종류</th>
									<th scope="col">이메일</th>
									<th scope="col">연락처</th>
									<th scope="col">주소</th>
									<th scope="col">생년월일</th>
									<th scope="col">가입 날짜</th>
									<!-- <th scope="col">상태</th> -->
									<th scope="col">승인 여부</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="sitter" items="${sitterlist}" varStatus="status">
									<tr>
										<th><a href="/pet/erp/sitter/read.do?sitter_id=${sitter.sitter_id}&state=UPDATE">${sitter.sitter_id}</a></th>
										<td>${sitter.sitter_name}</td>
										<td>${sitter.sitter_gender}</td>
										<td>${sitter.sitter_code}</td>
										<td>${sitter.sitter_email}</td>
										<td>${sitter.sitter_phone}</td>
										<td>${sitter.sitter_shortAddr}${sitter.sitter_addr1}</td>
										<td>${sitter.sitter_birthdate}</td>
										<td>${sitter.sitter_startdate}</td>
										<%-- <td>${sitter.valid}</td> --%>
										<Div id="Pop" style="position:absolute; left:100px; top:100px; width:100px; height:100px; z-index:1;display:none;">
										<td><a href="javascript:valid_update()">${sitter.valid}</a></td> 
				
										</Div>
									</tr>
								</c:forEach>
							</tbody>	
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="result"></div>
</section>
<!-- ========================= contact-section end ========================= -->
</body>
<script type="text/javascript">
	function showPopUp() {
		//창 크기 지정
		var width = 600;
		var height = 220;
		//pc화면기준 가운데 정렬
		var left = (window.screen.width / 2) - (width/2);
		var top = (window.screen.height / 4);
	    	//윈도우 속성 지정
		var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
	    	//연결하고싶은url
	    	const url = "/pet/menu/admin/popup.do";
		//등록된 url 및 window 속성 기준으로 팝업창을 연다.
		window.open(url, "hello popup", windowStatus);
	}
</script>
<script type="text/javascript">
	function valid_update() {
		console.log(this);
		var sitter_id = "hi";
		$(this).next().val(sitter_id);
		alert(sitter_id);
	}

	     
	      function ViewLayer(){

	          //만일 Pop라는 녀석이 닫혀있다면??

	          if(document.getElementById("Pop").style.display=="none"){

	             //열어주어라

	             document.getElementById("Pop").style.display='inline'

	          //그렇지 않은 모든 경우라면??

	          }else{

	             //닫아주어라

	             document.getElementById("Pop").style.display='none'

	          }

	       }

</script>
