package com.squirrels.floremipy.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.squirrels.floremipy.model.Customer;

public class CustomerDao implements ICustomerDao {
	
	@PersistenceContext
	EntityManager em;

	@Override
	public boolean isLoginExist(String login) {
		boolean res=false;
		// TODO Auto-generated method stub
		Query q=em.createNamedQuery("Customer.findAll");
		List<Customer> allCustomers=(List<Customer>)q.getResultList();
		for (Customer customer : allCustomers) {
			if(customer.getLogin().equals(login)){
				res=true;
			}
		}
		return res;
	}

	@Override
	public boolean isPwdCorresponding(String login, String motdepasse) {
		boolean res=false;
		// TODO Auto-generated method stub
		Query q=em.createNamedQuery("Customer.findAll");
		List<Customer> allCustomers=(List<Customer>)q.getResultList();
		for (Customer customer : allCustomers) {
			if(customer.getPassword().equals(motdepasse)){
				res=true;
			}
		}
		return res;
	}
}
