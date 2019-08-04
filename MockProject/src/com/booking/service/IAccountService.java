package com.booking.service;

public interface IAccountService {
	boolean checkAvailableAccount(String username);
	int insertAccount(String username, String password, int role);
}
