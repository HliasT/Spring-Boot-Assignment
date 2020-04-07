<%-- 
    Document   : showalltrainers
    Created on : 30 Μαρ 2020, 2:22:27 μμ
    Author     : parta
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <span class="table-add float-right mb-3 mr-2"><a href="preCreate">Create Trainer</a> <i> <span
                                        class="glyphicon glyphicon-plus"></span></i></a></span>
                                        
        <span class="text-center font-weight-bold">${message}</span>
        
        <table class="table table-bordered table-responsive-md table-striped text-center">
                                <thead>
                                    <tr>
                                        <th class="text-center">ID</th>
                                        <th class="text-center">First Name</th>
                                        <th class="text-center">Last Name</th>
                                        <th class="text-center">Subject</th>
                                        <th class="text-center">Delete</th>
                                        <th class="text-center">Update</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${TrainerList}" var="t">
                                        <tr>
                                            <td> ${t.trainerId}</td>
                                            <td> ${t.firstname}</td>
                                            <td> ${t.lastname}</td>
                                            <td> ${t.subject}</td>
                                            <td><form action="delete" method="POST">
                                                    <input name="TrainerID" value="${t.trainerId}" type="hidden">
                                                    <input type="submit" value="DELETE" class="btn btn-danger btn-rounded btn-sm my-0"></form> </td>
                                            <td> <form action="preUpdateTrainer" method="POST">
                                                    <input name="TrainerID" value="${t.trainerId}" type="hidden">
                                                    <input type="submit" value="UPDATE" class="btn btn-primary btn-rounded btn-sm my-0"></form> </td>
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>
    </body>
</html>
