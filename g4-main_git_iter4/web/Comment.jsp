<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title>FPT Learning Materials System</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">
        <link rel="stylesheet" href="css/style_banner.css">

        <!--navbar doc-->
        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">

        <style>
            body{
                background-color: white;
            }

            #heading{
                font-size: 30px;
                color: black;
                text-transform: uppercase;
                font-weight: bold;
                text-align: center;
                margin-bottom: 15px;
            }
            /*            table{
                            width:95%;
            
                             for custom scrollbar for webkit browser
            
                            ::-webkit-scrollbar {
                                width: 6px;
                            }
                            ::-webkit-scrollbar-track {
                                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
                            }
                            ::-webkit-scrollbar-thumb {
                                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
                            }
                        }*/

            /*css button*/
            .btn-52,
            .btn-52 *,
            .btn-52 :after,
            .btn-52 :before,
            .btn-52:after,
            .btn-52:before {
                border: 0 solid;
                box-sizing: border-box;
            }
            .btn-52 {
                -webkit-tap-highlight-color: transparent;
                -webkit-appearance: button;
                background-color: #6fa8dc;
                background-image: none;
                color: #fff;
                cursor: pointer;
                font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont,
                    Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif,
                    Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;
                font-size: 100%;
                line-height: 1.5;
                margin: 0;
                -webkit-mask-image: -webkit-radial-gradient(#000, #fff);
                padding: 0;
            }
            .btn-52:disabled {
                cursor: default;
            }
            .btn-52:-moz-focusring {
                outline: auto;
            }
            .btn-52 svg {
                display: block;
                vertical-align: middle;
            }
            .btn-52 [hidden] {
                display: none;
            }
            .btn-52 {
                border: 1px solid;
                border-radius: 999px;
                box-sizing: border-box;
                display: block;
                font-weight: 900;
                overflow: hidden;
                padding: 1.2rem 3rem;
                position: relative;
                text-transform: uppercase;
            }
            .btn-52 .original {
                background: #82c4c4;
                color: #fff;
                display: grid;
                inset: 0;
                place-content: center;
                position: absolute;
                transition: transform 0.2s;
            }
            .btn-52:hover .original {
                transform: translateY(100%);
            }
            .btn-52 .letters {
                display: inline-flex;
            }
            .btn-52 span {
                opacity: 0;
                transform: translateY(-15px);
                transition: transform 0.2s, opacity 0.2s;
            }
            .btn-52:hover span {
                opacity: 1;
                transform: translateY(0);
            }
            .btn-52:hover span:nth-child(2) {
                transition-delay: 0.1s;
            }
            .btn-52:hover span:nth-child(3) {
                transition-delay: 0.2s;
            }
            .btn-52:hover span:nth-child(4) {
                transition-delay: 0.3s;
            }
            .btn-52:hover span:nth-child(5) {
                transition-delay: 0.4s;
            }
            .btn-52:hover span:nth-child(6) {
                transition-delay: 0.5s;
            }

            .table-bordered tr td:first-child{
                background-color: #ebedeb;
                color: black;
                font-weight: bold;
            }

            /*css table mapping*/
            /*            .plo , table{
                            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                            border-collapse: collapse;
                            width: 100%;
                            border-collapse: separate;
                            border-spacing: 0 0.8em;
                            box-sizing: border-box;
                            font-size: 16px;
                            font-weight: 400;
                            line-height: 1.5em;
                            display: table;
                            border-collapse: separate;
                            text-indent: initial;
                            border-color: gray;
                        }*/

            /*            .plo th .header_PLO{
                            border: 1px solid rgba(0,0,0,.05);
                            padding-top: 12px;
                            padding-bottom: 12px;
                            padding-left: 6px;
                            padding-right: 6px;
                            text-align: center;
                            background-color: #F2994A;
                            color: white;
                            font-weight: bold;
                        }*/

            #after_hover:hover{
                cursor: pointer;
                background-color: lightgrey;
            }

            /*comment css*/
            .mt-50 {
                margin-top: 50px;
            }
            .mb-100 {
                margin-bottom: 100px;
            }
            .card {
                position: relative;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                -ms-flex-direction: column;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 0px solid transparent;
                border-radius: 0px;
            }
            .card-body {
                -webkit-box-flex: 1;
                -ms-flex: 1 1 auto;
                flex: 1 1 auto;
                padding: 1.25rem;
            }
            .card .card-title {
                position: relative;
                font-weight: 600;
                margin-bottom: 10px;
            }
            .comment-widgets {
                position: relative;
                margin-bottom: 10px;
            }
            .comment-widgets .comment-row {
                border-bottom: 1px solid transparent;
                padding: 14px;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                margin: 10px 0;
            }
            .p-2 {
                padding: 0.5rem !important;
            }
            .comment-text {
                padding-left: 15px;
            }
            .w-100 {
                width: 100% !important;
            }
            .m-b-15 {
                margin-bottom: 15px;
            }
            .btn-sm {
                padding: 0.25rem 0.5rem;
                font-size: 0.76563rem;
                line-height: 1.5;
                border-radius: 1px;
            }
            .btn-cyan {
                color: #fff;
                background-color: #27a9e3;
                border-color: #27a9e3;
            }
            .btn-cyan:hover {
                color: #fff;
                background-color: #1a93ca;
                border-color: #198bbe;
            }
            .comment-widgets .comment-row:hover {
                background: rgba(0, 0, 0, 0.05);
            }


        </style>

    </head>
    <body>
        <!-- ***** Header Area Start ***** -->
        <!-- SIDEBAR -->
        <jsp:include page="sidebar.jsp"/>
        <!-- MAIN -->
        <main>
            <div class="head-title">
                <div class="left">
                    <h1>Dashboard</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Dashboard</a>
                        </li>
                        <li><i class='bx bx-chevron-right' ></i></li>
                        <li>
                            <a class="active" href="#">Syllabus Details</a>
                        </li>
                    </ul>
                </div>
            </div>

            <ul class="box-info">
                <li>
                    <i class='bx bxs-calendar-check' ></i>
                    <span class="text">
                        <h3>LO</h3>
                        <p>34</p>
                    </span>
                </li>
                <li>
                    <i class='bx bxs-calendar-check' ></i>
                    <span class="text">
                        <h3>Question</h3>
                        <p>34</p>
                    </span>
                </li>
                <li>
                    <i class='bx bxs-calendar-check' ></i>
                    <span class="text">
                        <h3>Material</h3>
                        <p>56</p>
                    </span>
                </li>
            </ul>
        </main>
        <!-- MAIN -->
        <!-- ***** Header Area End ***** -->

        <!--comment section start-->
        <div style="width: 93%;margin-left: 3.5rem">
            <div class="row d-flex justify-content-center mt-50 mb-100">
                <div class="col-lg-12" style="border: 1px solid lightgray; border-radius: 1rem;">
                    <div class="card">
                        <div class="card-body text-center" style="border-bottom: 1px solid lightgray;">
                            <h4 class="card-title">Comments of Reviewer</h4>
                        </div>
                        <form method="get" action="viewComment">
                            <c:forEach items="${listcomment}" var="c">
                                <input type="text" name="id" hidden>
                                <div class="comment-widgets">
                                    <!-- Comment Row -->
                                    <div class="d-flex flex-row comment-row m-t-0 row">
                                        <div class="col-md mb-auto mt-auto ml-2">
                                            <img
                                                src="images/image_avatar.png"
                                                alt="user"
                                                class="rounded-circle"
                                                style="width: 80%"
                                                />
                                        </div>
                                        <div class="comment-text w-100 col-md-11">
                                            <h6 class="font-medium" style="font-weight: bold; margin-bottom: 5px">${c.name}</h6>
                                            <span class="m-b-15 d-block" style="font-family: cursive">
                                                ${c.details}
                                            </span>
                                            <div class="comment-footer">
                                                <%--<c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd'}">--%>
                                                    <!--<a href="updateComment?id=${c.id}"><i class="fa fa-pencil-square-o fa-lg"></i></a>-->
                                                    <!--<a onclick="messageSuccess(${c.id})"><i class="fa fa-trash-o fa-lg" style="color: red; margin-left: 5px; cursor: pointer"></i></a>-->
                                                <%--</c:if>--%>
                                                    <button class="ml-2 rounded" style="padding:1.5px; background-color: lightskyblue"><a href="viewreportComment">Report</a></button>
                                                    <button class="float-end ml-2 rounded" style="padding:1.5px 3px;"><small>${c.id}</small></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </form>
                        <!-- Card -->
                    </div>
                </div>

                <!-- post commnet -->
                <div class="container-fluid mt-3" style="border: 1px solid rgb(192, 188, 188); padding: 1rem 1rem; border-radius: 1rem;">
                    <form action="addComment" method="post">
                        <label style="font-weight:bold">Send Comment</label>
                        <input type="text" name="name" class="form-control" style="margin-bottom: 10px" placeholder="Enter name...">
                        <textarea class="form-control" type="text" placeholder="Enter your comment..." name="details"/></textarea>
                        <input type="text" name="report" value="valid" hidden>
                    
                        <button type="submit" class="btn btn-cyan btn-sm mt-2">
                            Send
                        </button>
                    </form>
                </div>

            </div>
        </div>
        <!--commnet section end-->

        <!--footer section start-->
        <jsp:include page="footer1.jsp"/>
        <!--footer section end-->

        <script src="css/Admin_dashboard.js"></script>

        <!--message edit data success-->
<!--        <script>
                                                        function messageSuccess(id) {
                                                            var option = confirm('Are you sure to delete?');
                                                            if (option === true) {
                                                                window.document.location.href = "deleteComment?id=" + id;
                                                            }
                                                        }

        </script>-->
      
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    </body>
</html>
