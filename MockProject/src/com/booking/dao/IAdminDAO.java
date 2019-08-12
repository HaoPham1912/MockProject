package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Admin;

public interface IAdminDAO {
	ArrayList<Admin> findAllAdmin();
	boolean insertAdmin(int id, String name, String phone, String email, String address);
}
