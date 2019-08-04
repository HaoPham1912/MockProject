package com.booking.dao;

public interface IAccountDAO {
	boolean checkAvailableAccount(String username);
	int insertAccount(String username, String password, int role);
}
