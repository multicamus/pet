<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
	<meta charset="utf-8">
	<title>user</title>
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
            	<h2>관리자 페이지</h2>
                <div class="column">
                	<div class="container">
	                	<div class="col-lg-3">
		                	<select class="form-select" aria-label="Default select example">
							    <option selected>전체</option>
							    <option value="1">펫시터 관리번호</option>
							    <option value="2">이름</option>
							    <option value="3">이메일 주소(카카오톡)</option>
							</select>
						</div>
		                <div class="col-lg-3">
		       				<form action="#" class="search-form">
								<input type="text" placeholder="Search">
								<button type="submit">
									<i class="lni lni-search-alt"></i>
								</button>
							</form>
						</div>
					</div>
					
                    <div class="col-xl-8">
                        <div class="contact-form-wrapper">
                            <div class="row">
                                <table class="table text-center">
								  <thead>
								    <tr>
								      <th scope="col">펫시터 관리번호</th>
								      <th scope="col">이름</th>
								      <th scope="col">이메일 주소</th>
								      <th scope="col">....</th>
								      <th scope="col">승인 여부</th>
								      <th scope="col">승인 여부 변경</th>
								    </tr>
								  </thead>
								  <tbody>
								    <tr>
								      <th scope="row">202218CP</th>
								      <td>김00</td>
								      <td>xxxx@</td>
								      <td>.....</td>
								      
								      <td><a href="javascript:showPopUp();">승인</a></td>
								      <td><a href="javascript:showPopUp();">승인 취소</a></td>
								    </tr>
								    <tr>
								      <th scope="row">202218DP</th>
								      <td>윤00</td>
								      <td>aaaa@</td>
								      <td>.....</td>
								      <td>미승인</td>
								      <td>취소</td>
								    </tr>
								    <tr>
							          <th scope="row">202219EP</th>
								      <td>손00</td>
								      <td>cccc@</td>
								      <td>.....</td>
								      <td>승인</td>
								      <td>승인 취소</td>
								    </tr>
								  </tbody>
								</table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ========================= contact-section end ========================= -->
    </body>
   	<script type="text/javascript">
		function showPopUp() {
			//창 크기 지정
			var width = 500;
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
