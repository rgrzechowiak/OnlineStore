<%-- 
    Document   : companycatalog
    Created on : Feb 6, 2017, 11:55:39 PM
    Author     : Robert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <th>Release Date</th>
                            <th>Price Per Unit</th>
                            <th>Add to Store</th>
                        </tr>
                        <tr>
                            <td><center><img src="images/xboxone.jpg" alt="Xbox One" style="width:200px; height:150px;"></center></td>
                            <td><center>Xbox One</center></td>
                            <td><center>8/10/2016</center></td>
                            <td><center>$499.99</center></td>
                            <td><center><button class="button">Add</button></center></td>
                        </tr>
                    </table>
                </div>
        </div>
    </body>
</html>
