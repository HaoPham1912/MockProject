package com.booking.service;

import com.booking.model.Account;

public interface ICustomerService {
	Account FindAccountByUsernamePassword(String username, String password);
	void insertInfoCustomer(int id, String name, String phone, String email, String address);
}
