<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <div class="col-md-offset-2 col-md-7">
   <h3 class="text-center">Gestion Eleves / Filieres</h3>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Ajouter un Eleve</div>
    </div>
    <div class="panel-body">
     <form:form action="saveEleve" cssClass="form-horizontal"
      method="post" modelAttribute="eleve">

      <!-- need to associate this data with customer id -->
      <form:hidden path="id" />

      <div class="form-group">
       <label for="nomfiliere" class="col-md-3 control-label">Nom</label>
       <div class="col-md-9">
        <form:input path="nom" cssClass="form-control" />
       </div>
      </div>
      
      <div class="form-group">
       <label for="nomfiliere" class="col-md-3 control-label">Prenom</label>
       <div class="col-md-9">
        <form:input path="prenom" cssClass="form-control" />
       </div>
      </div>
      
      <div class="form-group">
       <label for="nomfiliere" class="col-md-3 control-label">Cin</label>
       <div class="col-md-9">
        <form:input path="cin" cssClass="form-control" />
       </div>
      </div>
      
      <div class="form-group">
       <label for="nomfiliere" class="col-md-3 control-label">Cne</label>
       <div class="col-md-9">
        <form:input path="cne" cssClass="form-control" />
       </div>
      </div>
      
      <div class="form-group">
       <label for="nomfiliere" class="col-md-3 control-label">Filiere</label>
       <div class="col-md-9">
        <form:select  path="filiere.id" cssClass="form-control">
		     <c:forEach items="${filieres}" var="filiere">
		        <option  value="${filiere.id}"  ${filiere.id == eleve.filiere.id ? 'selected="selected"' : ''}>${filiere.nomfiliere}</option>
		    </c:forEach>
		 </form:select>
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