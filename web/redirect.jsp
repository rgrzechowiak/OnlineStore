<%-- 
    Document   : redirect
    Created on : Apr 5, 2017, 6:19:42 PM
    Author     : Robert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String current = "";
    current = request.getParameter("redirect");
    
    if(current.equals("home"))
    {
        response.sendRedirect("admin.jsp");
    }
    else if(current.equals("catalog")){
        response.sendRedirect("companycatalog.jsp");
    }
    else if(current.equals("log"))
    {
        response.sendRedirect("index.jsp");
    }
%>
