package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Customer;
import com.booking.model.Employee;

public class EmployeeDAOImp implements IEmployeeDAO{

	JDBCConnection db = new JDBCConnection();
	@Override
	public ArrayList<Employee> findAllEmployee() {
		// TODO Auto-generated method stub
		ArrayList<Employee> arr = new ArrayList<Employee>();
		try
		{
			Connection connection = db.getMySQLConnection();
			
			Statement statement = connection.createStatement();
			
		    String sql = "select * from account,employee where employee.id_acc_emp = account.id_acc";
		 
		    ResultSet rs = statement.executeQuery(sql);

			while(rs.next())
			{
				Employee emp = new Employee();
				emp.setId_acc_emp(rs.getInt("id_acc_emp"));
				emp.setUsername(rs.getString("username"));
				emp.setPassword(rs.getString("password"));
				emp.setEmp_name(rs.getString("emp_name"));
				emp.setEmp_email(rs.getString("emp_email"));
				emp.setEmp_address(rs.getString("emp_address"));
				emp.setEmp_phone(rs.getString("emp_phone"));	
				arr.add(emp);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return arr;
	}

}
