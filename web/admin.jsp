<%-- 
    Document   : admin
    Created on : Feb 6, 2017, 7:35:30 PM
    Author     : Robert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.util.*, java.sql.*"%>
<%@page import="javax.servlet.http.*, javax.servlet.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            table, th, td {
                border: 1px solid black;
            }
            
            .main{
                position: relative;
            }
            
            .Page-Header {
                background-color: teal;
                color: white;
                width: 100%;
                margin: 0 auto;
                margin-top: 10px;
            }
            
            .Table-List {
                margin: 0 auto;
                margin-top: 10px;
            }
            
            .update {
                margin: 0 auto;
                position: absolute;
                top: 9%;
                left: 50%;
                margin-right: -50%;
                transform: translate(-50%, -50%)
            }
            
            .button1 {
                background-color: greenyellow;
                margin: 0 auto;
                margin-bottom: 10px;
                border: none;
                border-radius: 8px;
                color: darkviolet;
                text-align: center;
                text-decoration: none;
            }
            
            .button2 {
                background-color: greenyellow;
                margin: 0 auto;
                margin-bottom: 10px;
                border: none;
                border-radius: 8px;
                color: darkviolet;
                text-align: center;
                text-decoration: none;
            }
            
            .Price_Button {
                background-color: greenyellow;
                margin: 0 auto;
                margin-bottom: 10px;
                border: none;
                border-radius: 8px;
                color: darkviolet;
                text-align: center;
                text-decoration: none;
            }
            
            .Remove_Button {
                background-color: greenyellow;
                margin: 0 auto;
                margin-bottom: 10px;
                border: none;
                border-radius: 8px;
                color: darkviolet;
                text-align: center;
                text-decoration: none; 
            }
            
            input[type=text], select {
                width: 50%;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id = request.getParameter("productID");
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "test";
        String userID = "root";
        String password = "";
        
        try{
            Class.forName(driverName);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        %>
        <div class="main">
        <div class="Page-Header">
            <h1><center>Admin Management</center></h1>
            <div class="update">
                <button class="button1">Update Stock and Price Information</button>
                <button class="button2">Company Product Catalog</button>
            </div>
        </div>
        <div class="Table-List">
        <table style="width:100%">
             <tr>
                 <th>Product Image</th>
                 <th>Product Name</th>
                 <th>Current Price</th>
                 <th>Change Price</th>
                 <th>Current Amount in Stock</th>
                 <th>Remove</th>
             </tr>
             
        <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userID, password);
            statement=connection.createStatement();
            String sql = "SELECT * FROM products";
            
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
        %>
             <tr>
                 <td><center><img src="<%=resultSet.getString("picture") %>" alt="" style="width:200px; height:150px;"></center></td>
                 <td><center><%=resultSet.getString("productName") %></center></td>
                 <td><center>$<%=resultSet.getString("price") %></center></td>
                 <td><center>New Price: <input type="text" name="NewPrice" value="$ Change Price"><button class="Price_Button">Confirm</button></center></td>
                 <td><center><%=resultSet.getString("amountInStore")%></center></td>
        <td><center><form name="removal" method="post" action="delete.jsp"><input type="checkbox" name="check<%= resultSet.getString("productID")%>" value=<%= resultSet.getString("productID") %>><input type="submit" class="Remove_Button" value="Remove"></center></td>
             </tr>
        <%
        }

        } catch (Exception e) {
            e.printStackTrace();
            //branch test 2
        }
        %>
        </table>
        </div>
        </div>
    </body>
</html>
