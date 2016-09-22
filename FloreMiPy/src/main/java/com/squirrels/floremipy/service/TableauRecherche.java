package com.squirrels.floremipy.service;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.squirrels.floremipy.dao.RechercheArticleDAO;



@RestController
public class TableauRecherche {
	public static final String PERSISTENCE_UNIT_NAME="FloreMiPy";
	private static EntityManagerFactory emf=null;
	private static EntityManager em=null;
	private static RechercheArticleDAO articleDAO=null;
	String cheminDuFichier = "D:/adil/exemple.txt";
	
	
	@RequestMapping("/recherche")
	public List GetRecherche(){
		emf=Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		em=emf.createEntityManager();
		articleDAO=new RechercheArticleDAO(em);
		
		return articleDAO.findArticles();
		
		/*for (int i = 0; i < list.size(); i++) {
			
		}
		String jsonContent = "\"developers\":[{\"firstName\": \"Hack\",\"lastName\": \"Track\"},{\"firstName\": \"ad\",\"lastName\": \"il\"}]";
		
		
		File file = new File(cheminDuFichier){};
				try {
					if (file.exists()){
						file.delete();
					}
					file.createNewFile();
					FileWriter writer = new FileWriter(file);
					writer.write(jsonContent);
					writer.flush();
					writer.close();
				} catch (IOException e) {
					System.out.println("Erreur: impossible de créer ou supprimer le fichier '"
							+ cheminDuFichier + "'");
				}*/
	}
}


