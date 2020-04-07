<%-- 
    Document   : create
    Created on : 30 Μαρ 2020, 2:47:15 μμ
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
                    <form:form cssClass="form-horizontacssClassl" action='saveNew' method="POST"
                               modelAttribute="newTrainer" style="text-align: center">
                        <fieldset>
                            <div id="legend">
                                <span class="text-center font-weight-bold">${message}</span>
                                <legend class="">Register</legend>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="firstname">First Name</label>
                                <div class="controls">
                                    <form:input path="firstname" cssClass="input-xlarge"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="lastname">Last Name</label>
                                <div class="controls">
                                    <form:input path="lastname" cssClass="input-xlarge"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="subject">Subject</label>
                                <div class="controls">
                                    <form:input path="subject" cssClass="input-xlarge"/>
                                </div>
                            </div>
                            <br><br>
                            <div class="control-group">
                                <!-- Button -->
                                <div class="controls">
                                    <button class="btn btn-success">Create</button>
                                </div>
                            </div>
                        </fieldset>
                    </form:form>
                </div>
            </div>

    </body>
</html>
