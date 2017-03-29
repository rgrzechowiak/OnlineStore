<%--
    Document   : registrationAction
    Created on : Feb 6, 2017, 10:06:39 AM
    Author     : malphons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%
      String name = request.getParameter("name");
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      String email = request.getParameter("email");
      String state = request.getParameter("state");
      String sql = "insert into customer values (0,'" + name + "', '" + email + "','" + username + "', '"
              + password + "', '" + state + "')";
      out.println(sql+"<br>");
    %>
    <h2>
        Thank's <%= name %>. An email has been sent to <%= email %>.
    </h2>
  </body>
</html>
