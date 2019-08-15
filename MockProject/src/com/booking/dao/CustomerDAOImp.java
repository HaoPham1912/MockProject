package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Account;
import com.booking.model.Customer;
import com.booking.model.Account;;

public class CustomerDAOImp implements ICustomerDAO{

	JDBCConnection db = new JDBCConnection();
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
	public boolean insertInfoCustomer(int id, String name, String phone, String email, String address) {
		
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			String sql="INSERT INTO customer (id_acc_cus,name, phone, email,address)"+
			" VALUES(?,?,?,?,?)";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
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
	public ArrayList<Customer> findAllCustomer() {
		// TODO Auto-generated method stub
		ArrayList<Customer> arr = new ArrayList<Customer>();
		try
		{
			Connection connection = db.getMySQLConnection();
			
			Statement statement = connection.createStatement();
			
		    String sql = "select * from account,customer where customer.id_acc_cus = account.id_acc";
		 
		    ResultSet rs = statement.executeQuery(sql);

			while(rs.next())
			{
				Customer customer = new Customer();
				customer.setId_acc_cus(rs.getInt("id_acc_cus"));
				customer.setId_cus(rs.getInt("id_cus"));
				customer.setUsername(rs.getString("username"));
				customer.setPassword(rs.getString("password"));
				customer.setName(rs.getString("name"));
				customer.setPhone(rs.getString("phone"));
				customer.setEmail(rs.getString("email"));
				customer.setAddress(rs.getString("address"));			
				arr.add(customer);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return arr;
	}
	@Override
	public boolean updateCustomer(String name, String phone, String email, String address,int id_acc_cus) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			String sql="update customer set name=?,phone=?,email=?,address=? where id_acc_cus=?";
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
	public boolean finCustomerById_acc(int id_acc) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			System.out.println("Connected!!!");
			String sql="SELECT * FROM customer WHERE id_acc_cus=?";
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
	public int findId_acc(String username) {
		try {
			Connection conn = db.getMySQLConnection();
			String sql="SELECT id_acc FROM account WHERE username =?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, username);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	@Override
	public Customer customer(int id_acc) {
		try {
			Connection connection = db.getMySQLConnection();
			String sql="SELECT * FROM customer WHERE customer.id_acc_cus ="+id_acc;
			Statement stm = connection.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) {
				Customer customer = new Customer();
				customer.setId_cus(rs.getInt("id_cus"));
				customer.setId_acc_cus(rs.getInt("id_acc_cus"));
				customer.setName(rs.getString("name"));
				customer.setPhone(rs.getString("phone"));
				customer.setEmail(rs.getString("email"));
				customer.setAddress(rs.getString("address"));					
				return customer;
			}
			return null;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int findId_cus(int id_acc) {
		try {
			Connection conn = db.getMySQLConnection();
			String sql="SELECT id_cus FROM customer WHERE id_acc_cus =?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id_acc);
			ResultSet rs = pstm.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return -1;
	}
	@Override
	public ArrayList<Customer> findCustomer(String name) {
		ArrayList<Customer> arr = new ArrayList<>();
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			String sql="select * from account,customer where customer.id_acc_cus = account.id_acc and name like '%"+name+"%'";
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) {
				Customer customer = new Customer();
				customer.setId_cus(rs.getInt("id_cus"));
				customer.setId_acc_cus(rs.getInt("id_acc_cus"));
				customer.setUsername(rs.getString("username"));
				customer.setName(rs.getString("name"));
				customer.setPhone(rs.getString("phone"));
				customer.setEmail(rs.getString("email"));
				customer.setAddress(rs.getString("address"));
				arr.add(customer);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}

}
