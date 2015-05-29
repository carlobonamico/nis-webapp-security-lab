<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css"/>
</head>
<body onload='document.loginForm.username.focus();'>

<div class = "container">

	<div id="login-box" class="wrapper">

		<form name='loginForm' action="<c:url value='/login' />" method='POST' class="form-signin">

			<h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
			<hr class="colorgraph"><br>

            <c:if test="${not empty error}">
                <div class="alert alert-danger">${error}</div>
            </c:if>
            <c:if test="${not empty msg}">
                <div class="alert alert-success">${msg}</div>
            </c:if>

			<input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
			<input type="password" class="form-control" name="password" placeholder="Password" required="" autocomplete="off"/>

			<button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>

		</form>
	</div>
</div>
</body>
</html>