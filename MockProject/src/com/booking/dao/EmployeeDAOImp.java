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
	public boolean insertInfoEmployee(int id, String name, String phone, String email, String address) {

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
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean findEmployeeById_acc(int id_acc) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			System.out.println("Connected!!!");
			String sql="SELECT * FROM employee WHERE id_acc_emp=?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id_acc);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				return true;
			}

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateEmployee(String name, String phone, String email, String address, int id_acc_cus) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			String sql="update employee set emp_name=?,emp_phone=?,emp_email=?,emp_address=? where id_acc_emp=?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			pstm.setString(2, phone);
			pstm.setString(3, email);
			pstm.setString(4, address);
			pstm.setInt(5, id_acc_cus);
			pstm.executeUpdate();
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteTicket(int id) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			System.out.println("Connected!!!");
			String sql="Delete from ticket where id_ticket=?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			pstm.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void updateTicket() {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			String sql="SELECT * FROM ticket";
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()) {
				if(rs.getInt("status")==0)
				{
//					System.out.println(rs.getString("date_book")+" "+rs.getString("time_book"));
					if(!checkAvailableTicket(rs.getString("date_book")+" "+rs.getString("time_book")))
					{
						System.out.println("nay ne "+ rs.getInt("id_ticket"));
						deleteTicket(rs.getInt("id_ticket"));
					}
				}
			}
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}

	@Override
	public boolean checkAvailableTicket(String date_book) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			System.out.println(date_book);
			String sql="select TIMESTAMPDIFF(SECOND, ?,NOW()) < 86400";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, date_book);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				if(rs.getInt(1)==1)
				{
					return true;
				}
			}
			return false;
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		return false;
	}

	@Override
	public ArrayList<Employee> findEmployee(String name) {
		
		ArrayList<Employee> arr = new ArrayList<>();
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			String sql="select * from account,employee where employee.id_acc_emp = account.id_acc and emp_name like '%"+name+"%'";
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) {
				Employee employee = new Employee();
				employee.setId_emp(rs.getInt("id_emp"));
				employee.setId_acc_emp(rs.getInt("id_acc_emp"));
				employee.setUsername(rs.getString("username"));
				employee.setEmp_name(rs.getString("emp_name"));
				employee.setEmp_phone(rs.getString("emp_phone"));
				employee.setEmp_email(rs.getString("emp_email"));
				employee.setEmp_address(rs.getString("emp_address"));
				arr.add(employee);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}

	@Override
	public boolean deleteEmployee(int id_acc_emp) {
		try {
			Connection conn = db.getMySQLConnection();
			String sql="Delete from account where id_acc =?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id_acc_emp);
			pstm.executeUpdate();
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
