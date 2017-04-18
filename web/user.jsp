<%-- 
    Document   : user
    Created on : Apr 17, 2017, 9:44:19 PM
    Author     : malphons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <%@include file = "header.jsp" %>
        <h1>Welcome to Your Online Shop</h1><br>
    <form name="logout" action="logout.jsp" class="w3-container">
        <button class="w3-btn w3-blue-grey" value="submit">Log Out</button>
    </form>
        
    </body>
</html>
