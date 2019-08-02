package com.booking.model;

public class Admin {
	private int id_ad;
	private int id_acc_ad;
	private String admin_name;
	private String admin_phone;
	private String admin_address;
	private String admin_email;
	public int getId_ad() {
		return id_ad;
	}
	public void setId_ad(int id_ad) {
		this.id_ad = id_ad;
	}
	public int getId_acc_ad() {
		return id_acc_ad;
	}
	public void setId_acc_ad(int id_acc_ad) {
		this.id_acc_ad = id_acc_ad;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}
	public String getAdmin_address() {
		return admin_address;
	}
	public void setAdmin_address(String admin_address) {
		this.admin_address = admin_address;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
}
