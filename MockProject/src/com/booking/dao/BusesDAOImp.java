package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Buses;

public class BusesDAOImp implements IBusesDAO{
	JDBCConnection db = new JDBCConnection();
	@Override
	public Buses findBusesByPlace(String start_place, String end_place) {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();

			System.out.println("Connected");
			
			Statement statement = connection.createStatement();

			String sql = "select * from buses where start_place=? and end_place=?";

			java.sql.PreparedStatement pstm = connection.prepareStatement(sql);

			pstm.setString(1, start_place);
			pstm.setString(2, end_place);
			ResultSet rs = pstm.executeQuery();

			while(rs.next())
			{
				Buses buses = new Buses();
				buses.setId_buses(rs.getInt("id_buses"));
				buses.setStart_place(rs.getString("start_place"));
				buses.setEnd_place(rs.getString("end_place"));
				buses.setDistance(rs.getInt("distance"));
				return buses;
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return null;
	}
	@Override
	public ArrayList<String> findAllStart_Place() {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();

			System.out.println("Connected");
			
			Statement statement = connection.createStatement();

			String sql = "select * from buses";

			ResultSet rs = statement.executeQuery(sql);

			ArrayList<String> arr = new ArrayList<String>();
			
			while(rs.next())
			{
				arr.add(rs.getString("start_place"));
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
	public ArrayList<String> findAllEnd_Place() {
		// TODO Auto-generated method stub
		try
		{
			Connection connection = db.getMySQLConnection();

			System.out.println("Connected");
			
			Statement statement = connection.createStatement();

			String sql = "select * from buses";

			ResultSet rs = statement.executeQuery(sql);

			ArrayList<String> arr = new ArrayList<String>();
			
			while(rs.next())
			{
				arr.add(rs.getString("end_place"));
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
