<%-- 
    Document   : update
    Created on : 30 Μαρ 2020, 3:09:19 μμ
    Author     : parta
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <div class="container">
            <div class="span12" align="center">
                <form:form cssClass="form-horizontacssClassl" action='updateTrainer' method="POST" modelAttribute="Trainer">
                    <fieldset>
                        <div id="legend">
                            <legend class="">Update</legend>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <form:hidden path="trainerId" placeholder="${trainerId}"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="firstname">First Name</label>
                            <div class="controls">
                                <form:input path="firstname" cssClass="input-xlarge" placeholder="${firstname}"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="lastname">Last Name</label>
                            <div class="controls">
                                <form:input path="lastname" cssClass="input-xlarge" placeholder="${lastname}"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="subject">Subject</label>
                            <div class="controls">
                                <form:input path="subject" cssClass="input-xlarge" placeholder="${subject}"/>
                            </div>
                        </div>
                        <br><br>
                        <div class="control-group">
                            <!-- Button -->
                            <div class="controls">
                                <button class="btn btn-success">Update</button>
                            </div>
                        </div>
                    </fieldset>
                </form:form>
            </div>
        </div>

    </body>
</html>
