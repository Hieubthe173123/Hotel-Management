<%-- 
    Document   : properties.jsp
    Created on : Mar 2, 2024, 2:26:14 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head >

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title>Villa By Bthieu</title>

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

        <div class="page-heading header-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <span class="breadcrumb"><a href="#">Trang Chủ</a> / Villa</span>
                        <h3>Properties</h3>
                    </div>
                </div>
            </div>
        </div>
          <jsp:include page="Search.jsp"></jsp:include>
        <div class="section properties">
            <div class="container">
                <!--                <li>
                                        <a class="is_active" href="villas" data-filter="*">Tất Cả</a>
                                    </li>-->
                
                <ul class="properties-filter">
                     <li>
                    <div class="tatcacontent"> <a href="villas" data-filter="*">Tất Cả</a></div>
                </li>

                    <!--                    <li>
                                            <a class="is_active" href="#" data-filter="*">Tất Cả</a>
                                        </li>-->

                    <c:forEach items="${requestScope.listC}" var="o">
                        <li>
                            <a style="" data-filter=".adv .str .rac" href="category?cid=${o.cid}">${o.cname}</a>
                        </li>
                    </c:forEach>

                    <!--                    <li>
                                            <a class="is_active" href="#" data-filter="*">Tất Cả</a>
                                        </li>-->

                    <!--                   <li> 
                                            <a href="#!" data-filter=".adv">Apartment</a>
                                        </li>
                                        <li>
                                            <a href="#!" data-filter=".str">Villa House</a>
                                        </li>
                                        <li>
                                            <a href="#!" data-filter=".rac">Penthouse</a>
                                        </li>-->
                </ul>

                <div class="row properties-box">
                    <c:forEach items ="${listV}" var ="v">
                        <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 ">
                            <div class="item">
                                <a><img src="assets/images/${v.image}" alt=""></a>
                                <span class="category">${v.categories}</span>
                                <h6>${v.price}</h6>
                                <h4><a href="detail?pid=${v.id} ">${v.name}</a></h4>
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
                                    <a href="calendar?vid=${v.id}">Đặt Lịch</a>
                                </div>
                            </div>  
                        </div>
                    </c:forEach>
                </div>
                <!--                <div class="row properties-box">
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 adv">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-01.jpg" alt=""></a>
                                            <span class="category">Luxury Villa</span>
                                            <h6>$2.264.000</h6>
                                            <h4><a href="property-details.html">18 Old Street Miami, OR 97219</a></h4>
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
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 str">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-02.jpg" alt=""></a>
                                            <span class="category">Luxury Villa</span>
                                            <h6>$1.180.000</h6>
                                            <h4><a href="property-details.html">54 New Street Florida, OR 27001</a></h4>
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
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 adv rac">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-03.jpg" alt=""></a>
                                            <span class="category">Luxury Villa</span>
                                            <h6>$1.460.000</h6>
                                            <h4><a href="property-details.html">26 Mid Street Portland, OR 38540</a></h4>
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
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 str">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-04.jpg" alt=""></a>
                                            <span class="category">Apartment</span>
                                            <h6>$584.500</h6>
                                            <h4><a href="property-details.html">12 Hope Street Portland, OR 12650</a></h4>
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
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac str">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-05.jpg" alt=""></a>
                                            <span class="category">Penthouse</span>
                                            <h6>$925.600</h6>
                                            <h4><a href="property-details.html">34 Hope Street Portland, OR 42680</a></h4>
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
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-06.jpg" alt=""></a>
                                            <span class="category">Modern Condo</span>
                                            <h6>$450.000</h6>
                                            <h4><a href="property-details.html">22 Hope Street Portland, OR 16540</a></h4>
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
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac str">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-03.jpg" alt=""></a>
                                            <span class="category">Luxury Villa</span>
                                            <h6>$980.000</h6>
                                            <h4><a href="property-details.html">14 Mid Street Miami, OR 36450</a></h4>
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
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-02.jpg" alt=""></a>
                                            <span class="category">Luxury Villa</span>
                                            <h6>$1.520.000</h6>
                                            <h4><a href="property-details.html">26 Old Street Miami, OR 12870</a></h4>
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
                                    <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
                                        <div class="item">
                                            <a href="property-details.html"><img src="assets/images/property-01.jpg" alt=""></a>
                                            <span class="category">Luxury Villa</span>
                                            <h6>$3.145.000</h6>
                                            <h4><a href="property-details.html">34 New Street Miami, OR 24650</a></h4>
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
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <ul class="pagination">
                                            <li><a href="#">1</a></li>
                                            <li><a class="is_active" href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">>></a></li>
                                        </ul>
                                    </div>
                                </div>-->
            </div>
        </div>

        <footer>
            <div class="container">
                <div class="col-lg-12">
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