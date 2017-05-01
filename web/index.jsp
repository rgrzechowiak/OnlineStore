<%-- 
    Document   : index
    Created on : Feb 6, 2017, 4:14:50 PM
    Author     : Max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file = "header.jsp" %>
        <div class="w3-container w3-teal"><h2>Log on</h2></div>
        <form name="login" action="login.jsp" class="w3-container">
            <label class="w3-label w3-text-teal"><b>Username</b></label>
            <input class="w3-input w3-border w3-light-grey" name="username" type="text">
            
            <label class="w3-label w3-text-teal"><b>Password</b></label>
            <input class="w3-input w3-border w3-light-grey" name="password" type="text">
            
            <button class="w3-btn w3-blue-grey" value="submit">Sign In</button>
        </form>
    </body>
</html>
