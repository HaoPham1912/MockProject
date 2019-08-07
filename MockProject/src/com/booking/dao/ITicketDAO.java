package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Ticket;

public interface ITicketDAO {
	ArrayList<Ticket> filterAllTicket(int id_bus);
}
