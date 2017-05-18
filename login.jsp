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
      String pwd = "";
      try{
        Connection connect = null;
        Class.forName(driverName);
        connect = DriverManager.getConnection(connectionUrl+dbName, userID, password);
    
        ResultSet resultSet = null;
        PreparedStatement statement = null;
        //statement = connect.createStatement();
        
        user = request.getParameter("username");
        pwd = request.getParameter("password");
        
        String sql = "SELECT * FROM accounts WHERE username= ? AND password= ?";
        statement = connect.prepareStatement(sql);
        statement.setString(1, user);
        statement.setString(2, pwd);
        
        resultSet = statement.executeQuery();
        
            while(resultSet.next()){
              acctType = resultSet.getString("typeOfAccount");
            }
            
            if(acctType.equals("1"))
            {
                session.setAttribute("username", user);
                session.setAttribute("account", acctType);
                response.sendRedirect("admin.jsp");
            }
            else if(acctType.equals("2"))
            {
                session.setAttribute("username", user);
                session.setAttribute("account", acctType);
                response.sendRedirect("user.jsp");
            }
            else response.sendRedirect("index.jsp");
        }
      catch(SQLException e){
          
      }
      
      
      /*String sql = "select name, status from accounts where username = ?"
              + " and password = ?";*/
      //DBConnect dbConnect = new DBConnect();
      //String result = dbConnect.queryDB(sql, user, pwd);
      
      
    /*  if (user.length() == 0) {
        response.sendRedirect("index.jsp");
        return;
      }
      if(pwd.length() ==0) {
        response.sendRedirect("index.jsp");
      }
      else{
          response.sendRedirect("user.jsp");
          
      }*/
    %>
  </body>
</html>
