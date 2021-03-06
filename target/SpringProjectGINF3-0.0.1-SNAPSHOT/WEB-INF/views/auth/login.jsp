<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form-Filiere</title>
<%@ page isELIgnored="false"%>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
 <link href="<c:url value="/resources/css/fontawesome-all.min.css" />"
 rel="stylesheet">
 <link href="<c:url value="/resources/css/iofrm-style.css" />"
 rel="stylesheet">
 <link href="<c:url value="/resources/css/iofrm-theme3.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<script src="<c:url value="/resources/js/popper.min.js" />"></script>

</head>
<body>
    <div class="form-body">
        <div class="website-logo">
            <a href="index.html">
                <div class="logo">
                    <img class="logo-size" src="${pageContext.request.contextPath}/resources/images/logo-light.svg" alt="">
                </div>
            </a>
        </div>
        <div class="row">
            <div class="img-holder">
                <div class="bg"></div>
                <div class="info-holder">

                </div>
            </div>
            <div class="form-holder" style="width: 65vw;">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Login to Dashboard</h3>
                        <div class="page-links">
                            <a href="login3.html" class="active">Login</a><a href="${pageContext.request.contextPath}/auth/register">Register</a>
                        </div>
                        
                        <c:if test="${param.error != null}">
							<div class="alert alert-warning alert-dismissible show with-icon" role="alert">
                            Username ou Mot de passe invalide !
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">x</span>
                            </button>
                        </div>
						</c:if>
                        <form:form action="${pageContext.request.contextPath}/loginPost" method="post">
                            <input class="form-control" type="text" name="username" placeholder="username" required />
                            <input class="form-control" type="password" name="password" placeholder="Password" required>
                            <div class="form-button">
                                <button id="submit" type="submit" class="ibtn">Login</button>
                            </div>
                        </form:form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>