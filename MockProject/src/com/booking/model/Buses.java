package com.booking.model;

public class Buses {
	private int id_buses;
	private String start_place;
	private String end_place;
	private int distance;
	private double price;
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getId_buses() {
		return id_buses;
	}
	public void setId_buses(int id_buses) {
		this.id_buses = id_buses;
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
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
}
