<%-- 
    Document   : buy
    Created on : May 17, 2017, 7:02:57 PM
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
      
      String uname = null;
      String acctTy = null;
      
      
      try{
          uname = (String)session.getAttribute("username");
          acctTy = (String)session.getAttribute("account");
      }
      catch(Exception e)
      {
          
      }
      
      if(uname == null || !acctTy.equals("2"))
      {
          response.sendRedirect("index.jsp");
      }
      
      String productid = "";
      String prodname = "";
      String proddes = "";
      String prodprice = "";
      String prodpic = "";
      String userId = "";
      
      try{
        Connection connect = null;
        Class.forName(driverName);
        connect = DriverManager.getConnection(connectionUrl+dbName, userID, password);
    
        ResultSet resultSet = null;
        Statement statement = null;
        statement = connect.createStatement();
        
        String sql = "SELECT * FROM product WHERE productID='"+request.getParameter("button")+"'";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
         productid = resultSet.getString("productID");
         prodname = resultSet.getString("name");
         proddes = resultSet.getString("description");
         prodprice = resultSet.getString("price");
         prodpic = resultSet.getString("picture");
        }
        
        String sql3 = "SELECT * FROM accounts WHERE username='"+uname+"'";
        resultSet = statement.executeQuery(sql3);
         while(resultSet.next())
        {
            userId = resultSet.getString("accountID");
        }
        
        
      String sql2 = "INSERT INTO cart (accountID, productID, quantity, picture, name, price, description) VALUES('"+userId+"','"+productid+"','1','"+prodpic+"','"+prodname+"','"+prodprice+"','"+proddes+"'";
     
      statement.executeUpdate(sql2);
          
      }
      catch( SQLException e){
      
      }
     
    response.sendRedirect("cart.jsp");
     %>
    </body>
</html>