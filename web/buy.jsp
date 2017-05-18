<%-- 
    Document   : buy
    Created on : May 17, 2017, 7:02:57 PM
    Author     : malphons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page session="true"%>

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
      
      String name = "";
      String productid = "";
      String description = "";
      String picture = "";
      String price = "";
      
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
         name = resultSet.getString("name");
         productid = resultSet.getString("productID");
         description = resultSet.getString("description");
         picture = resultSet.getString("picture");
         price = resultSet.getString("price");
        }
    String sql2 = "INSERT INTO cart (productID) VALUES('"+productid+"','"+description+"','"+picture+"','"+price+"','"+name+"',)";
     
     statement.executeUpdate(sql2);
          
      }
      catch( SQLException e){
      
      }
      response.sendRedirect("cart.jsp");

     %>
    </body>
</html>
