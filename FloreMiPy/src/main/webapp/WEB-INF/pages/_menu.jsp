<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
	<div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

		<a href="${pageContext.request.contextPath}/connexion">Connexion</a> <a
			href="${pageContext.request.contextPath}/welcome">S'inscrire</a>

	</div>
<%-- </c:if> --%>

<div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">


	<a href="${pageContext.request.contextPath}/userInfo">User</a> <a
		href="${pageContext.request.contextPath}/caddie">Voir mon caddie</a> <a
		href="${pageContext.request.contextPath}/parametres">Paramètres</a>

	<%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
  
     
     <a href="${pageContext.request.contextPath}/logout">Logout</a>

	<%-- </c:if> --%>

</div>