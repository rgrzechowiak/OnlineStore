<%-- 
    Document   : header
    Created on : Feb 6, 2017, 4:11:50 PM
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%--Dropdown Menu--%>
        <ul class="w3-navbar w3-light-grey w3-border">
             <li><a href="user.jsp">Home</a></li>
             <li class="w3-dropdown-hover">
                <a href="#">Computers <i class="fa fa-caret-down"></i></a>
                <div class="w3-dropdown-content w3-white w3-card-4">
                    <a href="#">PC parts</a>
                    <a href="#">PC accessories</a>
                    <a href="#">Laptops</a>
                </div>
             <li><a href="games.jsp">Games</a></li>

             <li><a href="#">Smart phones</a></li>
        <%--Search bar--%>
        <%--<li><input type="text" class="w3-input" placeholder="Search.."></li>
  <li><button class="w3-btn w3-blue">Go</button></li>--%>
  <li><a href="signup.jsp">Sign up</a></li>
 
</ul>
        <div class="img">
            <img src="images/banner-shop11.jpg" alt="Person">
            
        </div>
    <%--<div class="w3-container w3-teal">
        <h2>Log on</h2>
    </div>

    <form class="w3-container">
        <label class="w3-label w3-text-teal"><b>Username</b></label>
        <input class="w3-input w3-border w3-light-grey" type="text">

        <label class="w3-label w3-text-teal"><b>Password</b></label>
        <input class="w3-input w3-border w3-light-grey" type="text">

        <button class="w3-btn w3-blue-grey">Sign in</button>
    </form>--%>
    </body>
</html>
