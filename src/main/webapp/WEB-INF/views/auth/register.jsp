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
                        <h3>Register</h3>
                        <div class="page-links">
                            <a  href="${pageContext.request.contextPath}/auth/login" class="">Login</a><a class="active" href="${pageContext.request.contextPath}/auth/register">Register</a>
                        </div>
                        
                        <c:if test="${param.error != null}">
							<div class="alert alert-warning alert-dismissible show with-icon" role="alert">
                            Entrez un username ou mot de passe valide
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">x</span>
                            </button>
                        </div>
						</c:if>
						<c:if test="${param.usernameexists != null}">
							<div class="alert alert-warning alert-dismissible show with-icon" role="alert">
                            ce username existe deja !
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">x</span>
                            </button>
                        </div>
						</c:if>
                        <form:form action="${pageContext.request.contextPath}/auth/registerPost" method="post" modelAttribute="user">
                            <form:input class="form-control" type="text" path="username" placeholder="username"  />
                            <form:input class="form-control" type="password" path="password" placeholder="Password"  />
                            <form:input class="form-control" type="hidden" path="enabled" value="1" />
                            <div class="form-button">
                                <button id="submit" type="submit" class="ibtn">Register</button>
                            </div>
                        </form:form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>