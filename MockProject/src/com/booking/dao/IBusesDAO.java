package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Buses;

public interface IBusesDAO {
	Buses findBusesByPlace(String start_place,String end_place);
	ArrayList<String> findAllStart_Place();
	ArrayList<String> findAllEnd_Place();
	ArrayList<Buses> findAllBuses();
}
