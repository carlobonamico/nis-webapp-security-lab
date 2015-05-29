
<html>
<head>
    <title>Single sign out</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css"/>
</head>

<body>

<div class = "container">
    <div id="login-box" class="wrapper">
        <div class="form-signin" style="text-align: center">
            <h3 class="form-signin-heading">Do you want to log out of CAS?</h3>
            <hr class="colorgraph"><br>
            <p>You have logged out of this application, but may still have an active single-sign on session with CAS.</p>
            <p><a href="j_spring_cas_security_logout" class="btn btn-lg btn-primary btn-block">Logout of CAS</a>
        </div>
    </div>
</div>

</body>
</html>