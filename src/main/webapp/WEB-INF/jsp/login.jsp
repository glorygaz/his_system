<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>东软云医院HIS系统登录</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" type="text/css" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">


    <!-- Modernizr JS -->
    <script type="text/javascript" src="assets/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
        <script type="text/javascript" src="assets/js/respond.min.js"></script>
    <![endif]-->

    </head>
    <body>

        <div class="container">
            <br/><br/><br/>
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                <!-- Start Sign In Form -->
                    <form action="/doLogin" class="fh5co-form animate-box" data-animate-effect="fadeIn" method="post">
                        <h2>东软云医院HIS系统</h2>
                        <p style="color: red">${error}</p>
                        <br/>
                        <div class="form-group">
                            <label for="username" class="sr-only">Username</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Username" autocomplete="off" required>
                        </div>
                        <div class="form-group">
                            <label for="password" class="sr-only">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" autocomplete="off" required>
                        </div>
                        <br/><br/>
                        <div class="form-group">
                            <input type="submit" value="登录" class="btn btn-primary">
                        </div>
                    </form>
                    <!-- END Sign In Form -->
                </div>
            </div>
            <br/>
            <div class="row" style="padding-top: 60px; clear: both;">
                <div class="col-md-12 text-center"><p><small style="color: #e4e5ee">东软云医院HIS系统 Designed By GAZ||汤元丰 20174996</small></p></div>
            </div>
        </div>

    <!-- jQuery -->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    <!-- Placeholder -->
    <script type="text/javascript" src="assets/js/jquery.placeholder.min.js"></script>
    <!-- Waypoints -->
    <script type="text/javascript" src="assets/js/jquery.waypoints.min.js"></script>
    <!-- Main JS -->
    <script type="text/javascript" src="assets/js/main.js"></script>

    </body>
</html>
