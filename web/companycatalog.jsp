<%-- 
    Document   : companycatalog
    Created on : Feb 6, 2017, 11:55:39 PM
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
            
            .catmain{
                position: relative;
            }
            
            .head{
                background-color: teal;
                width: 100%;
                color: white;
                margin: 0 auto;
                margin-top: 10px;
            }
            
            .Table-List{
                margin: 0 auto;
                margin-top: 10px;
            }
            
            .return{
                margin: 0 auto;
                position: absolute;
                top: 21%;
                left: 50%;
                margin-right: -50%;
                transform: translate(-50%, -50%)
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
            
            .button {
                background-color: greenyellow;
                margin: 0 auto;
                margin-bottom: 10px;
                border: none;
                border-radius: 8px;
                color: darkviolet;
                text-align: center;
                text-decoration: none;
                
                
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String driverName = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String dbName = "test";
        String userID = "root";
        String password = "";
        
        try{
            Class.forName(driverName);
        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        

    %>    
    
        <div class="catmain">
            <div class="head">
                <h1><center>Company Product Catalog</center></h1>
                <div class="return">
                    <button class="button">Admin Management</button>
                </div>
            </div>
                <div class="Table-List">
                    <table style="width: 100%">
                        <tr>
                            <th>Product Image</th>
                            <th>Product Name</th>
                            <th>Product Description</th>
                            <th>Price Per Unit</th>
                            <th>Add to Store</th>
                        </tr>
                        
                        <%
                            try{
                            connection = DriverManager.getConnection(connectionUrl+dbName, userID, password);
                            statement=connection.createStatement();
                            String sql = "SELECT * FROM productVendor";

                            resultSet = statement.executeQuery(sql);
                            int i = 0;
                            while(resultSet.next()){
                        %>
                        <tr>
                            <td><center><img src="<%=resultSet.getString("picture") %>" alt="" style="width:200px; height:150px;"></center></td>
                            <td><center><%=resultSet.getString("name") %></center></td>
                            <td><center><%=resultSet.getString("description") %></center></td>
                            <td><center>$<%=resultSet.getString("vendorPrice") %></center></td>
                            <td><center><form name="add" method="post" action="add.jsp"><button type="submit" name="button" class="Remove_Button" value=<%=resultSet.getString("productID")%>>Add</button></form></center></td>
                        </tr>
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
