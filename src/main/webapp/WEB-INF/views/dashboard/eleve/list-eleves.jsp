<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<html lang="en" class="cssmask skrollr skrollr-desktop">
  <head><style class="vjs-styles-defaults">
      .video-js {
        width: 300px;
        height: 150px;
      }

      .vjs-fluid {
        padding-top: 56.25%
      }
    </style><style class="vjs-styles-dimensions">
      .video-dimensions {
        width: 640px;
        height: 264px;
      }

      .video-dimensions.vjs-fluid {
        padding-top: 56.25%;
      }
    </style>
    <meta charset="utf-8">
    <%@ page isELIgnored="false"%>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
       <link href="<c:url value="/resources/css/vendor.css" />"  rel="stylesheet">
       <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        <script src="<c:url value="https://code.jquery.com/jquery-3.5.1.min.js" />"></script>

        <script src="<c:url value="https://unpkg.com/headroom.js@0.9.4/dist/headroom.js" />"></script>
        <script src="<c:url value="https://unpkg.com/headroom.js@0.9.4/dist/jQuery.headroom.min.js" />"></script>
        <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/masonry/3.3.2/masonry.pkgd.js" />"></script>
        <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js" />"></script>
        <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" />"></script>
        <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/jquery.magnific-popup.min.js" />"></script>

            <title>Liste des �tudiants</title>

<body class="headroom headroom--not-bottom headroom--not-top headroom--unpinned">
  <header class="header header-sticky header-minimal-light">
    <div class="container">
      <div class="row">
        <nav class="navbar navbar-expand-lg navbar-light">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/">Accueil</a>
              </li>
              
            </ul>
            <ul class="navbar-nav">
              <li class="nav-item">
                <form:form action="${pageContext.request.contextPath}/logout" method="POST"> 
		 		<input type="submit" value="Logout" class="btn"/>
		 	  </form:form>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </div>
  </header>


    


    <section>
      <div class="container">
        <div class="row justify-content-between">

          <!-- toc -->
          <aside class="col-lg-3">
            <div class="sticky sticky-with-header" style="">
              <button class="overlay-menu-open"></button>
              <div class="overlay-menu boxed bg-dark text-white mb-3 mb-lg-0">
                <ul id="page-nav" class="nav flex-column nav-vertical">
                  <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/dashboard/"  role="button" aria-expanded="true" style="">Dashboard</a>
                    
                  </li>
                  <li class="nav-item">
                    <a class="nav-link"  data-toggle="collapse" href="#menu-2" role="button" aria-expanded="false" aria-controls="menu-2">Fili�res</a>
                    <div class="collapse" id="menu-2" data-parent="#page-nav">
                      <div>
                        <ul class="nav flex-column">
                          <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/dashboard/filiere/list">Liste des fili�res</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/dashboard/filiere/showForm">Ajouter une fili�re</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#menu-3" role="button" aria-expanded="false" aria-controls="menu-3">Eleves</a>
                    <div class="collapse" id="menu-3" data-parent="#page-nav">
                      <div>
                        <ul class="nav flex-column">
                          <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/dashboard/eleve/list">Liste des �tudiants</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/dashboard/eleve/showForm">Ajouter un �tudiant</a>
                          </li>
                          
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </aside>
          <!-- / toc -->


          <!-- content -->
          <article id="content" class="col-lg-9">

            <h1 class="h2 font-weight-light"> <b>Liste des �tudiants</b>.</h1>




            <!-- table -->
            <section id="section-4">
              <h2 class="section-title">Eleves <a data-scroll="" href="${pageContext.request.contextPath}/dashboard/eleve/showForm" class="anchor" data-toggle="tooltip" data-placement="top" title="" data-original-title="Ajouter Eleve"></a></h2>
              <div class="row">
                <div class="col">
                  <table class="table table-striped boxed">
                    <thead>
                      <tr>
                       <th>ID</th>
                       <th>Prenom</th>
				       <th>Nom</th>
				       <th>CNE</th>
				       <th>CIN</th>
				       <th>Filiere</th>
				       <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
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
        <td>${tempEleve.prenom}</td>
        <td>${tempEleve.nom}</td>
        <td>${tempEleve.cin}</td>
        <td>${tempEleve.cne}</td>
        <td>${tempEleve.filiere.nomfiliere}</td>

        <td>
         <!-- display the update link --> <a class="" href="${updateLink}" style="color:black"> <i class="icon-edit"></i> </a>
          <a href="${deleteLink}"
         onclick="if (!(confirm('confirmer la suppression ?'))) return false " style="color:black"><i class="icon-trash"></i></a>
        </td>
       </tr>
      </c:forEach>
                      
                    </tbody>
                  </table>
                </div>
              </div>
            </section>
            <!-- / table -->


          </article>
          <!-- / content -->



        </div>
      </div>
    </section>


    <!-- go top -->
    <div class="half">
      <span class="half-bg bg-dark"></span>
      <div class="container">
        <div class="row">
          <div class="col text-center">
            <div class="btn-frame">
              <a data-scroll="" href="#top" class="btn btn-top btn-primary btn-ico btn-lg btn-rounded"><i class="icon-arrow-up2 fs-22"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / go top -->


    <!-- footer -->
    <footer class="bg-dark">
      <div class="container">
        <div class="row gutter-3">
          <div class="col-12 col-md-6 text-white">
            <p class="mb-4"> <b>R�alis� par : </b> Chanaa Mohammed, Bahnini Saad, Samih Leila </p>
            <p class="mb-4"> <b>Encadr� par : </b> Monsieur Mohamed El Haddad</p>
            
          </div>
          
          </div>
        </div>
      </div>
    </footer>
    <!-- / footer -->

    <script src="<c:url value="/resources/js/jquery.lavalamp.min.js" />"></script>
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/smooth-scroll/16.1.3/smooth-scroll.min.js" />"></script>
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" />"></script>
    <script src="<c:url value="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/skrollr/0.6.30/skrollr.min.js" />"></script>
    <script src="<c:url value="/resources/js/sticky-kit.min.js" />"></script>
    <script src="<c:url value="/resources/js/app.js" />"></script>
  

  </body></html>