<%-- 
    Document   : login
    Created on : Nov 17, 2016, 7:21:22 AM
    Author     : malphons
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%

      String driverName = "com.mysql.jdbc.Driver";
      String connectionUrl = "jdbc:mysql://localhost:3306/";
      String dbName = "test";
      String userID = "root";
      String password = "";
      
      String acctType = "";
      String user = "";
      String pwd = request.getParameter("password");
      try{
        Connection connect = null;
        Class.forName(driverName);
        connect = DriverManager.getConnection(connectionUrl+dbName, userID, password);
    
        ResultSet resultSet = null;
        Statement statement = null;
        statement = connect.createStatement();
        
        user = request.getParameter("username");
        
        String sql = "SELECT * FROM accounts WHERE username='"+user+"'";
        resultSet = statement.executeQuery(sql);
        
            while(resultSet.next()){
              acctType = resultSet.getString("typeOfAccount");
            }
            
            if(acctType.equals("1"))
            {
                response.sendRedirect("admin.jsp");
            }
            else if(acctType.equals("2"))
            {
                response.sendRedirect("user.jsp");
            }
            else response.sendRedirect("index.jsp");
        }
      catch(SQLException e){
          
      }

    %>
  </body>
</html>
