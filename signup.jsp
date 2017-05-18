<%-- 
    Document   : signup
    Created on : Feb 6, 2017, 6:04:37 PM
    Author     : Max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- External links: w3.css and JQuery libraries -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="my.css">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <script src="verifyAction.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%--<%@include file = "header.jsp" %>--%>
        <div class="w3-container w3-blue">
    <h2>Sign up</h2>
</div>

<form  name="register" action="registerAction.jsp" method="post" class="w3-container">
  <label class="w3-label w3-text-teal"><b>Name</b></label>
  <input class="w3-input w3-border w3-light-grey" name="name" type="text">

  <label class="w3-label w3-text-teal"><b>Username</b></label>
  <input class="w3-input w3-border w3-light-grey" name="username" type="text">
  
  <label class="w3-label w3-text-teal"><b>Email</b></label>
  <input class="w3-input w3-border w3-light-grey" name="email" type="text">
  
  <label class="w3-label w3-text-teal"><b>Password</b></label>
  <input class="w3-input w3-border w3-light-grey" name="password" type="text">

  <button class="w3-btn w3-blue-grey" value="Submit" onclick="validate()">Register</button>
</form>

    </body>
</html>
