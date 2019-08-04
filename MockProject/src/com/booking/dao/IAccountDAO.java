package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Account;

public interface IAccountDAO {
	boolean checkAvailableAccount(String username);
	int insertAccount(String username, String password, int role);
	ArrayList<Account> findAllAccount();
}
