<%-- 
    Document   : delete
    Created on : Apr 3, 2017, 5:29:58 PM
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

try{
    Connection connect = null;
    Class.forName(driverName);
    connect = DriverManager.getConnection(connectionUrl+dbName, userID, password);
    
    ResultSet resultSet = null;
    Statement statement = null;
    statement = connect.createStatement();
    
    row = request.getParameter("button");
    
    String sql2 = "DELETE FROM `product` WHERE `product`.`productID` = "+row; //only deletes the first row
    
    statement.executeUpdate(sql2);

}
catch(SQLException e){
    
}

response.sendRedirect("admin.jsp");


%>
