<%@ page import="org.springframework.security.core.AuthenticationException" %>
<%@ page import="org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter" %>

<html>
<head>
    <title>Login to CAS failed!</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css"/>
</head>

<body>

<div class = "container">
    <div id="login-box" class="wrapper">
        <div class="form-signin" style="text-align: center">
            <h3 class="form-signin-heading">Login to CAS failed!</h3>
            <hr class="colorgraph"><br>
            <%
                Exception error = ((AuthenticationException) session.getAttribute(AbstractAuthenticationProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY));
            %>
            <span class="label label-danger">Your CAS credentials were rejected: <%= error.getMessage() %></span>

        </div>
    </div>
</div>

</body>
</html>
