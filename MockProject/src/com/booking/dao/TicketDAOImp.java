package com.booking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
	public boolean CreateTicket(String date_go, int seat_number,int status,double price,String phone, String name,int id_bus,int id_cus,String note) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			String sql="INSERT INTO ticket (date_go, date_book,seat_number,status,price,phone,name,id_bus,id_cus,time_book,note)"+
					"VALUES(STR_TO_DATE(?,'%d-%m-%Y'),CURDATE(),?,?,?,?,?,?,?,CURRENT_TIME(),?)";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, date_go);
			pstm.setInt(2, seat_number);
			pstm.setInt(3, status);
			pstm.setDouble(4, price);
			pstm.setString(5, phone);
			pstm.setString(6, name);
			pstm.setInt(7, id_bus);
			pstm.setInt(8, id_cus);
			pstm.setString(9, note);
			pstm.executeUpdate();
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	@Override
	public ArrayList<Ticket> listTicketBooked(int id_cus) {
		ArrayList<Ticket> arr = new ArrayList<>();
		try {
			Connection conn = db.getMySQLConnection();
			String sql = "select id_ticket, date_go, date_book, seat_number, status, time_go, time_estimate,"
					+ "car_position, time_end, ticket.price, start_place, end_place\r\n" + 
					"from ticket\r\n" + 
					"inner join bus on ticket.id_bus = bus.id_bus\r\n" + 
					"inner join buses on bus.id_buses = buses.id_buses\r\n" + 
					"where id_cus=?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id_cus);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Ticket ticket = new Ticket();
				ticket.setId_ticket(rs.getInt("id_ticket"));
				ticket.setDate_go(rs.getString("date_go"));
				ticket.setDate_book(rs.getString("date_book"));
				ticket.setSeat_number(rs.getInt("seat_number"));
				ticket.setStatus(rs.getInt("status"));
				ticket.setPrice(rs.getDouble("price"));
				ticket.setStart_place(rs.getString("start_place"));
				ticket.setEnd_place(rs.getString("end_place"));
				ticket.setTime_go(rs.getString("time_go"));
				ticket.setTime_estimate(rs.getString("time_estimate"));
				ticket.setCar_position(rs.getString("car_position"));
				ticket.setTime_end(rs.getString("time_end"));
				arr.add(ticket);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	@Override
	public boolean updateStatusTicket(int id_ticket, int status) {
		try {
			Connection conn = db.getMySQLConnection();
			String sql="Update bus.ticket set status =? where id_ticket= ?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, status);
			pstm.setInt(2, id_ticket);
			pstm.executeUpdate();
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	@Override
	public boolean deleteTicket(int id_ticket) {
		try {
			Connection conn = db.getMySQLConnection();
			String sql="DELETE FROM Ticket WHERE id_ticket=?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id_ticket);
			if(CheckDeleteTicket(id_ticket))
			{
				if(pstm.executeUpdate()==1)
				{
					return true;
				}
				
			}
			return false;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	@Override
	public int getNumberOfSeatInEachBus(int id_cus, String date_go, int id_bus) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();

			String sql="select count(*) from ticket where ticket.id_bus =? and date_go=STR_TO_DATE(?,'%d-%m-%Y') and id_cus=?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id_bus);
			pstm.setString(2, date_go);
			pstm.setInt(3, id_cus);
			ResultSet rs = pstm.executeQuery();
			if(rs.next())
			{
				return rs.getInt(1);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public ArrayList<String> getDateGoByIdBus(int id_bus) {
		// TODO Auto-generated method stub
		ArrayList<String> arr = new ArrayList<>();
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			String sql="select id_ticket, date_go, date_book, seat_number, status, price, phone, name, id_cus from ticket where ticket.id_bus =?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id_bus);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				if(!arr.contains(String.valueOf(rs.getDate("date_go"))))
				{
					arr.add(String.valueOf(rs.getDate("date_go")));
				}
			}
			return arr;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public ArrayList<Ticket> getTicketByIdBusAndDateBook(int id_bus, String date_go,int id_cus) {
		// TODO Auto-generated method stub
		ArrayList<Ticket> arr = new ArrayList<>();
		try {
			Connection conn = db.getMySQLConnection();
			String sql = "select id_ticket, date_go, date_book, seat_number, status, time_go, time_estimate, phone, name,id_cus,"
					+ "car_position, time_end, ticket.price, start_place, end_place\r\n" + 
					"from ticket\r\n" + 
					"inner join bus on ticket.id_bus = bus.id_bus\r\n" + 
					"inner join buses on bus.id_buses = buses.id_buses\r\n" + 
					"where ticket.id_bus=? and ticket.date_go=? and id_cus=?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id_bus);
			pstm.setString(2, date_go);
			pstm.setInt(3, id_cus);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Ticket ticket = new Ticket();
				ticket.setId_ticket(rs.getInt("id_ticket"));
				ticket.setId_cus(rs.getInt("id_cus"));
				ticket.setName(rs.getString("name"));
				ticket.setPhone(rs.getString("phone"));
				ticket.setDate_go(rs.getString("date_go"));
				ticket.setDate_book(rs.getString("date_book"));
				ticket.setSeat_number(rs.getInt("seat_number"));
				ticket.setStatus(rs.getInt("status"));
				ticket.setPrice(rs.getDouble("price"));
				ticket.setStart_place(rs.getString("start_place"));
				ticket.setEnd_place(rs.getString("end_place"));
				ticket.setTime_go(rs.getString("time_go"));
				ticket.setTime_estimate(rs.getString("time_estimate"));
				ticket.setCar_position(rs.getString("car_position"));
				ticket.setTime_end(rs.getString("time_end"));
				arr.add(ticket);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	@Override
	public boolean CheckDeleteTicket(int id_ticket) {
		// TODO Auto-generated method stub
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			String sql="SELECT TIMESTAMPDIFF(SECOND,NOW(),concat(ticket.date_go,\" \",bus.time_go)) > 86400, status from ticket,bus where ticket.id_bus = bus.id_bus and id_ticket = ?";
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id_ticket);
			ResultSet rs = pstm.executeQuery();
			if(rs.next())
			{
				if(rs.getInt(2)==0) return true;
				else
				{
					if(rs.getInt(1)==1)
					{
						return true;
					}
				}
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
