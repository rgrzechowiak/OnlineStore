<%-- 
    Document   : add
    Created on : Apr 3, 2017, 7:53:26 PM
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
        String name = "";
        String productid = "";
        String description = "";
        String picture = "";
        String price = "";
        String vendorprice = "";
        String stock = "";
        String maxStock = "";
        String venid = "";
try{
    Connection connect = null;
    Class.forName(driverName);
    connect = DriverManager.getConnection(connectionUrl+dbName, userID, password);
    
    ResultSet resultSet = null;
    Statement statement = null;
    statement = connect.createStatement();
    
     String sql = "SELECT * FROM productvendor WHERE productID='"+request.getParameter("button")+"'";
     resultSet = statement.executeQuery(sql);
     while(resultSet.next()){
         name = resultSet.getString("name");
         productid = resultSet.getString("productID");
         description = resultSet.getString("description");
         picture = resultSet.getString("picture");
         price = resultSet.getString("price");
         vendorprice = resultSet.getString("vendorPrice");
         stock = resultSet.getString("amountInStock");
         maxStock = resultSet.getString("maxInStock");
         venid = resultSet.getString("vendorID");
     }
     
     
     String sql2 = "INSERT INTO product (productID, description, picture, price, vendorPrice, name, amountInStock, maxInStock, vendorID) VALUES('"+productid+"','"+description+"','"+picture+"','"+price+"','"+vendorprice+"','"+name+"','"+stock+"','"+maxStock+"','"+venid+"')";
     
     statement.executeUpdate(sql2);
                            
}
catch(SQLException e){
    
}
response.sendRedirect("companycatalog.jsp");
%>