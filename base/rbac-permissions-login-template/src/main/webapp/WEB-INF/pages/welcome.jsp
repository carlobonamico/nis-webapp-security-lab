<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
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

                <sec:authorize access="hasAuthority('access')">

                    <form action="<c:url value="/j_spring_security_logout"/>" method="post" id="logoutForm" class="form-signin">

                        <div class="form-group">
                            <h3 class="form-signin-heading">Welcome Back! <%=SecurityContextHolder.getContext().getAuthentication().getName() %></h3>
                            <hr class="colorgraph">
                        </div>

                        <div class="form-group">
                            <textarea class="form-control" readonly><%=SecurityContextHolder.getContext().getAuthentication().getPrincipal() %></textarea>
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </div>

                        <div class="form-group">
                            <button class="btn btn-lg btn-primary btn-block"  name="Submit" type="Submit">Logout</button>
                        </div>
                    </form>

                </sec:authorize>

            </div>
        </div>
    </body>
</html>