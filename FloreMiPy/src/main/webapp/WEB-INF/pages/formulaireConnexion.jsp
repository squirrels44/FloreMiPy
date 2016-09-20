<%@ page isELIgnored='false'%>
<head>
<script src="webapp/js/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/connexion.css" />
</head>


<body>
	<div class="titre">
		<h3>Formulaire de connexion</h3>
	</div>
<div class="cadre">
	<form method="post" action="connexion">
		<div class="caseConnexion">
			<div class="form-pwd">
				<label for="login"> Login </label> <input type="text" name="nom"
					value="${formulaireConnexion.login}" class="form-control" id="login" /> 
					<span class="erreur"> ${error['login']} </span>
			</div>

			<div class="form-pwd">
				<label for="motdepasse">Mot de passe</label> <input type="password"
					name="motdepasse" value="" class="form-control" id="motdepasse" />
				<span class="erreur">${error['motdepasse']}</span>
			</div>
			
			<div class="form-button">
			<button type="submit" class="case">Connexion</button>
			<button type="submit">Inscription</button>
			<p class="${statusOK ? 'succes' : 'erreur'}">${statusMessage}</p>
			</div>
		</div>
	</form>
</div>
</body>




<!--  	
	
	<div class="form-group">
		<label for="nom"> Login </label> 
		<input type="text" name="nom" value="${form.login}" class="form-control" id="nom"/> 
		<span class="erreur">${error['login']}</span> <br /> 
		</div>
		
		<div class="form-group">
		<label for="motdepasse">Mot de passe</label> 
		<input type="password" name="motdepasse" value="" class="form-control" id="motdepasse"/> 
		<span class="erreur">${error['motdepasse']}</span> <br /> 
		</div>
		
		
		<button type="submit" class="btn btn-default"> Connexion </button> <br />
		
		<button type="submit" class="btn btn-default" > Inscription </button> <br />
		
		<p class="${statusOK ? 'succes' : 'erreur'}">${statusMessage}</p>

</form>
-->

