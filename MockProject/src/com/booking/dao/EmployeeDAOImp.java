package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Account;
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
	
	@Override
	public Account FindAccountByUsernamePassword(String username, String password) {
		// TODO Auto-generated method stub
		
		try
		{
			Connection connection = db.getMySQLConnection();

			System.out.println("Connected");
			
			Statement statement = connection.createStatement();

			String sql = "select * from account where username=? and password=?";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			pstm.setString(1, username);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();

			while(rs.next())
			{
				Account u = new Account();
				u.setId(rs.getInt("id_acc"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setRole(rs.getInt("role_id"));
				return u;
			}
			return null;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	@Override
	public void insertInfoEmployee(int id, String name, String phone, String email, String address) {
		
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			java.sql.PreparedStatement pstm = null;
			String sql="INSERT INTO employee (id_acc_emp,emp_name,emp_phone,emp_email,emp_address)"+
			" VALUES(?,?,?,?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			pstm.setString(2, name);
			pstm.setString(3, phone);
			pstm.setString(4, email);
			pstm.setString(5, address);
			pstm.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
