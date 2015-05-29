<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Welcome Page</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css"/>
</head>
    <body>

        <div class = "container">

            <div id="login-box" class="wrapper">

                    <form action="<c:url value='/logout?logout' />" method="post" id="logoutForm" class="form-signin">

                        <h3 class="form-signin-heading">Welcome Back! ${sessionScope.userDetails.username}</h3>
                        <hr class="colorgraph"><br>

                        <button class="btn btn-lg btn-primary btn-block"  name="Submit" type="Submit">Logout</button>
                    </form>

            </div>
        </div>
    </body>
</html>