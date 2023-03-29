<%-- 
    Document   : viewProfile
    Created on : Feb 5, 2023, 5:43:59 PM
    Author     : 84379
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View User Profile</title>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">

        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <script src="https://cdn.tiny.cloud/1/rtn0943z5vkgybouu9pqomwwti7brffhuyshp2ec4tn767ez/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

        <script src="https://localhost/tinymce.min.js" referrerpolicy="origin"></script>
        <!--<script src="./ckeditor5-build-classic/ckeditor.js"></script>-->
        <script src="https://cdn.tiny.cloud/1/rtn0943z5vkgybouu9pqomwwti7brffhuyshp2ec4tn767ez/tinymce/6/plugins.min.js" referrerpolicy="origin"></script>

        <style>
            html{
                background:#c5cae9;
            }

            body{
                background:#c5cae9;
            }

        </style>
    </head>
    <body>
        <!-- ***** Header Area Start ***** -->
        <jsp:include page="header_1.jsp"/>
        <!-- ***** Header Area End ***** -->

        <c:set var="u" value="${requestScope.user}"/>
        <div class="container" style="margin-top:10rem;">
            <!--            <div class="row logo">
                            <img class="col-md-4 img-fluid align-self-center" src="assets/images/logo_fpt.png" alt="image logo"/>
                        </div>-->
            <div class="row flex-lg-nowrap">
                <div class="col-12 col-lg-auto mb-3" style="width: 200px;">
                    <div class="card p-3">
                        <div class="e-navlist e-navlist--active-bg">
                            <ul class="nav">
                                <li class="nav-item"><a class="nav-link px-2 active" href="viewProfile"><i class="fa fa-user-secret"></i><span> Profile</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2" href="EditProfile"><i class="fa fa-fw fa-cog mr-1"></i><span>Edit Profile</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="row">
                        <div class="col mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="e-profile">
                                        <div class="row">
                                            <div class="col-12 col-sm-auto mb-3">
                                                <div class="mx-auto" style="width: 140px;">
                                                    <div class="d-flex justify-content-center align-items-center rounded" style="height: 140px; background-color: rgb(233, 236, 239);">
                                                        <!--<span style="color: rgb(166, 168, 170); font: bold 8pt Arial;">140x140</span>-->
                                                        <img src="${u.photo}" name="photo" width="140px" height="140px">
                                                        <!--<img src="E:\NetBean\g4-main\web\images\image1.jpg" name="photo" width="140px" height="140px">-->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                                                <div class="text-center text-sm-left mb-2 mb-sm-0">
                                                    <h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">${u.uname}</h4>
                                                    <p class="mb-0">${u.roleID.name}</p>
                                                    <div class="mt-2">
                                                        <button class="btn btn-primary" type="button">
                                                            <i class="fa fa-fw fa-camera"></i>
                                                            <span>Photo of ${u.uname}</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="text-center text-sm-right">
                                                    <span class="badge badge-secondary">${u.roleID}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item"><a href="" class="active nav-link">Settings</a></li>
                                        </ul>
                                        <div class="tab-content pt-3">
                                            <div class="tab-pane active">
                                                <form class="form" novalidate="">
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Full Name</label>
                                                                        <input class="form-control" type="text" name="name" placeholder="${u.uname}" readonly>
                                                                    </div>
                                                                </div>
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Email</label>
                                                                        <input class="form-control" type="text" name="username" placeholder="${u.uemail}" readonly>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Phone Number</label>
                                                                        <input class="form-control" type="text" placeholder="${u.umobile}" readonly>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Major</label>
                                                                        <input class="form-control" type="text" placeholder="${u.major}" readonly>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Mode</label>
                                                                        <input class="form-control" type="text" placeholder="${u.mode}" readonly>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col mb-3">
                                                                    <div class="form-group">
                                                                        <label>Description</label>
                                                                        <textarea class="form-control" id="get-data" rows="5" readonly>${u.description}</textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col d-flex justify-content-end">
                                                            <button class="btn btn-primary" type="submit">
                                                                <a href="index.jsp" style="color: white; text-decoration: none;" >
                                                                    Back To Home Page
                                                                </a>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-md-3 mb-3">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="px-xl-3">
                                        <a href="login.jsp"> 
                                            <button class="btn btn-block btn-secondary">
                                                <i class="fa fa-sign-out"></i>
                                                <span>Logout</span>
                                            </button>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <h6 class="card-title font-weight-bold">Support</h6>
                                    <p class="card-text">Should you need any further information, please do not hesitate to contact us</p>
                                    <button type="button" class="btn btn-primary"><a href="index.jsp" style="color:white; text-decoration: none">Contact Us</a></button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!--footer section start-->
        <jsp:include page="footer1.jsp"/>
        <!--footer section end-->


        <!--         link library tiny
                <script type="text/javascript" src="js/jquery.min.js"></script>
                <script type="text/javascript" src="tinymce/js/tinymce/tinymce.min.js"></script>
                <script type="text/javascript" src="tinymce/js/tinymce/tinymce.d.ts"></script>
                <script type="text/javascript" src="js/getdata.js"></script>
                
                <script>
                    tinymce.init({
                        selector: 'textarea#get-data'
                    });
                </script>-->

    </body>
</html>
