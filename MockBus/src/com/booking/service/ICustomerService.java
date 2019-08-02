package com.booking.service;

import com.booking.model.Account;

public interface ICustomerService {
	Account FindAccountByUsernamePassword(String username, String password);
}
