<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<!-- ========================= pricing-section start ========================= -->
<section id="pricing" class="pricing-section pt-140 pb-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-7 col-md-10 mx-auto">
                <div class="section-title text-center mb-60">
                    <h2 class="wow fadeInUp" data-wow-delay=".4s">로그인</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-12">
                <div class="pricing-btn text-center wow fadeInUp" data-wow-delay=".3s">
                    <ul class="nav justify-content-center mb-90" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-1-tab" data-bs-toggle="pill" href="#pills-1" role="tab"
                                aria-controls="pills-1" aria-selected="true">Client</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-2-tab" data-bs-toggle="pill" href="#pills-2" role="tab"
                                aria-controls="pills-2" aria-selected="false">Pet Sitter</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-1" role="tabpanel" aria-labelledby="pills-home-tab">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="single-pricing active mb-50">
                            <h4>이용자</h4>
                            <h3>$25.99</h3>
                            <ul>
                                <li>30 Users</li>
                                <li>Minimal Report</li>
                                <li>1GB Data Storage</li>
                                <li>7/24 Support</li>
                                <li>Multiple Agents</li>
                            </ul>
                            <a href="javascript:void(0)" class="theme-btn">로그인</a>
                            <p>No Extra Hidden Charge</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-2" role="tabpanel" aria-labelledby="pills-2-tab">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="single-pricing active mb-50">
                            <h4>펫시터</h4>
                            <div class="contact-form-wrapper">
                 <div class="row">
                     <div class="col-xl-10 col-lg-8 mx-auto">
                         <div class="section-title text-center mb-50">
                             <span class="wow fadeInDown" data-wow-delay=".2s">로그인</span>
                             <h2 class="wow fadeInUp" data-wow-delay=".4s">로그인</h2>
                             <p class="wow fadeInUp" data-wow-delay=".6s">login</p>
                         </div>
                     </div>
                 </div>
                  <form action="#" class="contact-form">
                      <div class="row">
                          <div class="col-md-10">
                              <input type="text" name="id" id="id" placeholder="아이디" required>
                          </div>
                      </div>
                      <div class="row">
                          <div class="col-md-10">
                              <input type="text" name="pass" id="pass" placeholder="패스워드" required>
                          </div>
                      </div>
                  </form>
                 </div>
                            <a href="javascript:void(0)" class="theme-btn">로그인</a>
                            <p>No Extra Hidden Charge</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ========================= pricing-section end ========================= -->
</body>
</html>