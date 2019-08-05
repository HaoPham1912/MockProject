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
	public void insertInfoCustomer(int id, String name, String phone, String email, String address) {
		
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
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
				System.out.println("sss "+rs.getInt("id_cus"));
				customer.setUsername(rs.getString("username"));
				customer.setPassword(rs.getString("password"));
				customer.setName(rs.getString("name"));
				customer.setEmail(rs.getString("email"));
				customer.setAddress(rs.getString("address"));
				customer.setPhone(rs.getString("phone"));	
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
	
}
