package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Ticket;

public interface ITicketDAO {
	ArrayList<Ticket> filterAllTicket(int id_bus);
	ArrayList<String> FindAvailableSeat(int id_bus,String date_go);
	ArrayList<Ticket> FindTicketByDate(int id_bus,String date_go);
	boolean CreateTicket(String date_go, int seat_number,int status,double price,String phone, String name,int id_bus,int id_cus,String note);
	ArrayList<Ticket> listTicketBooked(int id_cus);
	boolean updateStatusTicket(int id_ticket, int status);
	boolean deleteTicket(int id_ticket);
	int getNumberOfSeatInEachBus(int id_cus, String date_go, int id_bus);
	ArrayList<String> getDateGoByIdBus(int id_bus);
	ArrayList<Ticket> getTicketByIdBusAndDateBook(int id_bus,String date_book,int id_cus);
	boolean CheckDeleteTicket(int id_ticket);
}
