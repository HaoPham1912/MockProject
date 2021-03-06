package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.booking.conn.Database;
import com.booking.model.Account;

import com.booking.model.Account;;

public class CustomerDAOImp implements ICustomerDAO{

	Database db = new Database();
	@Override
	public Account FindAccountByUsernamePassword(String username, String password) {
		// TODO Auto-generated method stub
		
		try
		{
			Connection connection = db.getMySQLConnection();			
			
			System.out.println(username +" ++++++"+password);
			Statement statement = connection.createStatement();
			
			String sql = "select * from account where username ='duy' and password='duy'";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			pstm.setString(1, username);
			pstm.setString(2, password);
			
			
			ResultSet rs = statement.executeQuery(sql);

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

}
