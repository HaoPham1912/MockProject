package com.booking.model;

public class BookingInfo {
	private int id_bus;	
	private String start_place;
	private String end_place;
	private String start_date;
	private double price;
	private String time_go;
	private String time_end;
	private String time_estimate;
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getTime_go() {
		return time_go;
	}
	public void setTime_go(String time_go) {
		this.time_go = time_go;
	}
	public String getTime_end() {
		return time_end;
	}
	public void setTime_end(String time_end) {
		this.time_end = time_end;
	}
	public String getTime_estimate() {
		return time_estimate;
	}
	public void setTime_estimate(String time_estimate) {
		this.time_estimate = time_estimate;
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
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public int getId_bus() {
		return id_bus;
	}
	public void setId_bus(int id_bus) {
		this.id_bus = id_bus;
	}
}
