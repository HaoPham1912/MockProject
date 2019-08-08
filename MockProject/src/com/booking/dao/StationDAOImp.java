package com.booking.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.booking.conn.JDBCConnection;
import com.booking.model.Employee;
import com.booking.model.Station;

public class StationDAOImp implements IStationDAO{

	JDBCConnection db = new JDBCConnection();
	@Override
	public String FindAddressByStopName(String stop_name) {
		// TODO Auto-generated method stub
		try
		{
			Connection conn = db.getMySQLConnection();
			
			String sql="SELECT * FROM station WHERE stop_name =?";
			
			java.sql.PreparedStatement pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, stop_name);
			
			ResultSet rs = pstm.executeQuery();

			if(rs.next())
			{
				Station station = new Station();
				station.setStop_name(rs.getString("stop_name"));
				station.setId_station(rs.getInt("id_station"));
				station.setAddress(rs.getString("address"));
				return station.getAddress();
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return null;
	}
}
