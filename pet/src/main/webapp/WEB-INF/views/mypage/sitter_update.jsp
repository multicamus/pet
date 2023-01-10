<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<title>sitter</title>
</head>
<!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
<script
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>

<script>
	/** 우편번호 찾기 */
	function execDaumPostcode() {
		daum.postcode.load(function() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
					$("#postcode").val(data.zonecode);
					$("#address").val(data.roadAddress);
				}
			}).open();
		});
	}

	$('document')
			.ready(
					function() {
						var area0 = [ "시/도 선택", "서울특별시", "인천광역시", "대전광역시",
								"광주광역시", "대구광역시", "울산광역시", "부산광역시", "경기도",
								"강원도", "충청북도", "충청남도", "전라북도", "전라남도", "경상북도",
								"경상남도", "제주도" ];
						var area1 = [ "강남구", "강동구", "강북구", "강서구", "관악구", "광진구",
								"구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구",
								"마포구", "서대문구", "서초구", "성동구", "성북구", "송파구",
								"양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구" ];
						var area2 = [ "계양구", "남구", "남동구", "동구", "부평구", "서구",
								"연수구", "중구", "강화군", "옹진군" ];
						var area3 = [ "대덕구", "동구", "서구", "유성구", "중구" ];
						var area4 = [ "광산구", "남구", "동구", "북구", "서구" ];
						var area5 = [ "남구", "달서구", "동구", "북구", "서구", "수성구",
								"중구", "달성군" ];
						var area6 = [ "남구", "동구", "북구", "중구", "울주군" ];
						var area7 = [ "강서구", "금정구", "남구", "동구", "동래구", "부산진구",
								"북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구",
								"중구", "해운대구", "기장군" ];
						var area8 = [ "고양시", "과천시", "광명시", "광주시", "구리시", "군포시",
								"김포시", "남양주시", "동두천시", "부천시", "성남시", "수원시",
								"시흥시", "안산시", "안성시", "안양시", "양주시", "오산시",
								"용인시", "의왕시", "의정부시", "이천시", "파주시", "평택시",
								"포천시", "하남시", "화성시", "가평군", "양평군", "여주군", "연천군" ];
						var area9 = [ "강릉시", "동해시", "삼척시", "속초시", "원주시", "춘천시",
								"태백시", "고성군", "양구군", "양양군", "영월군", "인제군",
								"정선군", "철원군", "평창군", "홍천군", "화천군", "횡성군" ];
						var area10 = [ "제천시", "청주시", "충주시", "괴산군", "단양군",
								"보은군", "영동군", "옥천군", "음성군", "증평군", "진천군", "청원군" ];
						var area11 = [ "계룡시", "공주시", "논산시", "보령시", "서산시",
								"아산시", "천안시", "금산군", "당진군", "부여군", "서천군",
								"연기군", "예산군", "청양군", "태안군", "홍성군" ];
						var area12 = [ "군산시", "김제시", "남원시", "익산시", "전주시",
								"정읍시", "고창군", "무주군", "부안군", "순창군", "완주군",
								"임실군", "장수군", "진안군" ];
						var area13 = [ "광양시", "나주시", "목포시", "순천시", "여수시",
								"강진군", "고흥군", "곡성군", "구례군", "담양군", "무안군",
								"보성군", "신안군", "영광군", "영암군", "완도군", "장성군",
								"장흥군", "진도군", "함평군", "해남군", "화순군" ];
						var area14 = [ "경산시", "경주시", "구미시", "김천시", "문경시",
								"상주시", "안동시", "영주시", "영천시", "포항시", "고령군",
								"군위군", "봉화군", "성주군", "영덕군", "영양군", "예천군",
								"울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군" ];
						var area15 = [ "거제시", "김해시", "마산시", "밀양시", "사천시",
								"양산시", "진주시", "진해시", "창원시", "통영시", "거창군",
								"고성군", "남해군", "산청군", "의령군", "창녕군", "하동군",
								"함안군", "함양군", "합천군" ];
						var area16 = [ "서귀포시", "제주시", "남제주군", "북제주군" ];

						// 시/도 선택 박스 초기화

						$("select[name^=sido]")
								.each(
										function() {
											$selsido = $(this);
											$
													.each(
															eval(area0),
															function() {
																$selsido
																		.append("<option value='"+this+"'>"
																				+ this
																				+ "</option>");
															});
											$selsido
													.next()
													.append(
															"<option value=''>구/군 선택</option>");
										});

						// 시/도 선택시 구/군 설정

						$("select[name^=sido]")
								.change(
										function() {
											var area = "area"
													+ $("option", $(this))
															.index(
																	$(
																			"option:selected",
																			$(this))); // 선택지역의 구군 Array
											var $gugun = $(this).next(); // 선택영역 군구 객체
											$("option", $gugun).remove(); // 구군 초기화

											if (area == "area0")
												$gugun
														.append("<option value=''>구/군 선택</option>");
											else {
												$
														.each(
																eval(area),
																function() {
																	$gugun
																			.append("<option value='"+this+"'>"
																					+ this
																					+ "</option>");
																});
											}
										});

					});
</script>
<body>
	<!-- ========================= page-banner-section start ========================= -->
	<section class="page-banner-section pt-75 pb-75 img-bg"
		style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="banner-content">
						<h2 class="text-white">Pet Sitter's Page</h2>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item" aria-current="page"><a
										href="/pet">Home</a></li>
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
							<div class="col-12 col-md-6 col-xl-12">
								<a href="/pet/menu/reserve/resvhistory_st_list.do">
									<div class="contact-item">
										<div class="contact-icon">
											<i class="lni lni-phone"></i>
										</div>
										<div class="contact-content">
											<h4>나의 예약 보기</h4>
											<p>예약 정보 띄우기</p>
											<p>예약 정보 띄우기</p>
										</div>
									</div>
								</a>
							</div>
							<div class="col-12 col-md-6 col-xl-12">
								<a href="/pet/menu/reserve/resvhistory_st_list.do">
									<div class="contact-item">
										<div class="contact-icon">
											<i class="lni lni-map-marker"></i>
										</div>
										<div class="contact-content">
											<h4>나의 점수</h4>
											<p>별점으로 표시</p>
											<p>${user.sitter_rate}</p>
											<p>가장 최근 후기</p>
										</div>
									</div>
								</a>
							</div>

							<div class="col-12 col-md-6 col-xl-12">
								<div class="contact-item">
									<div class="contact-icon">
										<i class="lni lni-alarm-clock"></i>
									</div>
									<div class="contact-content">
										<h4>자격증</h4>
										<p>${user.sitter_certificate}</p>
										<p>자격증</p>
										<p>
											<a href="#">등록</a>
										</p>
										<p>
											<a href="http://www.kkc.or.kr/service/service_05.html"
												target="_black">자격증 따기</a>
										</p>
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
									<span class="wow fadeInDown" data-wow-delay=".2s">${user.name}님,
										안녕하세요!</span>
									<h2 class="wow fadeInUp" data-wow-delay=".4s">
										시터님의 정보를 입력하고 <br>수정해주세요
									</h2>
									<!-- <p class="wow fadeInUp" data-wow-delay=".6s">언제든지 열려있습니다. </p> -->

								</div>
							</div>
						</div>
						<form action="/pet/erp/sitter/update.do" class="contact-form">
							<div>
								<h4>이름</h4>
								<input type="text" name="name" id="name" placeholder="이름"
									value="${user.name}" required>
							</div>
							<div>
								<h4>이메일</h4>
								<input type="email" name="email" id="email" placeholder="Email"
									value="${user.sitter_email}" required>
							</div>
							<h4>연락처</h4>
							<input type="text" name="phone" id="phone" placeholder="전화번호"
								value="${user.sitter_phone}" required>
							<div>
								<h4>주소</h4>
								<input type="text" name="address" id="address" placeholder="주소"
									value="${user.sitter_addr1}" required>
								<div class="col-md-3">
									<input type="text" class="form-control m-input" name="postcode"
										id="postcode" placeholder="우편번호" readonly />
								</div>
								<div class="col-md-4 postcode-btn">
									<button type="button" class="btn btn-primary"
										onclick="execDaumPostcode()">우편번호 찾기</button>
								</div>
								<div class="col-md-4 offset-md-5"
									style="margin-left: 75px; padding-left: 10px;">
									<input type="text" class="form-control m-input" name="address"
										id="address" placeholder="도로명 주소" readonly />
								</div>
								<div class="col-md-4 offset-md-5" style="margin-left: 65px;">
									<input type="text" class="form-control m-input"
										name="detailAddress" placeholder="상세 주소" required />
								</div>

							</div>
					<div>
						<h4>펫시터 종류</h4>
						<input type="text" name="sitter" id="sitter" placeholder="펫시터 종류"
							value="${user.sitter_code}" required>
					</div>
					<div class="col-12">
						<h4>자기 소개</h4>
						<textarea name="sitter_info" id="자기소개"
							placeholder="남들에게 보여질 자기소개를 입력해주세요" rows="5">${user.sitter_info}</textarea>
					</div>
					<div class="col-12">
						<h4>서비스 가능 지역</h4>
						<textarea name="message" id="message" placeholder="서비스 가능구역 입력"
							rows="1">${user.service_area}</textarea>
							
							<div class="row">
						<div class="col-12">
							<h4>서비스 가능 지역</h4>
							<select name="sido1" id="sido1"></select>
							<select name="gugun1" id="gugun1"></select>
						</div>
					</div>
					
						<div>
							<button class=" btn btn-primary " type="submit">서울시 종로구</button>
							<button class=" btn btn-primary " type="submit">서울시 성북구</button>
							<button class=" btn btn-primary " type="submit">서울시 마포구</button>
						</div>
					</div>
					</div>

					<div class="row pt-100">
						<div class="col-12">
							<div class="button text-center">
								<button type="submit" class="theme-btn">확인</button>
								<a type="button" class="theme-btn"
									href="/pet/menu/mypage/sitter.do">취소</a>
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
