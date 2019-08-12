package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Account;
import com.booking.model.Customer;

public interface ICustomerDAO {
	Account FindAccountByUsernamePassword(String username, String password);
	void insertInfoCustomer(int id, String name, String phone, String email, String address);
	ArrayList<Customer> findAllCustomer();
	boolean updateCustomer(String name, String phone, String email,String address,int id_acc_cus);
	boolean finCustomerById_acc(int id_acc);
	int findId_acc(String username);
	Customer customer(int id_acc);
	int findId_cus(int id_acc);
}
