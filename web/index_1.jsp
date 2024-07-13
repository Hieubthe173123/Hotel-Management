<%-- 
    Document   : index_1.jsp
    Created on : Mar 2, 2024, 2:22:29 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title>Villa by BH</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-villa-agency.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
        <!--
        
        TemplateMo 591 villa agency
        
        https://templatemo.com/tm-591-villa-agency
        
        -->
    </head>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>

        <div class="main-banner">
            <div class="owl-carousel owl-banner">
                <div class="item item-1">
                    <div class="header-text">
                        <span class="category">Toronto, <em>Canada</em></span>
                        <h2>Hurry!<br>Get the Best Villa for you</h2>
                    </div>
                </div>
                <div class="item item-2">
                    <div class="header-text">
                        <span class="category">Melbourne, <em>Australia</em></span>
                        <h2>Be Quick!<br>Get the best villa in town</h2>
                    </div>
                </div>
                <div class="item item-3">
                    <div class="header-text">
                        <span class="category">Miami, <em>South Florida</em></span>
                        <h2>Act Now!<br>Get the highest level penthouse</h2>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="fun-facts">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="wrapper">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="counter">
                                        <h2 class="timer count-title count-number" data-to="34" data-speed="1000"></h2>
                                        <p class="count-text ">Buildings<br>Finished Now</p>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="counter">
                                        <h2 class="timer count-title count-number" data-to="12" data-speed="1000"></h2>
                                        <p class="count-text ">Years<br>Experience</p>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="counter">
                                        <h2 class="timer count-title count-number" data-to="24" data-speed="1000"></h2>
                                        <p class="count-text ">Awwards<br>Won 2023</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section best-deal">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="section-heading">
                            <h6>| Best Deal</h6>
                            <h2>Villa Mới Nhất</h2>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="tabs-content">
                            <div class="row">
                                <div class="nav-wrapper ">
<!--                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="appartment-tab" data-bs-toggle="tab" data-bs-target="#appartment" type="button" role="tab" aria-controls="appartment" aria-selected="true">Appartment</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="villa-tab" data-bs-toggle="tab" data-bs-target="#villa" type="button" role="tab" aria-controls="villa" aria-selected="false">Villa House</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="penthouse-tab" data-bs-toggle="tab" data-bs-target="#penthouse" type="button" role="tab" aria-controls="penthouse" aria-selected="false">Penthouse</button>
                                        </li>
                                    </ul>-->
                                </div>              
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="appartment" role="tabpanel" aria-labelledby="appartment-tab">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="info-table">
                                                    <ul>
                                                        <li>Địa Chỉ <span>${p.address}</span></li>
                                                        <li>Miêu tả <span>${p.description}</span></li>
                                                        <li>Số Người  <span>${p.maxOccupancy}</span></li>
                                                        <li>Tiện Ích <span>${p.amenities}</span></li>
                                                        <li>Giá Thuê<span>${p.price}</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <img src="assets/images/${p.image}" alt="">
                                            </div>
                                            <div class="col-lg-3">
                                                <h4>${p.name}</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut labore et dolore magna aliqua quised ipsum suspendisse. 
                                                    <br><br>When you need free CSS templates, you can simply type TemplateMo in any search engine website. In addition, you can type TemplateMo Portfolio, TemplateMo One Page Layouts, etc.</p>
                                                <div class="icon-button">
                                                    <a href="property-details.html"><i class="fa fa-calendar"></i> Schedule a visit</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
<!--                                    <div class="tab-pane fade" id="villa" role="tabpanel" aria-labelledby="villa-tab">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="info-table">
                                                    <ul>
                                                        <li>Total Flat Space <span>250 m2</span></li>
                                                        <li>Floor number <span>26th</span></li>
                                                        <li>Number of rooms <span>5</span></li>
                                                        <li>Parking Available <span>Yes</span></li>
                                                        <li>Payment Process <span>Bank</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <img src="assets/images/deal-02.jpg" alt="">
                                            </div>
                                            <div class="col-lg-3">
                                                <h4>Detail Info About Villa</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut labore et dolore magna aliqua quised ipsum suspendisse. <br><br>Swag fanny pack lyft blog twee. JOMO ethical copper mug, succulents typewriter shaman DIY kitsch twee taiyaki fixie hella venmo after messenger poutine next level humblebrag swag franzen.</p>
                                                <div class="icon-button">
                                                    <a href="property-details.html"><i class="fa fa-calendar"></i> Schedule a visit</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="penthouse" role="tabpanel" aria-labelledby="penthouse-tab">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="info-table">
                                                    <ul>
                                                        <li>Total Flat Space <span>320 m2</span></li>
                                                        <li>Floor number <span>34th</span></li>
                                                        <li>Number of rooms <span>6</span></li>
                                                        <li>Parking Available <span>Yes</span></li>
                                                        <li>Payment Process <span>Bank</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <img src="assets/images/deal-03.jpg" alt="">
                                            </div>
                                            <div class="col-lg-3">
                                                <h4>Extra Info About Penthouse</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut labore et dolore magna aliqua quised ipsum suspendisse. <br><br>Swag fanny pack lyft blog twee. JOMO ethical copper mug, succulents typewriter shaman DIY kitsch twee taiyaki fixie hella venmo after messenger poutine next level humblebrag swag franzen.</p>
                                                <div class="icon-button">
                                                    <a href="property-details.html"><i class="fa fa-calendar"></i> Schedule a visit</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="properties section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 offset-lg-4">
                        <div class="section-heading text-center">
                            <h6>|Villa</h6>
                            <h2>We Provide The Best Property You Like</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items ="${listV}" var ="v">
                        <div class="col-lg-4 col-md-6">
                            <div class="item">
                                <a href="detail"><img src="assets/images/${v.image}" alt=""></a>
                                <span class="category">${v.categories}</span>
                                <h6>${v.price}</h6>
                                <h4><a href="detail?pid=${v.id}">${v.name}</a></h4>
                                <ul>
                                    
                                    <li>Địa chỉ: <span>${v.address}</span></li> <br/>
                                      <li>Miêu tả : <span>${v.description}</span></li><br/>
                                      <li>Số người : <span>${v.maxOccupancy}</span></li><br/>
                                        <li>Tiện ích : <span>${v.amenities}</span></li><br/>
                                     
                                    <!--              <li>Phòng tắm: <span>8</span></li>-->
                                    <!--              <li>Diện tích: <span>545m2</span></li>
                                                  <li>Tầng: <span>3</span></li>
                                                  <li>Công viên: <span>6 spots</span></li>-->
                                </ul>
                                <div class="main-button">
                                    <a href="calender?did=${v.id}">Đặt Lịch</a>
                                </div>
                            </div>  
                        </div>
                    </c:forEach>


<!--                    <div class="col-lg-4 col-md-6">
                        <div class="item">
                            <a href="property-details.html"><img src="assets/images/property-02.jpg" alt=""></a>
                            <span class="category">Luxury Villa</span>
                            <h6>$1.180.000</h6>
                            <h4><a href="property-details.html">54 Mid Street Florida, OR 27001</a></h4>
                            <ul>
                                <li>Phòng ngủ: <span>8</span></li>
                                <li>Phòng tắm: <span>8</span></li>
                                <li>Diện tích: <span>545m2</span></li>
                                <li>Tầng: <span>3</span></li>
                                <li>Công viên: <span>6 spots</span></li>
                            </ul>
                            <div class="main-button">
                                <a href="property-details.html">Đặt Lịch</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="item">
                            <a href="property-details.html"><img src="assets/images/property-03.jpg" alt=""></a>
                            <span class="category">Luxury Villa</span>
                            <h6>$1.460.000</h6>
                            <h4><a href="property-details.html">26 Old Street Miami, OR 38540</a></h4>
                            <ul>
                                <li>Phòng ngủ: <span>8</span></li>
                                <li>Phòng tắm: <span>8</span></li>
                                <li>Diện tích: <span>545m2</span></li>
                                <li>Tầng: <span>3</span></li>
                                <li>Công viên: <span>6 spots</span></li>
                            </ul>
                            <div class="main-button">
                                <a href="property-details.html">Đặt Lịch</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="item">
                            <a href="property-details.html"><img src="assets/images/property-04.jpg" alt=""></a>
                            <span class="category">Apartment</span>
                            <h6>$584.500</h6>
                            <h4><a href="property-details.html">12 New Street Miami, OR 12650</a></h4>
                            <ul>
                                <li>Phòng ngủ: <span>8</span></li>
                                <li>Phòng tắm: <span>8</span></li>
                                <li>Diện tích: <span>545m2</span></li>
                                <li>Tầng: <span>3</span></li>
                                <li>Công viên: <span>6 spots</span></li>
                            </ul>
                            <div class="main-button">
                                <a href="property-details.html">Đặt Lịch</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="item">
                            <a href="property-details.html"><img src="assets/images/property-05.jpg" alt=""></a>
                            <span class="category">Penthouse</span>
                            <h6>$925.600</h6>
                            <h4><a href="property-details.html">34 Beach Street Miami, OR 42680</a></h4>
                            <ul>
                                <li>Phòng ngủ: <span>8</span></li>
                                <li>Phòng tắm: <span>8</span></li>
                                <li>Diện tích: <span>545m2</span></li>
                                <li>Tầng: <span>3</span></li>
                                <li>Công viên: <span>6 spots</span></li>
                            </ul>
                            <div class="main-button">
                                <a href="property-details.html">Đặt Lịch</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="item">
                            <a href="property-details.html"><img src="assets/images/property-06.jpg" alt=""></a>
                            <span class="category">Modern Condo</span>
                            <h6>$450.000</h6>
                            <h4><a href="property-details.html">22 New Street Portland, OR 16540</a></h4>
                            <ul>
                                <li>Phòng ngủ: <span>8</span></li>
                                <li>Phòng tắm: <span>8</span></li>
                                <li>Diện tích: <span>545m2</span></li>
                                <li>Tầng: <span>3</span></li>
                                <li>Công viên: <span>6 spots</span></li>
                            </ul>
                            <div class="main-button">
                                <a href="property-details.html">Đặt Lịch</a>
                            </div>
                        </div>
                    </div>-->
                </div>
            </div>
        </div>

        <div class="contact section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 offset-lg-4">
                        <div class="section-heading text-center">
                            <h6>| Liên Hệ</h6>
                            <h2>Get In Touch With Our Agents</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="contact-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div id="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12469.776493332698!2d-80.14036379941481!3d25.907788681148624!2m3!1f357.26927939317244!2f20.870722720054623!3f0!3m2!1i1024!2i768!4f35!3m3!1m2!1s0x88d9add4b4ac788f%3A0xe77469d09480fcdb!2sSunny%20Isles%20Beach!5e1!3m2!1sen!2sth!4v1642869952544!5m2!1sen!2sth" width="100%" height="500px" frameborder="0" style="border:0; border-radius: 10px; box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);" allowfullscreen=""></iframe>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="item phone">
                                    <img src="assets/images/phone-icon.png" alt="" style="max-width: 52px;">
                                    <h6>0913339709<br><span>Phone Number</span></h6>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="item email">
                                    <img src="assets/images/email-icon.png" alt="" style="max-width: 52px;">
                                    <h6>hangbuiwk@gmail.com<br><span>Business Email</span></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <form id="contact-form" action="" method="post">
                            <div class="row">
                                <div class="col-lg-12">
                                    <fieldset>
                                        <label for="name">Họ Và Tên</label>
                                        <input type="name" name="name" id="name" placeholder="Your Name..." autocomplete="on" required>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <label for="email">Email</label>
                                        <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your E-mail..." required="">
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <label for="subject">Tiêu Đề</label>
                                        <input type="subject" name="subject" id="subject" placeholder="Subject..." autocomplete="on" >
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <label for="message">Tin Nhắn</label>
                                        <textarea name="message" id="message" placeholder="Your Message"></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="orange-button">Gửi</button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <div class="container">
                <div class="col-lg-8">
                    <p>Copyright © 2048 Villa Agency Co., Ltd. All rights reserved. 

                        Design: <a rel="nofollow" href="https://templatemo.com" target="_blank">TemplateMo</a></p>
                </div>
            </div>
        </footer>

        <!-- Scripts -->
        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/isotope.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/counter.js"></script>
        <script src="assets/js/custom.js"></script>

    </body>
</html>