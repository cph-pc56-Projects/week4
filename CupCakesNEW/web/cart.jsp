<%-- 
    Document   : cart
    Created on : 04-Mar-2017, 19:48:57
    Author     : Alex
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="http://gregfranko.com/jquery.selectBoxIt.js/css/jquery.selectBoxIt.css" />

        <!-- Custom CSS -->
        <link href="css/one-page-wonder.css" rel="stylesheet">
        <link rel="stylesheet" href="css/styles.css">
        <title>JSP Page</title>
    </head>
    <body>
        
               <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Cupcake Factory</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">                    
                    <li>
                        <a href="shop.jsp">Shop</a>
                    </li>                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        
               <div class="container col-lg-2 col-lg-offset-5" style="margin-top: 20px;">
                   <a href="shop.jsp" class="btn btn-success">Back to Shopping</a>
               </div>
        
        
        
        

        <div style="margin-top: 20px;" class="container  col-lg-6 col-lg-offset-3">
            <table class="table table-condensed table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Bottom</th>
                        <th>Topping</th>
                        <th>Total Price</th>
                    </tr>
                </thead>
                <tbody>

                    <%  String allItems = (String) session.getAttribute("allItems");
                        ArrayList<String> items = new ArrayList<>();
                        int beginIndex = 0;
                        for (int i = 0; i < allItems.length() - 1; i++) {
                            if (Character.isDigit(allItems.charAt(i)) && i < allItems.length() - 2) {
                                items.add(allItems.substring(beginIndex, i + 2));
                                beginIndex = i + 2;
                                i++;
                            } else if (Character.isDigit(allItems.charAt(i))) {
                                items.add(allItems.substring(beginIndex));
                                i++;
                            }
                            String totalPrice = "something wrong", bottom = "something wrong", topping = "something wrong";
                            for (String item : items) {
                                totalPrice = item.substring(item.length() - 2);
                                for (int j = 1; j < item.length(); j++) {
                                    if (Character.isUpperCase(item.charAt(j))) {
                                        topping = item.substring(j, item.length() - 2);
                                        bottom = item.substring(0, j);
                                    }
                                }
                                
                    %> 

                    <tr>
                        <td> <%=bottom%> </td>
                        <td> <%=topping%> </td>
                        <td> <%=totalPrice%> </td>
                    </tr>
                    

                    <%
                                }
                            }%>
                    
                    <% int totalOrderPrice = (int) session.getAttribute("totalOrderPrice");
                       String order = Integer.toString(totalOrderPrice);
                    %>
                    <tr>
                        <td><b>Total Order Price:    <span class="text-right text-wrap" style="text-align: right; font-size: large;"><%=order%></span></b></td>
                        

                    </tr>




                </tbody>
            </table>
        </div>
    </body>
</html>
