package com.squirrels.floremipy.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.squirrels.floremipy.model.Article;
import com.squirrels.floremipy.model.Customer;

@Component
public class CreationProduitDAO {

	@PersistenceContext
	EntityManager em;

	public CreationProduitDAO() {
		super();
	}

	public CreationProduitDAO(EntityManager em) {
		super();
		if(em==null){
			EntityManagerFactory emf=Persistence.createEntityManagerFactory("FloreMiPy");
			this.em=emf.createEntityManager();
		}
	}



	public void AjoutProduitDAO(Article article){
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
	}

	public boolean articleExisteDeja(String name){
		boolean res=false;
		Query requete=em.createQuery("SELECT NEW com.squirrels.floremipy.dto.CreationProduitDTO(a.name, a.category, a.description, a.imgsrc) FROM Article a WHERE a.name= :name");
		requete.setParameter("name", name);
		if(requete.getResultList().size()==1){
			res=true;
		}
		return res;


	}

	//TODO: fermer emf 



}
