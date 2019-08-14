package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Admin;
import com.booking.model.Employee;

public interface IAdminDAO {
	ArrayList<Admin> findAllAdmin();
	boolean insertAdmin(int id, String name, String phone, String email, String address);
	ArrayList<Admin> findAdmin(String name);
	boolean updateAdmin(String name, String phone, String email,String address,int id_acc_ad);
}
