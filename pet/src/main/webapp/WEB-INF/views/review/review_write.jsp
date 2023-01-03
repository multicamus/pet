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
    <body class="">
        <div class="container">
            <main>
                <div class="text-center" style ="padding: 20px;">    
                </div>
                <div class="row g-12">
                    <div class="col-md-12 col-lg-12">
                        <h4 class="mb-3"></h4>
                        <h2>이용후기 작성</h2>
                        <br />
                        <br />
                        <form class="needs-validation" novalidate>
                            <div class="row g-3">
                                <div class="col-sm-3">
                                    <label for="lastName" class="form-label">펫시터 성함</label>
                                    <input type="text" class="form-control" id="lastName" placeholder="" value=""
                                        required>
                                    <div class="invalid-feedback">
                                        입력시 피드백
                                    </div>
                                </div>
                                <label for="lastName" class="form-label">평점</label>
                                <div class="row align-items-center">
                                    <div class="form-check col-1">
                                        <input id="" name="paymentMethod" type="radio" class="form-check-input"
                                            required>
                                        <label class="form-check-label" for=""> 1 점</label>
                                    </div>
                                    <div class="form-check col-1">
                                        <input id="" name="paymentMethod" type="radio" class="form-check-input"
                                            required>
                                        <label class="form-check-label" for="">2점</label>
                                    </div>
                                    <div class="form-check col-1">
                                        <input id="" name="paymentMethod" type="radio" class="form-check-input"
                                            required>
                                        <label class="form-check-label" for="">3점</label>
                                    </div>
                                    <div class="form-check col-1">
                                        <input id="" name="paymentMethod" type="radio" class="form-check-input"
                                            required>
                                        <label class="form-check-label" for="">4점</label>
                                    </div>
                                    <div class="form-check col-1">
                                        <input id="" name="paymentMethod" type="radio" class="form-check-input"
                                            required>
                                        <label class="form-check-label" for="">5점</label>
                                    </div>
                                </div>
                                <div class="col-sm-14">
                                    <label for="lastName" class="form-label">내용</label>
                                    <div class="col-14">
                                        <textarea name="" id="" placeholder="" rows="12" cols="102"
                                            class="form-control ">
                                        </textarea>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <label for="address" class="form-label">첨부파일</label>
                                    <div class="row align-items-center">
                                        <div class="col-1">
                                            <button class=" btn btn-primary  " type="submit">file</button>
                                        </div>
                                        <div class="col-11">
                                            <input type="text" class="form-control " id="" placeholder="" required>
                                        </div>
                                    </div>
                                    <div class="invalid-feedback">
                                        입력시 피드백
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="button text-center ">
                                        <br/>
                                        <br/>
                                        <a href="/pet/review" role="button" type="submit" class="theme-btn">등록/수정</button>
                                        </a>
                                        	<button type="submit" class="theme-btn">취소</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </main>
        </div>
    </body>
</html>