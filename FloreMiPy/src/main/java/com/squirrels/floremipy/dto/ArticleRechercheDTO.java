package com.squirrels.floremipy.dto;

public class ArticleRechercheDTO {
	String image;
	String nom;
	String description;
	int quantite;
	
	public ArticleRechercheDTO(String image, String nom, String description, int quantite) {
		super();
		this.image = image;
		this.nom = nom;
		this.description = description;
		this.quantite = quantite;
	}
	
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
}
