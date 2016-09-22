package com.squirrels.floremipy.dao;

import java.util.List;
import javax.persistence.EntityManager;

public class RechercheArticleDAO {
	EntityManager em;

	public RechercheArticleDAO(EntityManager em) {
		super();
		this.em = em;
	}
	
	
	public List findArticles(){
		String requete="SELECT NEW com.squirrels.floremipy.dto.ArticleRechercheDTO(ar.imgsrc, ar.name, ar.description, ar.quantityInStock) FROM Article ar";
		return em.createQuery(requete).getResultList();
	}
}

