<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestion Eleves / Filieres</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<%@ page isELIgnored="false"%>
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h3 class="text-center">Dashboard</h3>
   <hr />
	
   <input type="button" value="Ajouter Une Filière"
    onclick="window.location.href='showForm'; return false;"
    class="btn btn-primary" /> <br />
   <br />
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Liste des filieres</div>
    </div>
    <div class="panel-body">
    User : <security:authentication property="principal.username" />
     Roles : <security:authentication property="principal.authorities" />
     <table class="table table-striped table-bordered">
      <tr>
       <th>ID la filière</th>
       <th>Nom de la Filière</th>
       <th>Responsable de la Filière</th>
       <th>Actions</th>
      </tr>

      <!-- loop over and print our customers -->
      <c:forEach var="tempFiliere" items="${filieres}">

       <!-- construct an "update" link with customer id -->
       <c:url var="updateLink" value="/dashboard/filiere/updateForm">
        <c:param name="filiereId" value="${tempFiliere.id}" />
       </c:url>

       <!-- construct an "delete" link with customer id -->
       <c:url var="deleteLink" value="/dashboard/filiere/delete">
        <c:param name="filiereId" value="${tempFiliere.id}" />
       </c:url>

       <tr>
        <td>${tempFiliere.id}</td>
        <td>${tempFiliere.nomfiliere}</td>
        <td>${tempFiliere.responsable}</td>

        <td>
         <!-- display the update link --> <a href="${updateLink}">Mettre à Jour</a>
         | <a href="${deleteLink}"
         onclick="if (!(confirm('confirmer la suppression ?'))) return false">Supprimer</a>
        </td>
       </tr>
      </c:forEach>
     </table>

    </div>
   </div>
  </div>

 </div>
 
</body>

</html>