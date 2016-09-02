<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FloreMiPy</title>
<meta charset="utf-8">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/sb-admin.css" rel="stylesheet">


<meta name="viewport" content="width=device-width, initial-scale=1">


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>


<body>


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
  </div>
  
  <div class="container-fluid alignDroite">
	<a href="${pageContext.request.contextPath}/userInfo">User</a> 
	<a href="${pageContext.request.contextPath}/caddie">Voir mon caddie</a> 
	<a href="${pageContext.request.contextPath}/parametres">Paramètres</a>

	<%-- <c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
     <a href="${pageContext.request.contextPath}/logout">Logout</a>
	<%-- </c:if> --%>
	</div>
  
</nav>







</html>