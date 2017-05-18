<%-- 
    Document   : checkout
    Created on : May 17, 2017, 8:40:24 PM
    Author     : malphons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
    </head>
    <body>
                <%@include file = "header.jsp" %>
        <%
      String driverName = "com.mysql.jdbc.Driver";
      String connectionUrl = "jdbc:mysql://localhost:3306/";
      String dbName = "test";
      String userID = "root";
      String password = "";
      
      String acctType = "";
      String user = "";
      String username = request.getParameter("username");
      String email = request.getParameter("email");
      String card = request.getParameter("card");
      
      try{
        Connection connect = null;
        Class.forName(driverName);
        connect = DriverManager.getConnection(connectionUrl+dbName, userID, password);
    
        ResultSet resultSet = null;
        Statement statement = null;
        statement = connect.createStatement();
        
        card = request.getParameter("card");
        
        String sql = "SELECT * FROM accounts WHERE card='"+card+"'";
        resultSet = statement.executeQuery(sql);
        
            while(resultSet.next()){
              acctType = resultSet.getString("typeOfAccount");
            }
            
             if(acctType.equals("2"))
            {
                response.sendRedirect("confirm.jsp");
            }
            else response.sendRedirect("index.jsp");
        }
      catch(SQLException e){
          
      }
    %>
     <div class="w3-container w3-blue">
    <h2>Check out</h2>
</div>
    <center><h5>
        <%= username %><br>
        Your Purchase was successful<br>
        An email with shipping Details have<br>
        send to <%= email %>.
        </h5></center>
    </body>
</html>
