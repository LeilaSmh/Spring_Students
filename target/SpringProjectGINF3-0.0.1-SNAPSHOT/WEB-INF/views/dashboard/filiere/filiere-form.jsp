<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form-Filiere</title>
<%@ page isELIgnored="false"%>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
 <div class="container">
 	<form:form action="${pageContext.request.contextPath}/logout" method="POST"> 
 		<input type="submit" value="Logout" />
 	</form:form>
  <div class="col-md-offset-2 col-md-7">
   <h3 class="text-center">Gestion Eleves / Filieres</h3>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Ajouter une filiere</div>
    </div>
    <div class="panel-body">
     <form:form action="saveFiliere" cssClass="form-horizontal"
      method="post" modelAttribute="filiere">

      <!-- need to associate this data with customer id -->
      <form:hidden path="id" />

      <div class="form-group">
       <label for="nomfiliere" class="col-md-3 control-label">Nom Filière</label>
       <div class="col-md-9">
        <form:input path="nomfiliere" cssClass="form-control" />
       </div>
      </div>
      <div class="form-group">
       <label for="responsable" class="col-md-3 control-label">Responsable de la Filière</label>
       <div class="col-md-9">
        <form:input path="responsable" cssClass="form-control" />
       </div>
      </div>

      <div class="form-group">
       <!-- Button -->
       <div class="col-md-offset-3 col-md-9">
        <form:button cssClass="btn btn-primary">Submit</form:button>
       </div>
      </div>

     </form:form>
    </div>
   </div>
  </div>
 </div>
</body>
</html>