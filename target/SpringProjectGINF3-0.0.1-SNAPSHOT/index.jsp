<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<body>
<h2>Hello World!</h2>
<security:authorize access="!hasRole('GUEST')">
<!-- for non members -->
simo
</security:authorize>

<security:authorize access="hasRole('GUEST')">
<!-- for non members -->
simo
</security:authorize>
</body>
</html>
