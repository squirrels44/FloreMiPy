<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/welcomePage.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="styles.css" />
<meta http-equiv="Content-Type" content="text/html">
<title>Insert title here</title>
<script type="text/javascript">
	function radioSelectObject(){
        
		//variable qui prend pur la valeur un boolean : le radio boutton plante est-il séléctionné ? 
		//var selected_radio_plante = document.getElementById('typePlante').checked;
       
 
     		//prend en variable 'select'la liste des valeurs du bouton select portant le nom "categorie"

    		var o=document.getElementById("categorieObjet");
    		o.style="display:block";
    		var p=document.getElementById("categoriePlante");
    		p.style="display:none";
     }
     
     function radioSelectPlant(){
        
    		var o=document.getElementById("categorieObjet");
    		o.style="display:none";
    		var p=document.getElementById("categoriePlante");
    		p.style="display:block";
     
  }
</script>
</head>


<body>

	 <jsp:include page="_menu.jsp" />
	  
	<div class="fondBlanc">           
	<h1>Ajout d'un produit</h1>
	           
	<!-- /login?error=true -->
	     
	<c:if test="${param.error == 'true'}">
         <div style="color: red; margin: 10px 0px;">
			                           Echec de l'ajout de produit !<br />
			                Raison : 
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			                           
		</div>
    </c:if>
	           
	<h3>Complétez les différents champs du formulaire :</h3>
	           
	<form:form name="formProduit" action="ajoutProduit" modelAttribute="Article" method='POST'>
		      
		<table>
			<tr>
				<td>Type de produit *</td>
				<td><input type='radio' id="typePlante" name='typeProduit'
					value='plante' onclick="radioSelectPlant()" checked>Plante <input
					type='radio' id="typeObjet" name='typeProduit' value='objet'
					onclick="radioSelectObject()"> Objet</td>
			</tr>
			<tr>
				<td>Nom du produit *</td>
				<td><form:input type='text' name='nomProduit' path='nomProduit' required /></td>
			</tr>
			<tr>
				<td>Catégorie *</td>
				<td><select size="1" style="display: block"
					id="categoriePlante">

						<option value="1">Arbre d'ornement</option>
						<option value="2">Arbuste</option>
						<option value="3">Plante à fleurs</option>
						<option value="4">Arbre fruitier</option>
				</select> <select size="1" style="display: none" id="categorieObjet">
						<option value="5">Decoration</option>
						<option value="6">Outil</option>
						<option value="7">Consommable</option>

				</select></td>
			</tr>



			<tr>
				<td>Description:</td>
				<td><form:textarea placeholder="description du produit" path='descriptionProduit'/>
				</td>

			</tr>
			<tr>
				<td><input name="submit" type="submit" value="submit" /></td>
			</tr>
		</table>
		  
	</form:form>
	</div>
</body>
</html>