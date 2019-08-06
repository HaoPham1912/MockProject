package com.booking.dao;

import java.util.ArrayList;

import com.booking.model.Bus;

public interface IBusDAO {
	ArrayList<Bus> findAllBus(int id_buses);
}
