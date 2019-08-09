package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Ticket;

public interface ITicketDAO {
	ArrayList<Ticket> filterAllTicket(int id_bus);
	ArrayList<String> FindAvailableSeat(int id_bus,String date_go);
}
