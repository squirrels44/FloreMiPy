package com.squirrels.floremipy.dao;

public interface ICustomerDao {

	boolean isLoginExist(String login);
	boolean isPwdCorresponding(String login, String motdepasse);

}
