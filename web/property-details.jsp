<%-- 
    Document   : property-details.jsp
    Created on : Mar 2, 2024, 2:26:41 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

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
                            <span class="breadcrumb"><a href="#">Trang Chủ</a>  / Villa / Chi Tiết </span>
                            <h3>Single Property</h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-property section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">

                            <div class="main-content">
                                <span class="category">${d.categories}</span>
                            <h4>${d.name}</h4>
                            <div class="main-image">
                                <img src="assets/images/${d.image}" alt="">
                            </div>
                            <p>
                                Dưới bầu trời xanh trong, một căn biệt thự sang trọng hiện lên với vẻ đẹp kiêu sa và quý phái. Tọa lạc giữa một khu vườn rộng lớn, biệt thự được bao quanh bởi hàng cây xanh mướt và những luống hoa rực rỡ sắc màu. Kiến trúc của biệt thự là sự kết hợp tinh tế giữa phong cách cổ điển và hiện đại, với mái vòm cao, cửa sổ lớn đón ánh sáng tự nhiên và ban công rộng rãi để ngắm nhìn cảnh quan xung quanh.

                                <br><br>Bên trong, không gian sống được trang hoàng lộng lẫy với nội thất cao cấp và thiết kế tỉ mỉ. Phòng khách rộng lớn với bộ sofa êm ái, bên cạnh là phòng ăn sang trọng nơi những bữa tiệc tối ấm cúng có thể được tổ chức. Phòng ngủ master là điểm nhấn với giường ngủ lớn, tủ quần áo rộng rãi và phòng tắm riêng biệt đầy đủ tiện nghi. Biệt thự còn có một phòng giải trí với hệ thống âm thanh hiện đại, nơi gia đình có thể quây quần và thư giãn.</p>
                        </div> 
                        <!--                        <div class="accordion" id="accordionExample">
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingOne">
                                                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                                Best useful links ?
                                                            </button>
                                                        </h2>
                                                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                Dolor <strong>almesit amet</strong>, consectetur adipiscing elit, sed doesn't eiusmod tempor kinfolk tonx seitan crucifix 3 wolf moon bicycle rights keffiyeh snackwave wolf same vice, chillwave vexillologist incididunt ut labore consectetur <code>adipiscing</code> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingTwo">
                                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                                How does this work ?
                                                            </button>
                                                        </h2>
                                                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                Dolor <strong>almesit amet</strong>, consectetur adipiscing elit, sed doesn't eiusmod tempor kinfolk tonx seitan crucifix 3 wolf moon bicycle rights keffiyeh snackwave wolf same vice, chillwave vexillologist incididunt ut labore consectetur <code>adipiscing</code> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingThree">
                                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                                Why is Villa the best ?
                                                            </button>
                                                        </h2>
                                                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                Dolor <strong>almesit amet</strong>, consectetur adipiscing elit, sed doesn't eiusmod tempor kinfolk tonx seitan crucifix 3 wolf moon bicycle rights keffiyeh snackwave wolf same vice, chillwave vexillologist incididunt ut labore consectetur <code>adipiscing</code> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>-->
                    </div>
                    <div class="col-lg-4    ">


                        <div class="info-table">
                            <ul>
                                <li>Địa Chỉ : <span>${d.address}</span></li>
                                <li>Miêu tả : <span>${d.description}</span></li>
                                <li>Số Người : <span>${d.maxOccupancy}</span></li>
                                <li>Tiện Ích : <span>${d.amenities}</span></li>
                                <li>Giá Thuê : <span>${d.price}</span></li>
                            </ul>
                        </div>



                    </div>
                </div>
            </div>

            <!--            <div class="section best-deal">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="section-heading">
                                            <h6>| Best Deal</h6>
                                            <h2>Find Your Best Deal Right Now!</h2>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="tabs-content">
                                            <div class="row">
                                                <div class="nav-wrapper ">
                                                    <ul class="nav nav-tabs" role="tablist">
                                                        <li class="nav-item" role="presentation">
                                                            <button class="nav-link active" id="appartment-tab" data-bs-toggle="tab" data-bs-target="#appartment" type="button" role="tab" aria-controls="appartment" aria-selected="true">Appartment</button>
                                                        </li>
                                                        <li class="nav-item" role="presentation">
                                                            <button class="nav-link" id="villa-tab" data-bs-toggle="tab" data-bs-target="#villa" type="button" role="tab" aria-controls="villa" aria-selected="false">Villa House</button>
                                                        </li>
                                                        <li class="nav-item" role="presentation">
                                                            <button class="nav-link" id="penthouse-tab" data-bs-toggle="tab" data-bs-target="#penthouse" type="button" role="tab" aria-controls="penthouse" aria-selected="false">Penthouse</button>
                                                        </li>
                                                    </ul>
                                                </div>              
                                                <div class="tab-content" id="myTabContent">
                                                    <div class="tab-pane fade show active" id="appartment" role="tabpanel" aria-labelledby="appartment-tab">
                                                        <div class="row">
                                                            <div class="col-lg-3">
                                                                <div class="info-table">
                                                                    <ul>
                                                                        <li>Total Flat Space <span>540 m2</span></li>
                                                                        <li>Floor number <span>3</span></li>
                                                                        <li>Number of rooms <span>8</span></li>
                                                                        <li>Parking Available <span>Yes</span></li>
                                                                        <li>Payment Process <span>Bank</span></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <img src="assets/images/deal-01.jpg" alt="">
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <h4>All Info About Apartment</h4>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut labore et dolore magna aliqua quised ipsum suspendisse. <br><br>Swag fanny pack lyft blog twee. JOMO ethical copper mug, succulents typewriter shaman DIY kitsch twee taiyaki fixie hella venmo after messenger poutine next level humblebrag swag franzen.</p>
                                                                <div class="icon-button">
                                                                    <a href="#"><i class="fa fa-calendar"></i> Schedule a visit</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="villa" role="tabpanel" aria-labelledby="villa-tab">
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
                                                                <h4>Detail Info About New Villa</h4>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut labore et dolore magna aliqua quised ipsum suspendisse. <br><br>Swag fanny pack lyft blog twee. JOMO ethical copper mug, succulents typewriter shaman DIY kitsch twee taiyaki fixie hella venmo after messenger poutine next level humblebrag swag franzen.</p>
                                                                <div class="icon-button">
                                                                    <a href="#"><i class="fa fa-calendar"></i> Schedule a visit</a>
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
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut Kinfolk tonx seitan crucifix 3 wolf moon bicycle rights keffiyeh snackwave wolf same vice, chillwave vexillologistlabore et dolore magna aliqua quised ipsum suspendisse. <br><br>Swag fanny pack lyft blog twee. JOMO ethical copper mug, succulents typewriter shaman DIY kitsch twee taiyaki fixie hella venmo after messenger poutine next level humblebrag swag franzen.</p>
                                                                <div class="icon-button">
                                                                    <a href="#"><i class="fa fa-calendar"></i> Schedule a visit</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->

            <footer class="footer-no-gap">
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