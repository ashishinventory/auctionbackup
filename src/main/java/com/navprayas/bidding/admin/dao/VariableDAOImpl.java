package com.navprayas.bidding.admin.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.navprayas.bidding.admin.form.Variable;
@Repository
public class VariableDAOImpl implements VariableDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public void addVariable(Variable variable) {
		sessionFactory.getCurrentSession().save(variable);
	}

}
