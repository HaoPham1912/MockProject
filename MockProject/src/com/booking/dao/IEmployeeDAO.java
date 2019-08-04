package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Employee;

public interface IEmployeeDAO {
	ArrayList<Employee> findAllEmployee();
}
