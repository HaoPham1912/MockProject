package com.booking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Admin;
import com.booking.model.Employee;

public class AdminDAOImp implements IAdminDAO{
	JDBCConnection conn = new JDBCConnection();
	@Override
	public ArrayList<Admin> findAllAdmin() {
		ArrayList<Admin> arr = new ArrayList<>();
		try {
			Connection  conection = conn.getMySQLConnection();
			Statement stm = conection.createStatement();
			String sql ="select * from account,admin where admin.id_acc_ad = account.id_acc";
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) {
				Admin ad = new Admin();
				ad.setId_acc_ad(rs.getInt("id_ad"));
				ad.setId_acc_ad(rs.getInt("id_acc_ad"));
				ad.setUsername(rs.getString("username"));
				ad.setPassword(rs.getString("password"));
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
	@Override
	public boolean insertAdmin(int id, String name, String phone, String email, String address) {
		try {
			Connection connection = conn.getMySQLConnection();
			String sql="INSERT INTO admin (id_acc_ad, admin_name, admin_phone, admin_email, admin_address)"+
					" VALUES(?,?,?,?,?)";
			java.sql.PreparedStatement pstm = connection.prepareStatement(sql); 
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
	public ArrayList<Admin> findAdmin(String name) {

		ArrayList<Admin> arr = new ArrayList<>();
		try {
			Connection connection = conn.getMySQLConnection();
			Statement stm = connection.createStatement();
			String sql="select * from account,admin where admin.id_acc_ad = account.id_acc and admin_name like '%"+name+"%'";
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) {
				Admin admin = new Admin();
				admin.setId_ad(rs.getInt("id_ad"));
				admin.setId_acc_ad(rs.getInt("id_acc_ad"));
				admin.setUsername(rs.getString("username"));
				admin.setAdmin_name(rs.getString("admin_name"));
				admin.setAdmin_phone(rs.getString("admin_phone"));
				admin.setAdmin_email(rs.getString("admin_email"));
				admin.setAdmin_address(rs.getString("admin_address"));
				arr.add(admin);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	@Override
	public boolean updateAdmin(String name, String phone, String email, String address, int id_acc_ad) {
		try {
			Connection connection = conn.getMySQLConnection();
			String sql="update admin set admin_name=?,admin_phone=?,admin_email=?,admin_address=? where id_acc_ad=?";
			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);
			pstm.setString(1, name);
			pstm.setString(2, phone);
			pstm.setString(3, email);
			pstm.setString(4, address);
			pstm.setInt(5, id_acc_ad);
			pstm.executeUpdate();
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
