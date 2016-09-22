package com.squirrels.floremipy.dao;

import static org.junit.Assert.*;

import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.squirrels.floremipy.dto.ArticleRechercheDTO;
import com.squirrels.floremipy.model.Article;


public class RechercheArticleTest {
	public static final String PERSISTENCE_UNIT_NAME="FloreMiPy";
	private static EntityManagerFactory emf=null;
	private static EntityManager em=null;
	private static RechercheArticleDAO articleDAO=null;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		emf=Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		em=emf.createEntityManager();
		articleDAO=new RechercheArticleDAO(em);
	}

	@Test
	public void testSelectNew(){
		List liste1 =articleDAO.findArticles();
		assertEquals(12,liste1.size());
		
		for (int i = 0; i < liste1.size(); i++) {
			ArticleRechercheDTO a = (ArticleRechercheDTO) liste1.get(i);
			System.out.println(a.getNom());
		}
		
		
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		em.close();
		emf.close();
	}

	

}
