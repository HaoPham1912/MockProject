package com.booking.service;

import com.booking.dao.ICustomerDAO;
import com.booking.model.Account;
import javax.inject.Inject;

public class CutomerServiceImp implements ICustomerService{

	@Inject
	ICustomerDAO customerdao;

	@Override
	public Account FindAccountByUsernamePassword(String username, String password) {
		// TODO Auto-generated method stub	
		return customerdao.FindAccountByUsernamePassword(username, password);
	}

}
