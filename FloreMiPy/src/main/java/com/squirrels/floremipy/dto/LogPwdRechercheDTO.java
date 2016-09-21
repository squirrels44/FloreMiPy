package com.squirrels.floremipy.dto;

public class LogPwdRechercheDTO 
{
	String pwd;
	String login;
	
	public LogPwdRechercheDTO(String pwd, String login) 
	{
		super();
		this.pwd = pwd;
		this.login = login;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}
}
