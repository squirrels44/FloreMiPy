package com.squirrels.floremipy.beans;

public class User {

	String login;
	String pwd;


	public User(String login, String pwd) {
		super();
		this.login = login;
		this.pwd = pwd;
	}


	public String getLogin() {
		return login;
	}


	public void setLogin(String login) {
		this.login = login;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}

