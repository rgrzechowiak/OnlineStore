<%-- 
    Document   : delete
    Created on : Apr 3, 2017, 5:29:58 PM
    Author     : Robert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>

<% String id[]= new String[10];

        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "test";
        String userID = "root";
        String password = "";
        

for(int i=0;i<10;i++)
{
  id[i]=request.getParameter("check"+i);
}

try{
    Connection connect = null;
    Class.forName(driverName);
    connect = DriverManager.getConnection(connectionUrl+dbName, userID, password);
    
    ResultSet resultSet = null;
    Statement statement = null;
    statement = connect.createStatement();
    for(int a=0;a<10;a++)
    {
        statement.executeUpdate("DELETE FROM products WHERE productID='"+id[a]+"'");
    }
}
catch(SQLException e){
    
}

response.sendRedirect("admin.jsp");


%>
