<%@ page import="org.owasp.esapi.ESAPI" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Welcome Page</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css"/>
</head>
    <body>

        <div class="container">

            <div id="login-box" class="wrapper">

                <form action="<c:url value='/welcome' />" method="post" id="logoutForm" class="form-signin">

                    <div class="form-group">
                        <h3 class="form-signin-heading" id="welcomeTitle">Welcome Back! ${sessionScope.userDetails.username}</h3>
                        <hr class="colorgraph">
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" readonly><%= ESAPI.encoder().encodeForHTML("1\"><script>alert(12345)</script>")%>
                            <%= ESAPI.encoder().encodeForHTML("1\"><script>alert(document.cookie)</script>")%>
                            <%= ESAPI.encoder().encodeForHTML("1\"><script>document.getElementById(\"welcomeTitle\").innerHTML=\"SALVE\"</script>")%></textarea>
                    </div>
                    <div class="form-group">
                        <input type="text" id="msgText" name="msgText" class="form-control" value="${msgText}" >
                    </div>
                    <div class="form-group">
                        <button class="btn btn-lg btn-primary btn-block"  name="Submit" type="Submit">Send Message</button>
                    </div>

                </form>

            </div>
        </div>
    </body>
</html>