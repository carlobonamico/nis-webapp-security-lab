<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css"/>
</head>
<body>

	<div class = "container">

		<div id="login-box" class="wrapper">

            <div class="form-signin">

                <h3 class="alert alert-danger">HTTP Status 403 - Access is denied</h3>
                <hr class="colorgraph"><br>

                <c:choose>
                    <c:when test="${empty username}">
                        <h2>You do not have permission to access this page!</h2>
                    </c:when>
                    <c:otherwise>
                        <h2>Username : ${username} <br/>You do not have permission to access this page!</h2>
                    </c:otherwise>
                </c:choose>

            </div>

		</div>
	</div>

</body>
</html>