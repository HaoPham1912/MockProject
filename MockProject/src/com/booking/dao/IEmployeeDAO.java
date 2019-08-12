package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Account;
import com.booking.model.Employee;

public interface IEmployeeDAO {
	ArrayList<Employee> findAllEmployee();
	Account FindAccountByUsernamePassword(String username, String password);
	boolean insertInfoEmployee(int id, String name, String phone, String email, String address);
	boolean findEmployeeById_acc(int id_acc);
	boolean updateEmployee(String name, String phone, String email,String address,int id_acc_cus);
	boolean deleteTicket(int id);
	void updateTicket();
	boolean checkAvailableTicket(String date_book);
}
