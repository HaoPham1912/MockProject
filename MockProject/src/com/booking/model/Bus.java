package com.booking.model;

public class Bus {
	private int id_bus;
	private int id_buses;
	private String time_go;
	private String car_position;
	private String time_estimate;
	private double price;
	private String time_end;
	public String getTime_end() {
		return time_end;
	}
	public void setTime_end(String time_end) {
		this.time_end = time_end;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getId_bus() {
		return id_bus;
	}
	public void setId_bus(int id_bus) {
		this.id_bus = id_bus;
	}
	public int getId_buses() {
		return id_buses;
	}
	public void setId_buses(int id_buses) {
		this.id_buses = id_buses;
	}
	public String getTime_go() {
		return time_go;
	}
	public void setTime_go(String time_go) {
		this.time_go = time_go;
	}
	public String getCar_position() {
		return car_position;
	}
	public void setCar_position(String car_position) {
		this.car_position = car_position;
	}
	public String getTime_estimate() {
		return time_estimate;
	}
	public void setTime_estimate(String time_estimate) {
		this.time_estimate = time_estimate;
	}
}
