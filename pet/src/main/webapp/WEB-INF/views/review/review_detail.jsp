<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<title>Review Detail</title>
<script type="text/javascript">
	$(document).ready(function() { /*실행할준비가 완료되면 */
		no = "${review.review_no}"
		$("#review_no_prev").on("click", function() {
			//no = "${review.review_no}"
				alert(no)
			var querydata = {
				"review_no" : no
			}
			
			/*ajax- 컨트롤러에서 데이터를 받아 뷰에실행시킴 */
			$.ajax({
				url : "/pet/menu/review/ajax_detail_prev",
				type : "get",
				data : querydata,
				dataType : "json",
				success : function(data) {
					//alert(data.review+","+data.member_addr1)
					$("#reviewtext").text(data.review)
					$("#reviewrate").text(data.review_rate)
					$("#reviewdate").text(data.write_date_rv)
					no = data.review_no
				
				},
				error : error_run
			})
		})
		
		$("#review_no_next").on("click", function() {
			//no = "${review.review_no}"
			alert(no)
			var querydata = {
				"review_no" : no
			}
			
			/*ajax- 컨트롤러에서 데이터를 받아 뷰에실행시킴 */
			$.ajax({
				url : "/pet/menu/review/ajax_detail_next",
				type : "get",
				data : querydata,
				dataType : "json",
				success : function(data) {
					//alert(data.review+","+data.member_addr1)
					$("#reviewtext").text(data.review)
					$("#reviewrate").text(data.review_rate)
					$("#reviewdate").text(data.write_date_rv)
					no = data.review_no
				},
				error : error_run
			})
		})
		
		
	})

	function error_run() {
	}
	function deleteRequest(){
		alert("test")
		location.href="/pet/review/delete.do?review_no="+no
	}
	function updateRequest(){
		alert("test")
		location.href="/pet/review/update_read.do?review_no="+no
	}
	
	
</script>
</head>

<body>
	<!-- ========================= page-banner-section start ========================= -->
	<section class="page-banner-section pt-200 pb-200 img-bg"
		style="background-image: url('/pet/resources/assets/images/dog.jpg')">
	</section>
	<!-- ========================= page-banner-section end ========================= -->

	<!-- ========================= feature-section start ========================= -->
	<section class="feature-section pt-130">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-7 col-md-9 mx-auto">
					<div class="section-title text-center mb-55">
						<h2 class="wow fadeInUp" data-wow-delay=".4s">후기를 자세히 살펴보세요!</h2>
					</div>
				</div>
			</div>

			<div class="row" style="display: flex; align-items: center">



				<div class="col-lg-2 col-md-6" id="review_no_prev">
					<a name="review_no" style="float: right;"> <img
						src="/pet/resources/assets/images/direction_left.png"
						style="width: 50px; height: 50px">
						<input type="hidden" name="review_no" value="${review.review_no}"/>
						</a>
				</div>


				<div class="col-lg-8 col-md-6">
					<div class="feature-box box-style">


						<!-- 첨부파일 -->
						<div class="form-group">
							<div class="col-md-2 text-right">
							${reviewfiledtolist}
							
								<label for="title" class="control-label">첨부파일</label> 
							</div>

										<!-- <img src="/pet/uploadfiles/profile_image1.jpg"> -->
							<div class="col-md-8">
								<!-- 디비에 저장된 파일명을 출력(클라이언트가 선택한 파일명) : JSTL -->
								<c:forEach var="file" items="${reviewfiledtolist}">
									<h5>
									</h5>
								</c:forEach>
							</div>
						</div>



						<div style="display: flex; position: relative;">


							<div class="col-lg-10 row">
								<div class="col-lg-1">
									<img
										src="/pet/resources/assets/images/${review.member_photo}.jpg"
										style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover;">

								</div>
								<div class="col-lg-9"
									style="padding-top: 10px; padding-left: 30px;">
									<h4>
										<%-- ${pet.pet_name}PETNAME --%>
									</h4>
								</div>
							</div>


							<%--  <c:choose>
							${review.review_no}
								<c:when test="${user == null} ">  --%>

							<!-- 삭제 버튼 경로넣어야함 -->
							<div class="col-lg-1">
								<p
									style="font-weight: 600; color: #6A92FE; font-size: 12px; line-height: 40px">
									<a href="javascript:deleteRequest()"
										style="margin: auto; width: 80px; height: 40px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">삭제</a>
								</p>
							</div>

							<div class="col-lg-2"
								style="font-weight: 600; color: #6A92FE; font-size: 12px; line-height: 40px">
								<a
									href="javascript:updateRequest()"
									style="margin: auto; width: 80px; height: 40px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">
									수정 </a>
							</div>
							<%-- 	</c:when>
							</c:choose> --%>



						</div>
						<br />
						<div class="display: flex; flex-direction: column;">
							<h4>${review.member_addr1 }</h4>
							<div class="row">
								<div class="col-2">
									<p
										style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;"><span id="reviewdate"> ${review.write_date_rv} </span>
									</p>
								</div>
								<div class="col-2">
									<p
										style="font-size: 12px; font-weight: 400; color: rgb(158, 164, 179); line-height: 20px;">평점
										<span id="reviewrate">${review.review_rate}</span> </p>
								</div>
							</div>
							<br />

							<p><span id="reviewtext">${review.review}</span></p>
						</div>
					</div>

					<a href="http://localhost:8088/pet/menu/review.do"
						style="margin: auto; width: 304px; height: 59px; border: 1px solid #6A92FE; border-radius: 30px; display: flex; flex-direction: row; justify-content: center; align-items: center">
						<span
						style="font-size: 26px; margin-bottom: 2px; color: #6A92FE; margin-right: 6px">+</span>
						<p
							style="font-weight: 600; color: #6A92FE; font-size: 18px; line-height: 40px">전체
							후기 보기</p>
					</a>

				</div>

				<div class="col-lg-2 col-md-6" id="review_no_next">
					<a name="review_no" style="float: left;"> <img
						src="/pet/resources/assets/images/direction_left.png"
						style="width: 50px; height: 50px; transform: rotateY(180deg)"></a>

				</div>
			</div>
			<br /> <br />
		</div>
	</section>

</body>

</html>