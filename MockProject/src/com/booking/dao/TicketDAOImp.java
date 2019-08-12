package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Ticket;

public class TicketDAOImp implements ITicketDAO{
	JDBCConnection db = new JDBCConnection();
	@Override
	public ArrayList<Ticket> filterAllTicket(int id_bus) {
		ArrayList<Ticket> arr = new ArrayList<>();
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			String sql="select id_ticket, date_go, date_book, seat_number, status, price, phone, name, id_cus from ticket where ticket.id_bus =?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id_bus);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Ticket tk = new Ticket();
				tk.setId_ticket(rs.getInt("id_ticket"));
				tk.setDate_go(rs.getString("date_go"));
				tk.setDate_book(rs.getString("date_book"));
				tk.setSeat_number(rs.getInt("seat_number"));
				tk.setStatus(rs.getInt("status"));
				tk.setPrice(rs.getDouble("price"));
				tk.setPhone(rs.getString("phone"));
				tk.setName(rs.getString("name"));
				tk.setId_cus(rs.getInt("id_cus"));
				arr.add(tk);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	@Override
	public ArrayList<String> FindAvailableSeat(int id_bus, String date_go) {
		// TODO Auto-generated method stub
		ArrayList<String> arr = new ArrayList<>();
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			
			String sql="select seat_number from ticket where ticket.id_bus =? and date_go=STR_TO_DATE(?,'%d-%m-%Y')";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id_bus);
			pstm.setString(2, date_go);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				arr.add(rs.getString("seat_number"));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	@Override
	public boolean CreateTicket(String date_go, int seat_number,int status,double price,String phone, String name,int id_bus,int id_cus) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			String sql="INSERT INTO ticket (date_go, date_book,seat_number,status,price,phone,name,id_bus,id_cus,time_book)"+
							"VALUES(STR_TO_DATE(?,'%d-%m-%Y'),CURDATE(),?,?,?,?,?,?,?,CURRENT_TIME())";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, date_go);
			pstm.setInt(2, seat_number);
			pstm.setInt(3, status);
			pstm.setDouble(4, price);
			pstm.setString(5, phone);
			pstm.setString(6, name);
			pstm.setInt(7, id_bus);
			pstm.setInt(8, id_cus);
			pstm.executeUpdate();
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
