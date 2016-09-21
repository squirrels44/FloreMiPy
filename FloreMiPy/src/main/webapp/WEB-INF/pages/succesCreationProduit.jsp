<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/welcomePage.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <jsp:include page="_menu.jsp" />
<div class="fondBlanc">
<h2>Produit créé avec succès !!</h2>
   <table>
    <tr>
        <td>Name</td>
        <td>${nomProduit}</td>
    </tr>
    <tr>
        <td>Categorie</td>
        <td></td>
    </tr>
    <tr>
        <td>Description</td>
        <td>${descriptionProduit}</td>
    </tr>
</table> 
</div> 
</body>
</html>