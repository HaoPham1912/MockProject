package com.booking.model;

public class Ticket {
	private int id_ticket;
	private String date_go;
	private String date_book;
	private int seat_number;
	private int status;
	private double price;
	private String phone;
	private String name;
	private int id_bus;
	private int id_cus;
	private String start_place;
	private String end_place;
	private String time_go;
	private String time_estimate;
	private String car_position;
	private String time_end;
	private double checkTicket;
	
	public double getCheckTicket() {
		return checkTicket;
	}
	public void setCheckTicket(double checkTicket) {
		this.checkTicket = checkTicket;
	}
	public String getTime_go() {
		return time_go;
	}
	public void setTime_go(String time_go) {
		this.time_go = time_go;
	}
	public String getTime_estimate() {
		return time_estimate;
	}
	public void setTime_estimate(String time_estimate) {
		this.time_estimate = time_estimate;
	}
	public String getCar_position() {
		return car_position;
	}
	public void setCar_position(String car_position) {
		this.car_position = car_position;
	}
	public String getTime_end() {
		return time_end;
	}
	public void setTime_end(String time_end) {
		this.time_end = time_end;
	}
	public String getStart_place() {
		return start_place;
	}
	public void setStart_place(String start_place) {
		this.start_place = start_place;
	}
	public String getEnd_place() {
		return end_place;
	}
	public void setEnd_place(String end_place) {
		this.end_place = end_place;
	}
	
	public int getId_ticket() {
		return id_ticket;
	}
	public void setId_ticket(int id_ticket) {
		this.id_ticket = id_ticket;
	}
	public String getDate_go() {
		return date_go;
	}
	public void setDate_go(String date_go) {
		this.date_go = date_go;
	}
	public String getDate_book() {
		return date_book;
	}
	public void setDate_book(String date_book) {
		this.date_book = date_book;
	}
	public int getSeat_number() {
		return seat_number;
	}
	public void setSeat_number(int seat_number) {
		this.seat_number = seat_number;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId_bus() {
		return id_bus;
	}
	public void setId_bus(int id_bus) {
		this.id_bus = id_bus;
	}
	public int getId_cus() {
		return id_cus;
	}
	public void setId_cus(int id_cus) {
		this.id_cus = id_cus;
	}
}
