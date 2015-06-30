<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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

                <sec:authorize access="hasRole('ROLE_USER')">

                    <form action="<c:url value="/j_spring_security_logout"/>" method="post" id="logoutForm" class="form-signin">

                        <h3 class="form-signin-heading">Welcome Back! ${pageContext.request.userPrincipal.name}</h3>
                        <hr class="colorgraph"><br>
                        
                        <sec:authorize url="/admin">
		                	<a href="<c:url value="/admin" />">admin link</a>
		                </sec:authorize>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                        <button class="btn btn-lg btn-primary btn-block"  name="Submit" type="Submit">Logout</button>
                    </form>

                </sec:authorize>
               

            </div>
        </div>
    </body>
</html>