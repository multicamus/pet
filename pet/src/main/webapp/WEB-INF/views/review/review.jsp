<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Review</title>
</head>

<body>
	<!-- ========================= page-banner-section start ========================= -->
	<section class="page-banner-section pt-200 pb-200 img-bg" style="background-image: url('/pet/resources/assets/images/dog.jpg')">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="banner-content">
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ========================= page-banner-section end ========================= -->

	<!-- ========================= feature-section start ========================= -->
	<section class="feature-section pt-130">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-7 col-md-9 mx-auto">
					<div class="section-title text-center mb-55">
						<span class="wow fadeInDown" data-wow-delay=".2s">00개의 후기</span>
						<h2 class="wow fadeInUp" data-wow-delay=".4s">실시간 이용후기</h2>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6">
					<a href="/pet/menu/review/detail.do?id=">
						<div class="feature-box box-style">
							<div style="display: flex; position: relative;">
								<img src="/pet/resources/assets/images/dog3.jpg"
									style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover;">
							</div>
							<br />
							<div style="display: flex; flex-direction: column;">
								<!--후기 제목 -->
								<h4>인천 서구</h4>
								<div class="row">
									<div class="col-2">
										<p style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">10분
											전</p>
									</div>
									<div class="col-3">
										<p style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">평점
											5점</p>
									</div>
								</div>
							</div>
							<br />
							<!-- 후기 내용 -->
							<div class="box-content-style feature-content">
								<p>시터님~ 어제 금식 신경써주신 덕분에 똘이는 검진 잘 다녀왔고 몇 개월전과 큰 차이없이 건강하다고
									해요ㅎㅎ 감사합니다! 오늘도 날이 영상까지 올라가서 산책할 수 있을 것 같네요ㅎㅎ 잘 부탁드려요!</p>
							</div>
							<br />
							</a>
						<div>
							<button type="button" class="btn btn-secondary btn-sm" style="z-index: 1;"
							onclick="location.href='javascript:showPopUp()' ">댓글</button>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6">
					<a href="/pet/menu/review/detail.do?id=">
					<div class="feature-box box-style">
						<div style="display: flex; position: relative;">
							<img src="/pet/resources/assets/images/dog1.jpg"
								style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover;">
						</div>
						<br />
						<div style="display: flex; flex-direction: column;">
							<h4>서울 강남구</h4>
							<div class="row">
								<div class="col-3">
									<p style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">1시간
										전</p>
								</div>
								<div class="col-3">
									<p style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">평점
										5점</p>
								</div>
							</div>
						</div>
						<br />
						<div class="box-content-style feature-content">
							<p>시터님 덕분에 루피젤리 오동통하게 잘살구있네요!!! 항상감사합니다!!! 덕분에 휴가 잘다녀왔어요!
								다음에또부탁드릴게요~☺️👉🏻👈🏻 시터님도 따뜻한연말보내시구 내년에 좋은일 많이 일어나시길바랄게요~~🫶</p>
						</div>

						<br/>
						</a>
						<div>
							<button type="button" class="btn btn-secondary btn-sm"
								onclick="location.href='javascript:showPopUp()' ">댓글</button>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6">
					<a href="/pet/menu/review/detail.do?id=">
					<div class="feature-box box-style">
						<div style="display: flex; position: relative;">
							<img src="/pet/resources/assets/images/dog2.jpg"
								style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover;">
						</div>
						<br />
						<div style="display: flex; flex-direction: column;">
							<h4>서울 마포구</h4>
							<div class="row">
								<div class="col-2">
									<p
										style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">어제
									</p>
								</div>
								<div class="col-3">
									<p
										style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">평점
										5점</p>
								</div>
							</div>
						</div>
						<br />
						<div class="box-content-style feature-content">
							<p>50분이나 산책해주셨다니!! 반달이 정말 신났겠어요!!! 추운 날씨에 감사합니다~~ 아침저녁으로
								산책하면서 야외배변하니 패드가 깨끗한가봐요ㅎㅎㅎㅎ</p>
						</div>
						<br />
						</a>
						<div>
							<button type="button" class="btn btn-secondary btn-sm"
								onclick="location.href='javascript:showPopUp()' ">댓글</button>
						</div>
					</div>
				</div>
	</section>
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
		    	const url = "/pet/menu/review/popup.do";
			//등록된 url 및 window 속성 기준으로 팝업창을 연다.
			window.open(url, "hello popup", windowStatus);
			}
	</script>
</html>