package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Account;

public class AccountDAOImp implements IAccountDAO{
	JDBCConnection db = new JDBCConnection();
	@Override
	public boolean checkAvailableAccount(String username) {
		try {
			Connection conn = db.getMySQLConnection();
			System.out.println("Connected!!!");
			String sql="SELECT username FROM account WHERE username=?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, username);
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
	public int insertAccount(String username, String password, int role) {
		int id_acc=0;
		try {
			Connection conn = db.getMySQLConnection();
			System.out.println("Connected!");
			Statement stm = conn.createStatement();
			String sql=
					"INSERT INTO account (username, password, role_id)"+
			"VALUES('"+username+"','"+password+"','"+role+"')";
			stm.execute(sql);
			ResultSet rs;
			rs=stm.executeQuery("Select id_acc FROM account WHERE username ='"+username+"'");
			if(rs.next()) {
				id_acc=rs.getInt(1);
			}
			return id_acc;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	@Override
	public ArrayList<Account> findAllAccount() {
		// TODO Auto-generated method stub
		ArrayList<Account> array = new ArrayList<Account>();
		try {
			Connection conn = db.getMySQLConnection();
			System.out.println("Connected!!!");
			Statement stm = conn.createStatement();
			String sql="SELECT * FROM account";
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()) {
				Account account = new Account();
				account.setId(rs.getInt("id"));
				account.setPassword(rs.getString("password"));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		return array;
	}
}
