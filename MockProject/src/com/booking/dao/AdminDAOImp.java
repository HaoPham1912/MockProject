package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Admin;

public class AdminDAOImp implements IAdminDAO{
	JDBCConnection conn = new JDBCConnection();
	@Override
	public ArrayList<Admin> findAllAdmin() {
		ArrayList<Admin> arr = new ArrayList<>();
		try {
			Connection  conection = conn.getMySQLConnection();
			Statement stm = conection.createStatement();
			String sql ="SELECT * FROM admin";
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) {
				Admin ad = new Admin();
				ad.setId_acc_ad(rs.getInt("id_ad"));
				ad.setId_acc_ad(rs.getInt("id_acc_ad"));
				ad.setAdmin_name(rs.getString("admin_name"));
				ad.setAdmin_phone(rs.getString("admin_phone"));
				ad.setAdmin_address(rs.getString("admin_address"));
				ad.setAdmin_email(rs.getString("admin_email"));
				arr.add(ad);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
}
