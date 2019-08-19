package com.booking.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.dao.BusDAOImp;
import com.booking.dao.BusesDAOImp;
import com.booking.dao.CustomerDAOImp;
import com.booking.dao.StationDAOImp;
import com.booking.dao.TicketDAOImp;
import com.booking.model.Account;
import com.booking.model.BookingInfo;
import com.booking.model.Bus;
import com.booking.model.Customer;
import com.booking.ultils.MyUltil;

/**
 * Servlet implementation class ViewAvailableSeatEmp
 */
@WebServlet("/emp-viewSeat")
public class ViewAvailableSeatEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	CustomerDAOImp customerDAO = new CustomerDAOImp();
	StationDAOImp stationDAO = new StationDAOImp();
	TicketDAOImp ticketDAO = new TicketDAOImp();
	BusDAOImp  busDAO = new BusDAOImp();
	BusesDAOImp busesDAO = new BusesDAOImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewAvailableSeatEmp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id_bus= request.getParameter("id_bus");
		request.setAttribute("id_bus", id_bus);
		
		Bus bus = new Bus();
		bus = busDAO.findBusByID(Integer.valueOf(id_bus));
		System.out.println(bus.getTime_go()+"lslslslsls");
		request.setAttribute("time_go", bus.getTime_go());
		request.setAttribute("time_estimate", bus.getTime_estimate());
		request.setAttribute("time_end", bus.getTime_end());
		
		int id_buses = busDAO.findBusesByID(Integer.valueOf(id_bus));
		double price = busesDAO.findPriceByID(id_buses);
		request.setAttribute("price", price);

		MyUltil myultil = new MyUltil();
		HttpSession session = request.getSession();
		Account account = myultil.getLoginedUser(session);
		Customer customer = customerDAO.customer(account.getId());
		request.setAttribute("customer", customer);

		BookingInfo bookinginfo = myultil.getBookingInfo(session);
		String address1 = stationDAO.FindAddressByStopName(bookinginfo.getStart_place());
		String address2 = stationDAO.FindAddressByStopName(bookinginfo.getEnd_place());
		
		request.setAttribute("address1", address1);
		request.setAttribute("address2", address2);
		
//		System.out.println("idbus: "+id_bus);
//		System.out.println("idbus: "+bookinginfo.getStart_date());
		if(id_bus!=null)
		{
			ArrayList<String> arr = ticketDAO.FindAvailableSeat(Integer.valueOf(id_bus), bookinginfo.getStart_date());
			request.setAttribute("numOfSeat",
					ticketDAO.getNumberOfSeatInEachBus(customer.getId_cus(),
					bookinginfo.getStart_date(),
					Integer.valueOf(id_bus)));
			request.setAttribute("arrSeat", arr);
		}
		
		RequestDispatcher rd =  request.getRequestDispatcher("/filterSeat.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
