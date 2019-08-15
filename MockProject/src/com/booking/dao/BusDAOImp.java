package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Bus;
import com.booking.model.Buses;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class BusDAOImp implements IBusDAO{
	JDBCConnection db = new JDBCConnection();
	TicketDAOImp ticketDAO = new TicketDAOImp();
	@Override
	public ArrayList<Bus> findAllBus(int id_buses, String date_go) {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();
			
			Statement statement = connection.createStatement();

			String sql = "SELECT  bus.id_bus, bus.id_buses, time_go, car_position, time_estimate, Price,time_end," + 
					"TIMESTAMPDIFF(SECOND, NOW(),concat(?,' ',time_go)) > 86400 "
					+ "from bus,buses where bus.id_buses=? and bus.id_buses = buses.id_buses;";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			SimpleDateFormat fromUser = new SimpleDateFormat("dd-MM-yyyy");
			SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
			String reformattedStr = myFormat.format(fromUser.parse(date_go));
			System.out.println("hahaha: "+reformattedStr);
			
			pstm.setString(1, reformattedStr);
			pstm.setInt(2, id_buses);
			ResultSet rs = pstm.executeQuery();
			
			ArrayList<Bus> arr = new ArrayList<Bus>();
			
			while(rs.next())
			{
				Bus bus = new Bus();
				bus.setId_bus(rs.getInt("id_bus"));
				bus.setId_buses(rs.getInt("id_buses"));
				bus.setTime_go(rs.getString("time_go"));
				bus.setCar_position(rs.getString("car_position"));
				bus.setTime_estimate(rs.getString("time_estimate"));
				bus.setPrice(rs.getDouble("Price"));
				bus.setTime_end(rs.getString("time_end"));
				bus.setStatus(rs.getInt(8));
				System.out.println(" asdasdasdasd    "+rs.getInt(8));
				int seatNum = 28 - ticketDAO.FindAvailableSeat(rs.getInt("id_bus"), date_go).size();
				bus.setSeatAvailable(seatNum);
				arr.add(bus);
			}
			return arr;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return null;
	}
	@Override
	public ArrayList<Bus> findAllBusForSeller(int id_buses) {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();
			
			Statement statement = connection.createStatement();

			String sql = "SELECT  bus.id_bus, bus.id_buses, time_go, car_position, time_estimate, Price,time_end from bus,buses where bus.id_buses=? and bus.id_buses = buses.id_buses;";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			pstm.setInt(1, id_buses);
			ResultSet rs = pstm.executeQuery();
			
			ArrayList<Bus> arr = new ArrayList<Bus>();
			
			while(rs.next())
			{
				Bus bus = new Bus();
				bus.setId_bus(rs.getInt("id_bus"));
				bus.setId_buses(rs.getInt("id_buses"));
				bus.setTime_go(rs.getString("time_go"));
				bus.setCar_position(rs.getString("car_position"));
				bus.setTime_estimate(rs.getString("time_estimate"));
				bus.setPrice(rs.getDouble("Price"));
				bus.setTime_end(rs.getString("time_end"));
				arr.add(bus);
			}
			return arr;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return null;
	}
	@Override
	public int findBusesByID(int id_bus) {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();


			String sql = "select id_buses from bus where id_bus=?";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			pstm.setInt(1, id_bus);
			ResultSet rs = pstm.executeQuery();
			
			if(rs.next())
			{
				return rs.getInt("id_buses");
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return 0;
	}
	@Override
	public Bus findBusByID(int id_bus) {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();

			String sql = "select * from bus where id_bus=?";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			pstm.setInt(1, id_bus);
			ResultSet rs = pstm.executeQuery();
			
			while(rs.next())
			{
				Bus bus = new Bus();
				bus.setId_bus(rs.getInt("id_bus"));
				bus.setTime_go(rs.getString("time_go"));
				bus.setTime_end(rs.getString("time_end"));
				bus.setTime_estimate(rs.getString("time_estimate"));
				return bus;
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return null;
	}
	@Override
	public ArrayList<String> findTime_GoByID(int id_bus) {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();


			String sql = "select * from bus where id_buses=?";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			pstm.setInt(1, id_bus);
			ResultSet rs = pstm.executeQuery();
			
			ArrayList<String> arr = new ArrayList<String>();
			
			while(rs.next())
			{
				arr.add(rs.getString("time_go"));
			}
			return arr;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return null;
	}
	@Override
	public Bus findBusByTime_GoAndID(int id_bus, String time_go) {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();

			String sql = "select * from bus where id_buses=? and time_go=?";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			pstm.setInt(1, id_bus);
			pstm.setString(2,time_go);
			ResultSet rs = pstm.executeQuery();
			
			while(rs.next())
			{
				Bus bus = new Bus();
				bus.setId_bus(rs.getInt("id_bus"));
				bus.setTime_go(rs.getString("time_go"));
				bus.setTime_end(rs.getString("time_end"));
				bus.setTime_estimate(rs.getString("time_estimate"));
				return bus;
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return null;
	}
	
}
