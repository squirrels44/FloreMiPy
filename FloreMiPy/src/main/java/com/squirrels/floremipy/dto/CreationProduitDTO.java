package com.squirrels.floremipy.dto;

public class CreationProduitDTO {

	
	String nomProduit;
	String categorie;
	String description;
	String imgsrc;
	
	
	public CreationProduitDTO(String nomProduit, String categorie, String description, String imgsrc) {
		super();
		this.nomProduit = nomProduit;
		this.categorie = categorie;
		this.description = description;
		this.imgsrc = imgsrc;
	}


	public String getNomProduit() {
		return nomProduit;
	}


	public void setNomProduit(String nomProduit) {
		this.nomProduit = nomProduit;
	}


	public String getCategorie() {
		return categorie;
	}


	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getImgsrc() {
		return imgsrc;
	}


	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	
	
	
	
}
