<%-- 
    Document   : logout
    Created on : Nov 17, 2016, 7:30:44 AM
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
      session.setAttribute("user", "");
      response.sendRedirect("index.jsp");
    %>
    </body>
</html>
