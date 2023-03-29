<%-- 
    Document   : AdDashBoard
    Created on : Mar 5, 2023, 8:12:01 PM
    Author     : TUF GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashbroad</title>

        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

         <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">
        <style>
            .inputSize{
                width: 47%;
                
            }
            
            

        </style>
    </head>
    <body>
        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <i class='bx bxs-smile'></i>
                <span class="text">Admin management</span>
            </a>
            <ul class="side-menu top">
                <li class="active">
                    <a href="index.jsp">
                        <i class='bx bxs-dashboard' ></i>
                        <span class="text">HomePage</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-dollar-circle' ></i>
                        <span class="text">Subject</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-doughnut-chart' ></i>
                        <span class="text">Curriculum</span>
                    </a>
                </li>
                <li>
                    <a href="viewSyllabusList">
                        <i class='bx bxs-message-dots' ></i>
                        <span class="text">Syllabus</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-group' ></i>
                        <span class="text">User</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="AdDashboard.jsp">
                        <i class='bx bxs-cog' ></i>
                        <span class="text">Settings</span>
                    </a>
                </li>
                <li>
                    <a href="login.jsp" class="logout">
                        <i class='bx bxs-log-out-circle' ></i>
                        <span class="text">Logout</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- SIDEBAR -->



        <!-- CONTENT -->
        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <i class='bx bx-menu' ></i>
                <a href="#" class="nav-link"><img style="width:40%;" src="assets/images/logo_fpt.png" alt="image logo"></a>
                <form action="#">
                    <div class="form-input">
                        <input type="search" placeholder="Search...">
                        <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
                    </div>
                </form>
                <input type="checkbox" id="switch-mode" hidden>
                <label for="switch-mode" class="switch-mode"></label>
                <a href="#" class="notification">
                    <i class='bx bxs-bell' ></i>
                    <span class="num">8</span>
                </a>
            </nav>
            <!-- NAVBAR -->

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
                                <a class="active" href="#">Home</a>
                            </li>
                        </ul>
                    </div>
                </div>
<!--
                <ul class="box-info">
                    <li>
                        <i class='bx bxs-calendar-check' ></i>
                        <span class="text">
                            <h3>Subject</h3>
                            <p>34</p>
                        </span>
                    </li>
                    <li>
                        <i class='bx bxs-group' ></i>
                        <span class="text">
                            <h3>User</h3>
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
                </ul>-->

                   <div class="formCrud">
                <form action="editMaterial" method="post" style="padding: 5px; width: 100%; ">
                    <label style="font-weight: bold">Material Description *:</label>
                    <c:set var="c" value ="${requestScope.material}"/>
                    <textarea  placeholder="Input description of the material here" style="height: 250px; " required  name="mdescription" class="form-control">${c.material_description}</textarea>

                    <c:if test="${requestScope.errorMdes != null}">
                        <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorMdes}</div>

                    </c:if>

                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                        <div class="inputSize">
                    <label style="font-weight: bold">Author:</label>
                    <input style="" placeholder="Input author of material" type="text" name="author" value="${c.author}" class="form-control">

 
                    <c:if test="${requestScope.errorAuthor != null}">
                        <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorAuthor}</div>

                    </c:if>
                        </div>
                        <div class="inputSize">
                    <label style="font-weight: bold">Publisher :</label>
                    <input style="" placeholder="Input name of individual/group published" type="text" name="publisher" value="${c.publisher}" class="form-control">
                        </div>
                        </div>
                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                        <div class="inputSize">
                    <label style="font-weight: bold">Published Date:</label>
                    <input style="" placeholder="Input date of publishing"type="text" name="pDate" value="${c.published_date}" class="form-control">

                    <c:if test="${requestScope.errorYear != null}">
                        <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorYear}</div>

                    </c:if>
                        </div>
                        
                        <div class="inputSize">
                    <label style="font-weight: bold">EDITION :</label>
                    <input style="" placeholder="Input the edition of material" type="text" name="edition" value="${c.edition}"  class="form-control">
                        </div>
                        </div>
                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                        <div class="inputSize">
                    <label style="font-weight: bold">ISBN :</label>
                    <input style="" placeholder="Input The International Standard Book Number of material" type="text" name="isbn" value="${c.isbn}" class="form-control">

                        </div>
                    
                    <div class="inputSize" style="padding-top: 30px">
                    <label style="font-weight: bold">Is Main true :</label>
                    <!--                            True      <input type="radio" id="id" name="isMain" value="1">
                               false <input type="radio" id="id" name="isMain" value="0" ><br>-->

                    
                        <c:if test = "${(c.is_main == 1)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isMain" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isMain" value="0" ><br>
                        </c:if>
<!--                        <c:if test = "${(c.is_main == 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isMain" value="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isMain" value="0" checked><br>
                        </c:if>
                        <c:if test = "${(c.is_main != 1 and c.is_main != 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isMain" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isMain" value="0" ><br>
                        </c:if>-->

                    </div>
                        </div>
                            <div style="display:flex; justify-content: space-between; margin-top: 20px">
<div class="inputSize">

                    <label style="font-weight: bold">Is Hard Copy:</label>

                   
                        <c:if test = "${(c.is_hard_copy == 1)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          True <input type="radio" id="id" name="isHCopy" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isHCopy" value="0" ><br>
                        </c:if>
<!--                        <c:if test = "${(c.is_hard_copy == 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isHCopy" value="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isHCopy" value="0" checked ><br>
                        </c:if>

                        <c:if test = "${(c.is_hard_copy != 1 and c.is_hard_copy != 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           True <input type="radio" id="id" name="isHCopy" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isHCopy" value="0" ><br>
                        </c:if>-->
</div>
                           
                           <div class="inputSize">
                

                    <label style="font-weight: bold">Is Online:</label>


                        
                        <c:if test = "${(c.is_online == 1)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          True <input type="radio" id="id" name="isOnline" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isOnline" value="0" ><br>
                        </c:if>
<!--                        <c:if test = "${(c.is_online == 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isOnline" value="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isOnline" value="0" checked><br>
                        </c:if>

                        <c:if test = "${(c.is_online != 1 and c.is_online != 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           True <input type="radio" id="id" name="isOnline" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isOnline" value="0" ><br>
                        </c:if>-->
                           </div>
                 
                            </div>        

                           <div style="margin-top: 20px">
                    <label style="font-weight: bold">Note:</label>
                    <textarea  placeholder="Input note" style="height: 250px; "  name="note" class="form-control" id="editor2">${c.note}</textarea>

                    <c:if test="${requestScope.errorNote != null}">
                        <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorNote}</div>
                    </c:if>
                    </div>
                        <div style="display:flex; justify-content: space-between">   
                    <div class="inputSize" style="margin-top: 20px">
                    <label style="font-weight: bold">Syllabus Name *:</label>
                    <select name = "sjCode" class="form-control" required>
                        <c:forEach items="${requestScope.dataSubject}" var = "d">
                            <option value="${d.subject_Code}">${d.subject_Code}</option>
                        </c:forEach>
                    </select>
                    </div>
                        <div class="inputSize" style="padding-top: 30px; margin-top: 20px">
                    <label style="font-weight: bold">Status:</label>

                          
                        <c:if test = "${(c.status == 1)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          True <input type="radio" id="id" name="status" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="status" value="0" ><br>
                        </c:if>
<!--                        <c:if test = "${(c.status == 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="status" value="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="status" value="0" checked ><br>
                        </c:if>

                        <c:if test = "${(c.status != 1 and c.status != 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           True <input type="radio" id="id" name="status" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="status" value="0" ><br>
                        </c:if>-->
                        </div>
                        </div>
                    <button style="margin: 10px" type="submit" class="btn btn-primary">Edit</button>
                </form>
            </div>

<!--                <div class="table-data">
                    <div class="order">
                        <div class="head">
                            <h3>Team Development Programs</h3>
                            <i class='bx bx-search' ></i>
                            <i class='bx bx-filter' ></i>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>Team Member</th>
                                    <th>Join Date</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <p>Nguyễn Anh Tú</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status completed">Process</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Thái Anh</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status pending">Process</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Quốc Khánh</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status process">Process</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Văn Khánh</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status pending">Process</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Khánh Linh</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status completed">Process</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>-->
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
         <script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>

        <script src="css/Admin_dashboard.js"></script>
    </body>
    <script>

        var editor = CKEDITOR.replace('editor2');
    </script>
</html>


