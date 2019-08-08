package com.booking.model;

public class Station {
	private int id_station;
	private String stop_name;
	private String address;
	public int getId_station() {
		return id_station;
	}
	public void setId_station(int id_station) {
		this.id_station = id_station;
	}
	public String getStop_name() {
		return stop_name;
	}
	public void setStop_name(String stop_name) {
		this.stop_name = stop_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
