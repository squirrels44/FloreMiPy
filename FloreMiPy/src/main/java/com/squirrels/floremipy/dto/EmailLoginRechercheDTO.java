package com.squirrels.floremipy.dto;

public class EmailLoginRechercheDTO {
	String email;
	String login;
	
	public EmailLoginRechercheDTO(String email, String login) {
		super();
		this.email = email;
		this.login = login;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}
	
	
}
