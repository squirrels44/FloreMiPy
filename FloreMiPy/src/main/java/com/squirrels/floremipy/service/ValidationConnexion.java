package com.squirrels.floremipy.service;


import com.squirrels.floremipy.beans.User;


public class ValidationConnexion {

	public String validateNameConnexion(String login){
		String res = null;
		
		if (login !=null && login.trim().length() != 0){
			if (users.keySet().contains(login)){
				return res;
			} else { res = "Identifiant erronné" ;}
		}else{res = "Veuillez saisir un identifiant";

		}
		return res ;
	}

	//critere de validation du mot de passe de connexion
	public String validatePwdConnexion(String login, String motdepasse) {
		String res = null;
	
		if(motdepasse !=null && motdepasse.trim().length() != 0){
			if (motdepasse.equals(users.get(login).getPwd())){
				return res;
			} else { res = "Mot de passe erronné" ;}
		}else{res = "Veuillez saisir un Mot de passe";

		}
		return res ;
	}

}

	

