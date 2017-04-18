<%--
    Document   : registrationAction
    Created on : Feb 6, 2017, 10:06:39 AM
    Author     : malphons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBean.DBConnect"%> 
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
      <%@include file = "header.jsp" %>
    <%
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      String email = request.getParameter("email");
      String sql = "insert into accounts values (0, '" + username + "','" + email + "', '"
              + password + "', 2)";
      DBConnect dbConnect = new DBConnect();
      out.println(dbConnect.updateDB(sql));
      
    %>
    <h3>
    </h3>
  </body>
</html>
