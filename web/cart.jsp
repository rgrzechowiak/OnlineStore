<%-- 
    Document   : cart
    Created on : May 17, 2017, 5:44:00 PM
    Author     : malphons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
                top: 53px;
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
        <title>Your Cart</title>
    </head>
     <body>
        <%@include file = "header.jsp" %>
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
            <h1>Your Cart</h1>
        </div>
        <div class="Table-List">
        <table style="width:100%">
             <tr>
                 <th>Product Image</th>
                 <th>Product Name</th>
                 <th>Current Price</th>
                 <th>Product Description</th>
                 <th>Remove</th>
             </tr>
             
        <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userID, password);
            statement=connection.createStatement();
            String sql = "SELECT * FROM cart";
            
            resultSet = statement.executeQuery(sql);
            int i = 0;
            while(resultSet.next()){
        %>
             <tr>
                 <td><center><img src="<%=resultSet.getString("picture") %>" alt="" style="width:200px; height:150px;"></center></td>
                 <td><center><%=resultSet.getString("name") %></center></td>
                 <td><center><%=resultSet.getString("price") %></center></td>
                 <td><center><%=resultSet.getString("description")%></center></td>
                 <td><center><form name="removal" method="post" action="delete.jsp"><button type="submit" name="button" class="Remove_Button" value=<%=resultSet.getString("productID")%>>Remove</button></form></center></td>

             </tr>
             <center><form name="Checkout" action="checkout.jsp"><button type="submit" name="button" class="Remove_Button" value="">Check out</button></form></center>
        <%
            i++;
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