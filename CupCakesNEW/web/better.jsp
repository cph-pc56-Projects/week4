<%-- 
    Document   : better
    Created on : Feb 27, 2017, 2:51:46 PM
    Author     : trez__000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping</title>
    </head>
    <body>
        
        
        <%
            String[] toppings = {"Chocolate", "Blueberry", "Rasberry", "Crispy", "Strawberry", "Rum/Raisin", "Orange", "Lemon", "Blue cheese"};
            String[] bottoms = {"Chocolate", "Vanilla", "Nutmeg", "Pistacio", "Almond"};

        %>
        <div align="center" class="container">
            <h1> Choose your ingredients </h1>

            <form name="form1" method="POST" action="orderCake">
                <div class="row">     
                    <section class="col-xs-12">
                        <div class="table-responsive">
                            <table class="table table-border">
                                <thead>
                                    <tr>
                                        <th>Bottom</th>
                                        <th>Topping</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>  
                                        <td><select name="Bottom">
                                                <% for (String b : bottoms) {%>
                                                <option><%=b%></option>
                                                <%}%>
                                            </select></td>
                                        <td><select name="Topping">
                                                <% for (String t : toppings) {%>
                                                <option><%=t%></option>
                                                <%}%>
                                            </select></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </section>
                </div>
                <input class="btn-defaultn" type="submit" value="submit" action="servlet name" />
            </form>
        </div>

    </body>
</html>
