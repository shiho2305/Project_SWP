<%-- 
    Document   : CurriculumAdd
    Created on : Jan 30, 2023, 4:22:05 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Subject</title>
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

    </head>
    <body>
        <jsp:include page="header1.jsp"/>
        <div style="margin-top: 50px ">
            <h1 style="text-align: center; margin-top: 10rem ">Create New Subject</h1>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div style="display: flex; justify-content: center">
                        <form method="post" action="SubjectCreate" style="padding: 5px; width: 50%">
                            <label style="font-weight: bold">Subject Code:</label>
                            <input type="text" name="code" required=""  class="form-control">
                            <label style="font-weight: bold">Subject Name:</label>
                            <input type="text" name="name" required=""  class="form-control">
                            <label style="font-weight: bold">Description:</label>
                            <textarea style="height: 250px"  name="desc" class="form-control"></textarea>
                            <label style="font-weight: bold">Credit:</label>
                            <input type="text" name="credit"  class="form-control"  pattern="[0-9]{1,255}" title="Credit must be integer" autocomplete="off" required>
                            <label style="font-weight: bold">Degree Level:</label>
                            <input type="text" name="degree"  class="form-control">
                            <label style="font-weight: bold">Combo ID:</label>
                            <input type="text" name="combo"  class="form-control" pattern="[0-9]{1,255}" title="Combo ID must be integer" autocomplete="off" required>
                            <button style="margin-top:10px" type="submit"  class="btn btn-primary">Add </button>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </body>

    <footer>
        <jsp:include page="footer1.jsp"/>
    </footer>
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

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/animation.js"></script>
<script src="assets/js/imagesloaded.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/scroll_to_top.js"></script>