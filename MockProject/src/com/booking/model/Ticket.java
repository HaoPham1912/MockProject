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
