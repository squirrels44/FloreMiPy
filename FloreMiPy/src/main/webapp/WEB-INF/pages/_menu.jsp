<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">FloreMiPy</a>
		</div>

		<ul class="nav navbar-nav">
			<li><a data-toggle="pill" href="/FloreMiPy">Home</a></li>
			<%-- <c:if test="${pageContext.request.userPrincipal.name == null}"> --%>
			<li><a data-toggle="pill" href="${pageContext.request.contextPath}/connexion">Connexion</a></li>
			<li><a data-toggle="pill" href="${pageContext.request.contextPath}/inscription">S'inscrire</a></li>
			<%-- </c:if> --%>
		</ul>




		<div class="nav navbar-nav alignerADroite">
		
			<p><a href="${pageContext.request.contextPath}/userInfo">Mon
					Profil</a>
			<a href="${pageContext.request.contextPath}/caddie">Voir
					mon caddie</a>
			<a href="${pageContext.request.contextPath}/parametres">Paramètres</a>

			<%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
			<a href="${pageContext.request.contextPath}/logout">Deconnexion</a></p>
			
			<%-- </c:if> --%>
			
		</div>
		
		
	</div>



</nav>