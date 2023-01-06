<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="ko">
<head>
    <meta charset="utf-8">
    <title>Review Write</title>
</head>

<body>
    <!-- ========================= page-banner-section start ========================= -->
    <section class="page-banner-section pt-75 pb-75 img-bg" style="background-image: url('/pet/resources/assets/img/bg/common-bg.svg')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="banner-content">
                        <h2 class="text-white">이용 후기 작성</h2>
                        <div class="page-breadcrumb">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item" aria-current="page"><a href="/pet/">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">이용 후기 작성</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ========================= page-banner-section end ========================= -->
    <body class="container">
        <div class="col-lg-12">
            <main>
                <div class="text-center" style ="padding: 20px;">    
                </div>
                <div class="row g-12">
                    <div class="col-md-12 col-lg-12">
                        <h4 class="mb-3"></h4>
                        <h2>이용후기 작성</h2>
                        <br/>
                        <br/>
                        
                        <form class="needs-validation" action="/pet/review/insert.do">
                            <div class="row lg-3">
                                <div class="col-lg-3">
                                    <h4>이용자 성함</h4>
                                    <input type="text" class="form-control" name="member_id" id="member_id" value="${user.member_id}" required>

                                </div>
                                <div class="col-lg-3">
                                    <h4>펫시터 성함</h4>
                                    <input type="text" class="form-control" name="sitter_name" id="sitter_name" value="${user.member_id}" required>
                                </div>
                                
                                <div class="col-lg-8 pt-30">
                                	<h4>평점</h4>
                                </div>
                                
                                <div class="row align-items-center pt-10 pl-50">
                                
                                    <div class="form-check col-1">
                                        <input id="review_rate" name="review_rate" type="radio" class="form-check-input" value="1" required>
                                        <label class="form-check-label" for="review_rate">1점</label>
                                    </div>
                                    <div class="form-check col-1">
                                        <input id="review_rate2" name="review_rate" type="radio" class="form-check-input" value="2" required>
                                        <label class="form-check-label" for="review_rate2">2점</label>
                                    </div>
                                    <div class="form-check col-1">
                                        <input id="review_rate3" name="review_rate" type="radio" class="form-check-input" value="3" required>
                                        <label class="form-check-label" for="review_rate3">3점</label>
                                    </div>
                                    <div class="form-check col-1">
                                        <input id="review_rate4" name="review_rate" type="radio" class="form-check-input" value="4" required>
                                        <label class="form-check-label" for="review_rate4">4점</label>
                                    </div>
                                    <div class="form-check col-1">
                                        <input id="review_rate5" name="review_rate" type="radio" class="form-check-input" value="5" checked required>
                                        <label class="form-check-label" for="review_rate5">5점</label>
                                    </div>
                                </div>
	                                
                                <div class="col-lg-12 pt-30">
                                    <h4>내용</h4>
                                    <div class="col-lg-12 pt-10 pb-30">
                                        <textarea name="review" id="review" placeholder="내용을 작성해주세요." rows="12" cols="102" class="form-control"></textarea>

                                    </div>
                                </div>
                                
                                <div class="col-lg-12">
                                    <h4>첨부파일</h4>
                                    <div class="row align-items-center">
                                        <div class="col-lg-1 pt-10">
                                            <button class="btn btn-primary" type="submit">file</button>
                                        </div>
                                        <div class="col-lg-11 pt-10">
                                            <input type="text" class="form-control" name="review_file" id="review_file" placeholder="파일은 000 mb 제한 입니다." required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">

                               <div class="button text-center">
                                   <button type="submit" class="theme-btn">등록</button>
                                   <a href="/pet/menu/review.do" role="button" type="submit" class="theme-btn">취소</a>
                               </div>

                            </div>
                        </form>
                        
                    </div>
                </div>
            </main>
        </div>
    </body>
</html>