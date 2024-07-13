<%-- 
    Document   : Menu.jsp
    Created on : Mar 6, 2024, 2:07:15 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <!-- *** Preloader Start *** -->
        <div id="js-preloader" class="js-preloader">
            <div class="preloader-inner">
                <span class="dot"></span>
                <div class="dots">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <!-- *** Preloader End *** -->

        <div class="sub-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <ul class="info">
                            <li><i class="fa fa-envelope"></i> trunghieubu866@gmail.com</li>
                            <li><i class="fa fa-map"></i> Vietnam</li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <ul class="social-links">
                            <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                            <li><a href="https://x.com/minthu" target="_blank"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- *** Header Area Start *** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="main-nav">
                            <!-- *** Logo Start *** -->
                            <a href="home" class="logo">
                                <h1>BTHIEU</h1>
                            </a>
                            <!-- *** Logo End *** -->
                            <!-- *** Menu Start *** -->
                            <ul class="nav">

                                <li><a href="home" class="active">Trang Chủ</a></li>
                                <li><a href="villas">Villa</a></li>

                                <li><a href="tienich">Tiện ích</a></li>
                                <li><a href="contact.jsp">Liên Hệ</a></li>
                                <li><a href="Calendar.jsp"><i class="fa fa-calendar"></i> Đặt lịch</a></li>
                                <!--                                                           <li><a href="login.jsp"> Đăng Nhập </a></li>-->
                                <c:if test="${sessionScope.acc == null}">

                                    <li><a href="login.jsp"> Đăng Nhập </a></li>

                                </c:if>
                            </ul> 
                            <c:if test="${not empty sessionScope.acc}">
                                <div class="col-md-2 position-relative">
                                    <img class="user" src="assets/images/user-icon-vector.jpg" alt="">
                                    <div class="taskbar-select-container">
                                        <select  class="taskbar-select" onchange="if (this.value)
                                                    window.location.href = this.value">
                                            <option value=""></option>
                                            <option value="logout">Đăng Xuất</option>
                                            <option value="managevillas">Quản Lý Villa</option>
                                            <c:if test="${sessionScope.acc.isAdmin}">
                                                <option value="manage">Quản Lý</option>
                                            </c:if>


                                        </select>
                                    </div>


                                </div>

                            </c:if>





                            </input>
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- *** Menu End *** -->
                        </nav>
                    </div>

                </div>
            </div>
        </header>

    </body>
</html>