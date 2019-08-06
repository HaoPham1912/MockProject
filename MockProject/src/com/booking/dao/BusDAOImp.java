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

			String sql = "select * from bus where id_buses=?";

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
}
