<%@ page isELIgnored='false'%>
<head>
<title>Floral a Blogging Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<link href="webapp/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="webapp/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<!-- js -->
<script src="webapp/js/jquery.min.js"></script>
<!-- //js -->
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Floral Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>

<legend>Formulaire de connexion</legend>
<form method="post" action="connexion">
	

  <div class="form-group">
    <label for="nom">Login</label>
    <input type="text" name="nom" value="${form.login}" class="form-control" id="nom">
  </div>
  
  <div class="form-group">
    <label for="motdepasse">Password:</label>
    <input type="password" name="motdepasse" value="" class="form-control" id="motdepasse">
  </div>
  
  <button type="submit" class="btn btn-default">Connexion</button>
  <button type="submit" class="btn btn-default">Inscription</button>
</form>
	
	
	
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

