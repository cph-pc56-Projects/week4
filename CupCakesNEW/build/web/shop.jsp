<%-- 
    Document   : shop
    Created on : Mar 3, 2017, 10:34:36 AM
    Author     : trez__000
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.CartItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="http://gregfranko.com/jquery.selectBoxIt.js/css/jquery.selectBoxIt.css" />

        <!-- Custom CSS -->
        <link href="css/one-page-wonder.css" rel="stylesheet">
        <link rel="stylesheet" href="css/styles.css">
        <title>Bootstrap</title>
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
           
        </div>
        <!-- /.container -->
    </nav>

    <!-- Full Width Image Header -->
   
        <div>
            <div class="container ">
                <h1 style="font-size: 50px">Our Cupcake Menu</h1> 
                
                <h2>Welcome: <% out.print(session.getAttribute("nameUser")); %> </h2>
                <h2>Balance: <% out.print(session.getAttribute("balance")); %> </h2>                
                <a class="btn btn-success" href="cart.jsp" >Cart</a>
                <a class="btn btn-danger" href="index.jsp">Log out</a>
            </div>
        </div>
           
        
        
   <!-- Choose Ingredients -->
        <%
            String[] toppings = {"Chocolate", "Blueberry", "Rasberry", "Crispy", "Strawberry", "Rum/Raisin", "Orange", "Lemon", "Blue cheese"};
            String[] bottoms = {"Chocolate", "Vanilla", "Nutmeg", "Pistacio", "Almond"};
            
            
        %>
        
        <div class="container well col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4">
            <h1> Choose your ingredients </h1>
            <form name="form1" method="POST" action="ShopServlet">
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
                                        <td><select name="bottom">
                                                <% for (String b : bottoms) {%>
                                                <option><%=b%></option>
                                                <%}%>
                                            </select></td>
                                        <td><select name="topping">
                                                <% for (String t : toppings) {%>
                                                <option><%=t%></option>
                                                <%}%>
                                            </select>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </section>
                </div>
                <div>                            
                    <input type="hidden" name="addCart" value="addCart"/>
                    <button type="submit" class="btn btn-info btn-block">Add to Cart</button>               
                </div>
            </form>
        </div>
        
                                            
        <br>
        
       
        <!-- Table -->
        <div class="row">
        <div class="container col-lg-4 col-lg-offset-2 ">
            <table class=" table table-condensed table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Bottom</th>                        
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="active">
                        <td>Cupcake</td>                        
                        <td>5.00</td>
                    </tr>
                    <tr>
                        <td>Vanilla</td>
                        <td>5.00</td>                        
                    </tr>
                    <tr class="active">
                        <td>Nutmeg</td>
                        <td>5.00</td>                        
                    </tr>
                    <tr>
                        <td>Pistacio</td>
                        <td>6.00</td>                        
                    </tr>
                    <tr class="active">
                        <td>Almond</td>
                        <td>7.00</td>                        
                    </tr>                    
                </tbody>
            </table>

        </div><!-- Table -->
        
        <div class="container col-lg-4 ">
            <table class=" table table-condensed table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Topping</th>                        
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="active">
                        <td>Cupcake</td>                        
                        <td>5.00</td>
                    </tr>
                    <tr>
                        <td>Blueberry</td>
                        <td>5.00</td>                        
                    </tr>
                    <tr class="active">
                        <td>Raspberry</td>
                        <td>5.00</td>                        
                    </tr>
                    <tr>
                        <td>Crispy</td>
                        <td>6.00</td>                        
                    </tr>
                    <tr class="active">
                        <td>Strawberry</td>
                        <td>6.00</td>                        
                    </tr>  
                    <tr class="active">
                        <td>Rum/Raisin</td>
                        <td>7.00</td>                        
                    </tr>  
                    <tr class="active">
                        <td>Orange</td>
                        <td>8.00</td>                        
                    </tr>  
                    <tr class="active">
                        <td>Lemon</td>
                        <td>8.00</td>                        
                    </tr>  
                    <tr class="active">
                        <td>Blue Cheese</td>
                        <td>9.00</td>                        
                    </tr>  
                </tbody>
            </table>

        </div><!-- Table -->
        </div>
        
                                 
        
    
                                            
                                            
                                          
    <script>  
        $(function() {
              var selectBox = $("select").selectBoxIt();
            });
    </script>    
        
        
   
    <script src="http://gregfranko.com/jquery.selectBoxIt.js/js/jquery.selectBoxIt.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    </body>
</html>
