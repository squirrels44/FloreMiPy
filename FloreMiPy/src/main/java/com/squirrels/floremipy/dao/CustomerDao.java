package com.squirrels.floremipy.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.squirrels.floremipy.model.Customer;

@Component
public class CustomerDao implements ICustomerDao {
	
	@PersistenceContext
	EntityManager em;
	
	
	
	public CustomerDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CustomerDao(EntityManager em) {
		super();
		if(em==null){
			EntityManagerFactory emf=Persistence.createEntityManagerFactory("FloreMiPy");
			this.em=emf.createEntityManager();
		}
	}

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
		//Query q=em.createNamedQuery("Customer.findAll");
		Query requete=em.createQuery("SELECT NEW com.squirrels.floremipy.dto.LogPwdRechercheDTO(l.login, p.pwd) FROM Customer where l.login= :login");
		requete.setParameter("login", login);
		//List<Customer> allCustomers=(List<Customer>)q.getResultList();
		List<Customer> allPwdLog=(List<Customer>)requete.getResultList();
		for (Customer customer : allPwdLog) {
			if(customer.getPassword().equals(motdepasse))
			{
				res=true;
			}
		}
		return res;
	}
}
