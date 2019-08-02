package com.booking.dao;

import com.booking.model.Account;

public interface ICustomerDAO {
	Account FindAccountByUsernamePassword(String username, String password);
}
