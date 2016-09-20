<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">FloreMiPy</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <%-- <c:if test="${pageContext.request.userPrincipal.name == null}"> --%>
      <li><a href="${pageContext.request.contextPath}/connexion">Connexion</a></li>
      <li><a href="${pageContext.request.contextPath}/inscription">S'inscrire</a></li>
      <%-- </c:if> --%>
    </ul>
    
    <div class="nav alignerADroite">
	<a href="${pageContext.request.contextPath}/userInfo">User</a> 
	<a href="${pageContext.request.contextPath}/caddie">Voir mon caddie</a> 
	<a href="${pageContext.request.contextPath}/parametres">Paramètres</a>

	<%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
     <a href="${pageContext.request.contextPath}/logout">Logout</a>
	<%-- </c:if> --%>
	</div>
  </div>
  
  
  
</nav>