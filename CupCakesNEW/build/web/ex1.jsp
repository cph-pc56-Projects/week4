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
        <link rel="stylesheet" href="css/styles.css">
        <title>Bootstrap</title>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <section class="col-xs-12">

                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="inputName">UserName</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text"
                                       id="inputName" placeholder="UserName">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="inputEmail">Password</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="password"
                                       id="inputEmail" placeholder="Password"> 
                            </div> 
                        </div>

                        
                        

                        

                        <div class="form-group">
                            <div class="col-sm-10 col-sm-offset-2">
                                <input type="submit" class="btn btn-danger"  
                                       value="Log In">
                            </div>
                        </div>
                    </form>

                </section>
            </div><!-- row -->   
        </div><!-- content container -->
        
        
        
        

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    </body>
</html>
