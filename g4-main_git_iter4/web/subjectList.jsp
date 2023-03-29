<%-- 
    Document   : subjectList
    Created on : Jan 30, 2023, 10:58:09 AM
    Author     : TUF GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import = "model.*" %>
<%@page import = "dal.*" %>
<%@page import = "java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<%
    List<Subject> list = (List<Subject>) request.getAttribute("subject");
%>  
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title >List of Subject</title>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="css/style_banner.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">

        <!--navbar doc-->
        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">
    
    </head>



    <body>


        <%--<jsp:include page="header1.jsp"/>--%>
        <!-- SIDEBAR -->
        <jsp:include page="sidebar.jsp"/>
        <div class="main-image">
            <div class="heading_banner container">
                <h1><span style="color: white">Subject</span></h1>
                <a class="button banner_button" href="#">scroll down to see website content &nbsp;<i class="fa fa-hand-point-down"></i></a>
            </div>
        </div>


        <section class="ftco-section">
            <div class="container">
                <!--                <div class="row justify-content-center">
                                    <div class="col-md-6 text-center mb-5">
                                        <h2 class="heading-section">Subject Table</h2>
                                    </div>
                                </div>-->
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center mb-4" style=" font-weight: bold;">FPTU Subject List</h1>
                        <div class="table-wrap">
                            <form method="POST" action="listSubject">
                                <table class="auto-style1" style="margin: 15px;">
                                    <tr>
                                        <td class="auto-style2" style="text-align: right">
                                            <label class="form-check-label" for="inlineFormCheck">
                                                Enter Subject: 
                                            </label>
                                        </td>
                                        <td>
                                            <div class="container">
                                                <div class="row">
                                                    <div class="form-inline">
                                                        <div class="input-group">
                                                            <select name="search-type" id="ddlSeachOn" class="text form-select rounded ml-2 mr-2" style="width:110px;height: auto; font-size: inherit">
                                                                <option value="1" ${param["search-type"]==1?"selected":""}>Code</option>
                                                                <option value="2"  ${param["search-type"]==2?"selected":""}>Name</option>
                                                            </select>
                                                            <input name="search"  type="text" id="txtKeyword" value="${param["search"]}" class="form-control rounded mr-2" style="width:267px;font-size: inherit; margin: 0 10px;" />
                                                            <span class="input-group-btn">
                                                                <input type="submit"  value="Search" id="btnSearch" class="btn btn-success" style="width:100px;" />
                                                            </span>
                                                        </div>
                                                        <c:if test="${sessionScope.roleName == 'admin' || 'crdd'}">
                                                            <a  style="margin-left:29rem;" class="btn btn-primary" href="SubjectCreate.jsp">Add new</a>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                </table>
                            </form>
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr>
                                        <th>ID</th>
                                        <th>Subject Code</th>
                                        <th>Subject Name</th>
                                        <th>Credit</th>
                                        <th>Degree Level</th>
                                            <c:if test="${sessionScope.roleName == 'admin' || 'crdd'}">
                                            <th>Status</th>
                                            <th>Change Status</th>
                                            <th>Delete</th>

                                        </c:if>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.subject}" var="s">
                                        <tr>
                                            <td>${s.id} </td>
                                            <td>${s.subject_Code} </td>
                                            <td>${s.subject_Name} </td>
                                            <td>${s.no_credit} </td>
                                            <td>${s.degree_level} </td>
                                            <c:if test="${sessionScope.roleName == 'admin' || 'crdd'}">
                                                <td>${s.isStatus()}</td>
                                                <c:if test="${!s.isStatus()}">
                                                    <td><a href="SubjectChangeStatus?subject_code=${s.getSubject_Code()}&status=1" class="btn btn-primary"> Active</a></td>           
                                                </c:if>
                                                <c:if test="${s.isStatus()}">
                                                    <td><a href="SubjectChangeStatus?subject_code=${s.getSubject_Code()}&status=0" class="btn btn-primary"> Inactive</a></td>           
                                                </c:if>
                                                <td><a href="delete?subject_code=${s.getSubject_Code()}" class="btn btn-danger">Delete</a></td>
                                            </c:if>
                                        </tr>
                                    </c:forEach> 

                                    

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>                        
    </body>
    <jsp:include page="footer1.jsp"/>

    <!--    <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="about footer-item">
                            <div class="logo">
                                <a href="#"><img src="assets/images/logo_fpt.png" alt="Onix Digital TemplateMo"></a>
                            </div>
                            <a href="#">daihocfpt@fpt.edu.vn</a>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="services footer-item">
                            <h4>HÀ NỘI</h4>
                            <ul>
                                <li><a href="#">Khu Giáo dục và Đào tạo – Khu Công nghệ cao Hòa Lạc – Km29 Đại lộ Thăng Long, H. Thạch Thất, TP. Hà Nội</a></li>
                                <li><a href="#">Điện thoại: 024 7300 1866</a></li>
    
                                <li><a href="#">Email: daihocfpt@fpt.edu.vn</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="community footer-item">
                            <h4>TP.HỒ CHÍ MINH</h4>
                            <ul>
                                <li><a href="#">Lô E2a-7, Đường D1 Khu Công nghệ cao, P. Long Thạnh Mỹ, TP. Thủ Đức, TP. Hồ Chí Minh</a></li>
                                <li><a href="#">Điện thoại: 028 7300 1866</a></li>
                                <li><a href="#">Email: daihocfpt@fpt.edu.vn</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="community footer-item">
                            <h4>ĐÀ NẴNG</h4>
                            <ul>
                                <li><a href="#">Khu đô thị công nghệ FPT Đà Nẵng, P. Hoà Hải, Q. Ngũ Hành Sơn, TP. Đà Nẵng</a></li>
                                <li><a href="#">Điện thoại: 0236 730 1866</a></li>
                                <li><a href="#">Email: daihocfpt@fpt.edu.vn</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="copyright">
                            <p>Copyright © 2023 FPT University. All rights reserved. 
                                <br>
                                Designed by <a rel="nofollow" href="https://templatemo.com" title="free CSS templates">Group 4</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer> -->
</html>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/animation.js"></script>
<script src="assets/js/imagesloaded.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/scroll_to_top.js"></script>

 <script src="css/Admin_dashboard.js"></script>


<script>
// Acc
    $(document).on("click", ".naccs .menu div", function () {
        var numberIndex = $(this).index();

        if (!$(this).is("active")) {
            $(".naccs .menu div").removeClass("active");
            $(".naccs ul li").removeClass("active");

            $(this).addClass("active");
            $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass("active");

            var listItemHeight = $(".naccs ul")
                    .find("li:eq(" + numberIndex + ")")
                    .innerHeight();
            $(".naccs ul").height(listItemHeight + "px");
        }
    });
</script>