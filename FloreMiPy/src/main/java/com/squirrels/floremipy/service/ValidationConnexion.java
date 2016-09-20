package com.squirrels.floremipy.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.squirrels.floremipy.dao.ICustomerDao;
import com.squirrels.floremipy.model.Customer;

@Service
public class ValidationConnexion {
	
	@Autowired
	ICustomerDao customerDao;

	public String validateNameConnexion(String login){
		String res = null;
		
		if (login !=null && login.trim().length() != 0){
			if (customerDao.isLoginExist(login)){
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
			if (customerDao.isPwdCorresponding(login, motdepasse)){
				return res;
			} else { res = "Mot de passe erronné" ;}
		}else{res = "Veuillez saisir un Mot de passe";

		}
		return res ;
	}
}

	

