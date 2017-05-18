<%-- 
    Document   : price
    Created on : Apr 5, 2017, 5:50:44 PM
    Author     : Robert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<%
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "test";
        String userID = "root";
        String password = "";
        String row = "";
        String newPrice = "";
        
try{
    Connection connect = null;
    Class.forName(driverName);
    connect = DriverManager.getConnection(connectionUrl+dbName, userID, password);
    
    ResultSet resultSet = null;
    Statement statement = null;
    statement = connect.createStatement();
    
    newPrice = request.getParameter("newPrice");
    row = request.getParameter("priceSub");
    
    String sql2 = "UPDATE `product`  SET `price` = '"+newPrice+"' WHERE `product`.`productID`="+ row;
    //String sql2 = "DELETE FROM `product` WHERE `product`.`productID` = "+row; //only deletes the first row
    
    statement.executeUpdate(sql2);

    }
    catch(SQLException e){

    }

response.sendRedirect("admin.jsp");


%>
