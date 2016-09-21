package com.squirrels.floremipy.control;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.squirrels.floremipy.service.ServiceFormulaireCreationProduit;


import com.squirrels.floremipy.model.Article;

@Controller
public class creationProduitController {


	@RequestMapping(value = "/formulaireCreationProduit")
	public String getFormulaireCreationProduit(Model model){
		return "formulaireCreationProduit";

	}
	
	@RequestMapping(value="/ajoutProduit", method = RequestMethod.POST)
	public String submitCreationProduit(@ModelAttribute("article") Article article,
			BindingResult result,
			ModelMap model){
		
		if (result.hasErrors()) {
            return "error";
        }
		article=new Article();
		model.addAttribute("nomProduit",article.getName());
		model.addAttribute("descriptionProduit",article.getDescription());
		//serviceFormulaireCreationProduit.ajoutProduit(article);
		return "succesCreationProduit";
	
	}

}
