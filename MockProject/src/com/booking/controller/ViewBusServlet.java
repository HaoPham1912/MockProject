package com.booking.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.BusDAOImp;
import com.booking.dao.BusesDAOImp;
import com.booking.model.Bus;
import com.booking.model.Buses;

/**
 * Servlet implementation class ViewBusServlet
 */
@WebServlet("/cus-viewBusServlet")
public class ViewBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BusesDAOImp busesDAO = new BusesDAOImp();
    BusDAOImp busDAO = new BusDAOImp();
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewBusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String start_place = request.getParameter("start_place");
		String end_place = request.getParameter("end_place");
		Buses buses = new Buses();
		buses = busesDAO.findBusesByPlace(start_place, end_place);
		System.out.println("buses" + buses);
		if(buses==null)
		{
			RequestDispatcher rd =  request.getRequestDispatcher("/index3.jsp");
			rd.forward(request, response);
		}
		else
		{
			int id_buses = buses.getId_buses();
			ArrayList<Bus> arr = new ArrayList<Bus>();
			arr = busDAO.findAllBus(id_buses);
			request.setAttribute("busList", arr);
			RequestDispatcher rd =  request.getRequestDispatcher("/viewAllBus.jsp");
			rd.forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
