<%-- 
    Document   : Tienich.jsp
    Created on : Mar 2, 2024, 2:24:04 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- 
    Document   : properties.jsp
    Created on : Mar 2, 2024, 2:26:14 PM
    Author     : admin
--%>


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
        <link rel="stylesheet" href="./assets/css/templatemo-villa-agency.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
        <link rel="stylesheet" href="./assets/css/booking.css"/>
        <!--
        
        TemplateMo 591 villa agency
        
        https://templatemo.com/tm-591-villa-agency
        
        -->
   
    </head>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
        <!-- ***** Header Area End ***** -->

        <div class="page-heading header-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <span class="breadcrumb"><a href="#">Trang Chủ</a> /Đặt Lịch</span>
                        <h3>Properties</h3>
                    </div>
                </div>
            </div>
        </div>

        <div class="image_content">
            <form action="calendar" class="booking_form" method="POST">

                <div class="date_content">
                    <input type="date" name="checkinDate" placeholder="Check in" required="required">
                    <input type="date" name="checkoutDate" placeholder="Check out" required="required">
                    <input type="text" name="customer" placeholder="Tên Khách Hàng" required="required">
                    <input type="text" name ="villaname" placeholder="Villa" required="required">

                </div>

                <div>
                    <button class="booking_button trans_200" type="submit">Book Now</button>
                </div>

            </form>
        </div>






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