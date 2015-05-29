<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Index Page</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css"/>
</head>
<body>

<div class = "container">
    <div id="login-box" class="wrapper">
        <div class="form-signin" style="text-align: center">
            <h3 class="form-signin-heading">Anyone can view this page</h3>
            <hr class="colorgraph"><br>
            <sec:authorize url="/welcome">
            <div class="form-group">
                <textarea class="form-control" rows="5" readonly>Your principal object is....: <%= SecurityContextHolder.getContext().getAuthentication().getPrincipal() %></textarea>
            </div>
            </sec:authorize>
            <sec:authorize ifNotGranted="ROLE_">
                <a href="welcome" class="btn btn-lg btn-primary btn-block">login</a>
            </sec:authorize>
        </div>
    </div>
</div>

</body>
</html>