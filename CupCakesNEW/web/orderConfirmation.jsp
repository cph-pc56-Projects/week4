<%-- 
    Document   : orderConfirmation
    Created on : Feb 28, 2017, 9:25:12 AM
    Author     : trez__000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>You ordered</h1>
        <p>Bottom: <%= request.getParameter("Bottom") %></p>
        <p>Topping: <%= request.getParameter("Topping")%></p>        
        <p>Counter is:  <%= session.getAttribute("Counter") %></p>
        
    </body>
</html>
