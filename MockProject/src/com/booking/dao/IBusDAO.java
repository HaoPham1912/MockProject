package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Bus;

public interface IBusDAO {
	ArrayList<Bus> findAllBus(int id_buses);
	int findBusesByID(int id_bus);
	Bus findBusByID(int id_bus);
	ArrayList<String> findTime_GoByID(int id_bus);
}
