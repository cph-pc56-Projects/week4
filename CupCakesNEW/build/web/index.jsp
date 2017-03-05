<%-- 
    Document   : ex1
    Created on : Mar 1, 2017, 1:17:14 PM
    Author     : trez__000
--%>

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
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#about">About</a>
                    </li>
                    <li>
                        <a href="#services">Services</a>
                    </li>
                    <li>
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Full Width Image Header -->
    <header class="header-image">
        <div class="headline">
            <div class="container">
                <h1>Our Cupcakes</h1>
                <h2>Will Knock Your Socks Off</h2>
            </div>
        </div>
    </header>
    
    
    <!-- Login Container -->
    <div class="container">
        <div class="row">
            <section class="col-xs-12">
                
                <% if ( "login".equals( request.getAttribute( "error" ) ) ) {%>
                    <div class="alert alert-danger">
                        <strong>Wrong Login Details</strong> Try Again!
                    </div>
                    <%}%>

                <form class="form-horizontal" name="form1" method="POST" action="LoginServlet">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="inputName">Username</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="text"
                                   id="inputName" placeholder="Username" name="username">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="inputEmail">Password</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="password"
                                   id="inputEmail" placeholder="password" name="password"> 
                        </div> 
                    </div>

                    <div class="form-group">
                        <div class="col-sm-10 col-sm-offset-2">
                            <input type="submit" class="btn btn-success"  
                                   value="logIn">
                        </div>
                    </div>
                </form>

            </section>
        </div><!-- row -->   
    </div><!-- Login Container -->
        
        
        
   
        
        
        
        
        
        

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    </body>
</html>
