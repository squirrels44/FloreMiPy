package com.squirrels.floremipy.service;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.squirrels.floremipy.model.Article;


@Service
public class ServiceFormulaireCreationProduit {
	String PERSISTENCE_UNIT_NAME = "FloreMiPy";
	
	@Autowired
	ServiceFormulaireCreationProduit serviceFormulaireCreationProduit;

	

	public void ajoutProduit(Article article){
		EntityManagerFactory emf=Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		EntityManager em=emf.createEntityManager();
		EntityTransaction transac = em.getTransaction();
		
		transac.begin();
		
		try{ 
			em.persist(article);
			transac.commit();
		}
		finally{

			if(em.getTransaction().isActive()){
				em.getTransaction().rollback();
			}
		}

		em.close();
		emf.close();
	}
}
