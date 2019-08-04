package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.booking.conn.JDBCConnection;
import com.booking.model.Account;

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
			Statement stm = conn.createStatement();
			String sql="INSERT INTO customer (id_acc_cus,name, phone, email,address)"+
			" VALUES('"+id+"','"+name+"','"+phone+"','"+email+"','"+address+"')";
			stm.executeUpdate(sql);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
