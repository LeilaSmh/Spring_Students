<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestion Eleves / Eleves</title>
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

   <input type="button" value="Ajouter Un Eleve"
    onclick="window.location.href='showForm'; return false;"
    class="btn btn-primary" /> <br />
   <br />
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Liste des eleves</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>ID</th>
       <th>Nom de l'Eleve</th>
       <th>CIN de l'Eleve</th>
       <th>CNE de l'Eleve</th>
       <th>Filiere</th>
       <th>Actions</th>
      </tr>

      <!-- loop over and print our customers -->
      <c:forEach var="tempEleve" items="${eleves}">

       <!-- construct an "update" link with customer id -->
       <c:url var="updateLink" value="/dashboard/eleve/updateForm">
        <c:param name="eleveId" value="${tempEleve.id}" />
       </c:url>

       <!-- construct an "delete" link with customer id -->
       <c:url var="deleteLink" value="/dashboard/eleve/delete">
        <c:param name="eleveId" value="${tempEleve.id}" />
       </c:url>

       <tr>
        <td>${tempEleve.id}</td>
        <td>${tempEleve.nom}</td>
        <td>${tempEleve.cin}</td>
        <td>${tempEleve.cne}</td>
        <td>${tempEleve.filiere.nomfiliere}</td>

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