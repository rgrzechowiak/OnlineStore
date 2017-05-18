<%-- 
    Document   : checkout
    Created on : May 17, 2017, 8:49:57 PM
    Author     : malphons
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
    <script src="registration.js" type="text/javascript"></script>
        <title>Check out</title>
    </head>
    <body>
        <%@include file = "header.jsp" %>
        <div class="w3-container w3-blue">
    <h2>Check out</h2>
</div>

<form  name="check" action="checkoutAction.jsp" class="w3-container">
  <label class="w3-label w3-text-teal"><b>Name</b></label>
  <input class="w3-input w3-border w3-light-grey" name="name" type="text">
  
  <label class="w3-label w3-text-teal"><b>Email</b></label>
  <input class="w3-input w3-border w3-light-grey" name="email" type="text">
  
  <label class="w3-label w3-text-teal"><b>Address</b></label>
  <input class="w3-input w3-border w3-light-grey" name="address" type="text">
  
  <label class="w3-label w3-text-teal"><b>State</b></label>
  <input class="w3-input w3-border w3-light-grey" name="state" type="text">
  
  <label class="w3-label w3-text-teal"><b>Credit Card</b></label>
  <input class="w3-input w3-border w3-light-grey" name="card" type="text">

  <button class="w3-btn w3-blue-grey" value="submit" onclick="validate()">Register</button>
</form>

    </body>
</html>
