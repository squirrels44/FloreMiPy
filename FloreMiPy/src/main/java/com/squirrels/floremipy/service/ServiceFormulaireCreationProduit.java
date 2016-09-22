package com.squirrels.floremipy.service;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.squirrels.floremipy.dao.CreationProduitDAO;
import com.squirrels.floremipy.dto.CreationProduitDTO;
import com.squirrels.floremipy.model.Article;


@Service
public class ServiceFormulaireCreationProduit {
	String PERSISTENCE_UNIT_NAME = "FloreMiPy";
	
@Autowired
CreationProduitDAO creationProduitDAO;
	
	public String validationAjoutProduit(String name){
		String res=null;
		if(creationProduitDAO.articleExisteDeja(name)){
			 res="Attention : le produit existe déjà!";
		}
		return res;		
	}
}
