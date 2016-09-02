<%@page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>${title}</title>
</head>
<body>
	<jsp:include page="_menu.jsp" />


	<h1>${message}</h1>

	<form method="POST" action="formRecherche">
			<div>
				<input  type="text" 
					name="recherche"
					onBlur="rechercher('recherche')"
					value="${form['recherche']}" />
			</div>
	</form>

	<div id="page-wrapper">
		<%-- <c:import		></c:import> --%>
	</div>
</body>
</html>