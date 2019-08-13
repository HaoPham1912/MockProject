package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Bus;
import com.booking.model.Buses;

public class BusDAOImp implements IBusDAO{
	JDBCConnection db = new JDBCConnection();
	@Override
	public ArrayList<Bus> findAllBus(int id_buses) {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();

			System.out.println("Connected");
			
			Statement statement = connection.createStatement();

			String sql = "select bus.id_bus, bus.id_buses, time_go, car_position, time_estimate, Price,time_end from bus,buses where bus.id_buses=? and bus.id_buses = buses.id_buses";

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


			String sql = "select * from bus where id_bus=?";

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
}
