package com.squirrels.floremipy.control;

import java.util.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.squirrels.floremipy.beans.User;

@Controller
public class InscriptionControler {


		private final static Logger logger = 
				Logger.getLogger(InscriptionControler.class.getName());

		@RequestMapping(value = "/inscription", method = RequestMethod.GET)
		public String getInscription(Model model) {
			logger.info("getInscription");
			model.addAttribute("formulaireInscription", new User(null, null));
			model.addAttribute("statusOK", false);
			model.addAttribute("statusMessage", "");
			return "inscription";
		} 
	}
