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
import com.booking.model.BookingInfo;
import com.booking.model.Bus;
import com.booking.model.Buses;
import com.booking.ultils.MyUltil;

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
		String start_Date = request.getParameter("startDate");
		System.out.println(start_Date);
		MyUltil myultil = new MyUltil();
		HttpSession session = request.getSession();
		BookingInfo bookingInfo = new BookingInfo();
		
//		bookingInfo.setId_bus(Integer.valueOf(id_bus));
		bookingInfo.setStart_place(start_place);
		bookingInfo.setEnd_place(end_place);
		bookingInfo.setStart_date(start_Date);
		
		myultil.storeBookingInfo(session, bookingInfo);
		
		Buses buses = new Buses();
		buses = busesDAO.findBusesByPlace(start_place, end_place);
		if(buses==null)
		{
			String message = "There are no bus from "+start_place+" to "+end_place+" in "+start_Date;
			request.setAttribute("message", message);
			RequestDispatcher rd =  request.getRequestDispatcher("/viewAllBus.jsp");
			rd.forward(request, response);
		}
		else
		{
			int id_buses = buses.getId_buses();
			ArrayList<Bus> arr = new ArrayList<Bus>();
			arr = busDAO.findAllBus(id_buses,bookingInfo.getStart_date());
			int count = 0;
			for(int i=0;i<arr.size();i++)
			{
				if(arr.get(i).getStatus()==0)
				{
					count++;
				}
			}
			if(count==arr.size())
			{
				String message = "There are no bus from "+start_place+" to "+end_place+" in "+start_Date;
				request.setAttribute("message", message);
			}
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
//		doGet(request, response);
//		String price = request.getParameter("price");
//		String id_bus= request.getParameter("id_bus");
//		System.out.println(price+" "+id_bus);
//		Bus bus = new Bus();
//		bus.setId_bus(Integer.valueOf(id_bus));
//		bus.setPrice(Double.valueOf(price));
//		System.out.println("id: "+bus.getId_bus() + "price: "+bus.getPrice());
//		request.setAttribute("bus", bus);
//		
//		response.sendRedirect(request.getContextPath()+"/cus-viewSeatServlet");
	}
}
