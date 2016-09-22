<%@ page isELIgnored='false'%>
<head>
<script src="webapp/js/jquery.min.js"></script>

<link type="text/css" rel="stylesheet" href="css/connexion.css" />
</head>


<body>
	<div class="titre">
		<h3>Formulaire d'Inscription</h3>
	</div>
<div class="cadre">
	<form method="post" action="inscription">
		<div class="caseConnexion">
		
			<div class="form-pwd">
				<label for="login"> Login </label> <input type="text" name="nom"
					value="" class="form-control" id="login" /> 
					<span class="erreur"> ${error['login']} </span>
			</div>

			<div class="form-pwd">
				<label for="motdepasse1">Mot de passe</label> <input type="password"
					name="motdepasse1" value="" class="form-control" id="motdepasse1" />
				<span class="erreur">${error['motdepasse1']}</span>
			</div>
			
			<div class="form-pwd">
				<label for="motdepasse2">Confimez le mot de passe</label> <input type="password"
					name="motdepasse2" value="" class="form-control" id="motdepasse2" />
				<span class="erreur">${error['motdepasse2']}</span>
			</div>
			
			<div class="form-pwd">
				<label for="name">Nom</label> <input type="text"
					name="name" value="" class="form-control" id="name" />
				<span class="erreur">${error['name']}</span>
			</div>
			
			<div class="form-pwd">
				<label for="fisrtname">Prénom</label> <input type="text"
					name="fisrtname" value="" class="form-control" id="fisrtname" />
				<span class="erreur">${error['fisrtname']}</span>
			</div>
			
			<div class="form-pwd">
				<label for="phone">Téléphone</label> <input type="tel"
					name="phone" value="" class="form-control" id="phone" />
				<span class="erreur">${error['phone']}</span>
			</div>
			
			<div class="form-pwd">
				<label for="email">Email</label> <input type="email"
					name="email" value="" class="form-control" id="email" />
				<span class="erreur">${error['email']}</span>
			</div>
			
			<div class="form-pwd">
				<label for="location">Adresse</label> <input type="text"
					name="location" value="" class="form-control" id="location" />
				<span class="erreur">${error['location']}</span>
			</div>
			
			<div class="form-pwd">
				<label for="zipcode">Code postal</label> <input type="text"
					name="zipcode" value="" class="form-control" id="zipcode" />
				<span class="erreur">${error['zipcode']}</span>
			</div>
			
			<div class="form-pwd">
				<label for="city">Ville</label> <input type="text"
					name="city" value="" class="form-control" id="city" />
				<span class="erreur">${error['city']}</span>
			</div>
			
			<div class="form-button">
			<button type="submit" class="case">Enregistrer</button>
			<p class="${statusOK ? 'succes' : 'erreur'}">${statusMessage}</p>
			</div>
		</div>
	</form>
</div>
</body>






