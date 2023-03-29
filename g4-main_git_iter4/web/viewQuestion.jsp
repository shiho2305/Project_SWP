<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                background-color: #90d49f;
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
                            <a class="active" href="#">View Question</a>
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

        <div style="width: 95%; margin-left: 3rem; margin-top: 2rem">
            <!--search section-->
            <div class="row mb-4">
                <div class="col-md-9">
                    <form action="viewQuestion" method="get">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <label class="form-check-label" for="inlineFormCheck">
                                        Enter Keyword: 
                                    </label>
                                </td>
                                <td>
                                    <div class="form-inline">
                                        <div class="input-group">
                                            <input name="sid" hidden type="text" id="txtKeyword" value="${param["sid"]}" class="form-control rounded mr-2" style="width:267px;font-size: inherit; margin: 0 10px;" />
                                            <input name="name"  type="text" id="txtKeyword" value="${param["search"]}" class="form-control rounded mr-2" style="width:267px;font-size: inherit; margin: 0 10px;" />
                                            <span class="input-group-btn">
                                                <input type="submit" value="Search"  id="btnSearch" class="btn btn-secondary" style="width:100px;background-color: lightgrey" />
                                            </span>
                                        </div>
                                    </div>
                                </td>
                            </tr>       
                        </table>
                    </form>
                </div> 
            </div>    

            <div class="float-start ml-2 mb-2">
                <p style="color: blueviolet; font-weight: bold">${requestScope.countQuestion} Constructive question(s)</p>
            </div>

            <div class="table-wrap">
                <!--<form action="viewQuestion" method="get">-->
                    <table class="table">
                        <thead style="background-color: #ebedeb">
                            <tr>
                                <th>ID</th>
                                <th>Session No</th>
                                <th>Name</th>
                                <th>Details</th>

                                <c:if test="${sessionScope.roleName == 'head_of_crdd' || sessionScope.roleName == 'staff_of_crdd'}">
                                    <th>Edit</th>
                                    </c:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${qlist}" var="q">
                                <tr>
                                    <td>${q.qid}</td>
                                    <td>${q.sessionNo}</td>
                                    <td>${q.qName}</td>
                                    <td>${q.qDetail}</td>
                                    <c:if test="${sessionScope.roleName == 'head_of_crdd' || sessionScope.roleName == 'staff_of_crdd'}">
                                        <td class="d-flex">
                                            <a id="update" href="editQuestion?qid=${q.qid}" style="color:black"><i class="fa fa-pen-to-square fa-lg"></i></a>
                                            &nbsp;&nbsp;&nbsp;
                                            <a id="delete" style="color:black" onclick="messageSuccess(${q.qid})"><i class="fa fa-trash fa-lg"></i></a>
                                        </td>
                                    </c:if>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                <!--</form>-->
            </div>
            
            <div class="paging" style="text-align: center;margin-top: 2rem; margin-bottom: 2rem;">
                    <c:if test="${param['index']==null }">   
                        <c:set var = "index" scope = "page" value = "1"/>
                    </c:if>
                    <c:if test="${param['index']!=null}">
                        <c:set var = "index" scope = "page" value = "${param['index']}"/>
                    </c:if>
                    <nav aria-label="...">
                        <ul class="pagination">
                            <li class="page-item <c:if test="${index==1}">disabled
                                </c:if>">
                                <a class="page-link" href="viewQuestion?sid=${sid}&index=${index-1}" >Previous</a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="viewQuestion?sid=${sid}&index=${index}" style="color: white;">${index}</a>
                            </li>
                            <li class="page-item <c:if test="${index==numberPage+1}">disabled　
                                </c:if>">
                                <a class="page-link" href="viewQuestion?sid=${sid}&index=${index+1}">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>

            <div class="d-flex justify-content-around" style="margin-top: 2rem;">
                <a href="SyllabusDetail?sid=${list[0].syllabusID}">
                    <button class="btn-52">
                        <div class="original">Return List</div>
                        <div class="letters">
                            <!-- Place each letter in its own element -->
                            <span>R</span>
                            <span>E</span>
                            <span>T</span>
                            <span>U</span>
                            <span>R</span>
                            <span>N</span>
                        </div>
                    </button>
                </a>
                <c:if test="${sessionScope.roleName == 'head_of_crdd' || sessionScope.roleName == 'syllabus_designer'}">
                    <a href="addQuestion?sid=${qlist[0].syllabusID}">
                        <button class="btn-52">
                            <div class="original">Add</div>
                            <div class="letters">
                                <!-- Place each letter in its own element -->
                                <span>A</span>
                                <span>D</span>
                                <span>D</span>
                            </div>
                        </button>
                    </a>
                </c:if>
            </div>
        </div>

        <!--footer section start-->
        <jsp:include page="footer1.jsp"/>
        <!--footer section end-->

        <script src="css/Admin_dashboard.js"></script>

        <!--        <script>
                    function messageSuccess(id) {
                        var option = confirm('Are you sure to delete?');
                        if (option === true) {
                            window.document.location.href = "deletePO?sid=" + id;
                        }
                    }
        
                </script>-->

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


        <script>
                                                function messageSuccess(qid) {
                                                    var option = confirm('Are you sure to delete?');
                                                    if (option === true) {
                                                        window.document.location.href = "deleteQuestion?qid=" + qid;
                                                    }
                                                }

        </script>

    </body>
</html>