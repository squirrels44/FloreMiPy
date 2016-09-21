package com.squirrels.floremipy.control;

import java.util.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.squirrels.floremipy.beans.User;

@Controller
public class ConnexionControler {


		private final static Logger logger = 
				Logger.getLogger(ConnexionControler.class.getName());

		@RequestMapping(value = "/connexion", method = RequestMethod.GET)
		public String getConnexion(Model model) {
			logger.info("getConnexion");
			model.addAttribute("formulaireConnexion", new User(null, null));
			model.addAttribute("statusOK", false);
			model.addAttribute("statusMessage", "");
			return "connexion";
		} 
	}
