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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%--Dropdown Menu--%>
        <ul class="w3-navbar w3-light-grey w3-border">
             <li><a href="index.jsp">Home</a></li>
             <li class="w3-dropdown-hover">
                <a href="#">Computers <i class="fa fa-caret-down"></i></a>
                <div class="w3-dropdown-content w3-white w3-card-4">
                    <a href="#">PC parts</a>
                    <a href="#">PC accessories</a>
                    <a href="#">Laptops</a>
                </div>
             <li><a href="shop.jsp">Games</a></li>
             <li><a href="#">Smart phones</a></li>
             <li><a href="signup.jsp">Sign up</a></li>
             <li> <a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
        <%--Search bar--%>
        <%--<li><input type="text" class="w3-input" placeholder="Search.."></li>
  <li><button class="w3-btn w3-blue">Go</button></li>--%>
 
        </ul>
        <div class="img">
            <img src="images/banner-shop11.jpg" alt="Person">
            
        </div>

    </body>
</html>