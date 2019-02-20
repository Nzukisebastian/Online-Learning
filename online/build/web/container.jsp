

<!DOCTYPE html>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap core CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="assets/css/signin.css" rel="stylesheet">
        <link href="assets/css/login.css" rel="stylesheet">

        <script src="assets/js/bootstrap.js"></script>
        <title>Sign UP</title>
    </head>
    <body>
        <div class="container">

            <div class="clearfix"></div>
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default login">
                    <div class="panel-heading">Register Here</div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method="post" action="Insertdata">
                            <div class="form-group">
                                <label for="firstname" class="col-sm-3 control-label"> First Name</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="firstname"  name="fname" placeholder="First Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-sm-3 control-label"> Last Name</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="lastname"  name="lname" placeholder="Last Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="adress" class="col-sm-3 control-label">Address</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="address"  name="address" placeholder="Address">
                                </div>
                            </div> 
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-3 control-label">Email</label>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control" id="inputEmail3"  name="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                                <div class="col-sm-8">
                                    <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-10">
                                    <button type="submit" class="btn btn-default"">Register</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>     
        </div>
    </body>
</html>