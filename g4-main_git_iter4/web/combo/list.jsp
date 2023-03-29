<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : list
    Created on : Mar 9, 2023, 1:21:39 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List combo!</h1>
        <a href="AddCombo" class="btn btn-primary">Add new</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Edit</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${clist}">

                    <tr>
                        <td>${c.id}</td>
                        <td>${c.name}</td>
                        <td><a href="EditCombo?cid=${c.id}">Edit</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
