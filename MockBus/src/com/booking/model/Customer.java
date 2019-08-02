package com.booking.model;

public class Customer {
	private int id_cus;
	private int id_acc_cus;
	private String name;
	private String phone;
	private String address;
	private String email;
	public int getId_cus() {
		return id_cus;
	}
	public void setId_cus(int id_cus) {
		this.id_cus = id_cus;
	}
	public int getId_acc_cus() {
		return id_acc_cus;
	}
	public void setId_acc_cus(int id_acc_cus) {
		this.id_acc_cus = id_acc_cus;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
