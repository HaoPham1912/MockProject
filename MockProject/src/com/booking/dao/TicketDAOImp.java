package com.booking.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.booking.conn.JDBCConnection;
import com.booking.model.Ticket;

public class TicketDAOImp implements ITicketDAO{
	JDBCConnection db = new JDBCConnection();
	@Override
	public ArrayList<Ticket> findAllTicket() {
		ArrayList<Ticket> ticket = new ArrayList<>();
		try {
			Connection conn = db.getMySQLConnection();
			Statement stm = conn.createStatement();
			String sql ="SELECT * FROM bus, ticket WHERE bus.id_bus=ticket.id_bus";
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
