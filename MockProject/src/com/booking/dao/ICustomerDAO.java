package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Account;

public interface ICustomerDAO {
	Account FindAccountByUsernamePassword(String username, String password);
	void insertInfoCustomer(int id, String name, String phone, String email, String address);
	ArrayList<Account> findAllAccount();
}
