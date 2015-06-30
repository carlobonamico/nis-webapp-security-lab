<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css"/>
</head>
<body>

<div class = "container">
	<div id="login-box" class="wrapper">

	<form action="<c:url value="/j_spring_security_logout" />" method="post" id="logoutForm" class="form-signin">

        <h3 class="form-signin-heading">Welcome admin! <%=SecurityContextHolder.getContext().getAuthentication().getName() %></h3>
        <hr class="colorgraph"><br>

		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <button class="btn btn-lg btn-primary btn-block"  name="Submit" type="Submit">Logout</button>
	</form>

	</div>
</div>
</body>
</html>