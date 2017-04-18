<%-- 
    Document   : login
    Created on : Nov 17, 2016, 7:21:22 AM
    Author     : malphons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="myBean.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%
      String user = request.getParameter("username");
      String pwd = request.getParameter("password");
      String sql = "select name, status from accounts where username = ?"
              + " and password = ?";
      DBConnect dbConnect = new DBConnect();
      String result = dbConnect.queryDB(sql, user, pwd);
      if (user.length() == 0) {
        response.sendRedirect("index.jsp");
        return;
      }
      if(pwd.length() ==0) {
        response.sendRedirect("index.jsp");
      }
      else{
          response.sendRedirect("user.jsp");
          
      }
    %>
  </body>
</html>
