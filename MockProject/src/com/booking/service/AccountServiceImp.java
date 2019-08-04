package com.booking.service;

import javax.inject.Inject;

import com.booking.dao.AccountDAOImp;

public class AccountServiceImp implements IAccountService{
	@Inject
	IAccountService account;
	@Override
	public boolean checkAvailableAccount(String username) {
		return account.checkAvailableAccount(username);
	}

	@Override
	public int insertAccount(String username, String password, int role) {
		return account.insertAccount(username, password, role);
	}

}
