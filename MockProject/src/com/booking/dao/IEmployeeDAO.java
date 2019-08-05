package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Account;
import com.booking.model.Employee;

public interface IEmployeeDAO {
	ArrayList<Employee> findAllEmployee();
	Account FindAccountByUsernamePassword(String username, String password);
	void insertInfoEmployee(int id, String name, String phone, String email, String address);
}
