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

import com.booking.dao.CustomerDAOImp;
import com.booking.dao.TicketDAOImp;
import com.booking.model.Bus;
import com.booking.model.Customer;
import com.booking.model.Ticket;
import com.booking.ultils.MyUltil;

/**
 * Servlet implementation class FilterTicketServlet
 */
@WebServlet("/emp-filterTicket")
public class FilterTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    TicketDAOImp ticketDAO = new TicketDAOImp();   
    CustomerDAOImp customerDAO = new CustomerDAOImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterTicketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());	
		
		HttpSession session = request.getSession();
		
		String id_bus = request.getParameter("id_bus");
		session.setAttribute("id_bus", id_bus);
		request.setAttribute("id_bus", id_bus);
		request.setAttribute("date_go", ticketDAO.getDateGoByIdBus(Integer.valueOf(id_bus)));
		request.setAttribute("listFilterTicket", ticketDAO.filterAllTicket(Integer.valueOf(id_bus)));
		
		ArrayList<Customer> arr = new ArrayList<Customer>();
		arr = customerDAO.findAllCustomer();
		request.setAttribute("cusList", arr);
		RequestDispatcher rd = request.getRequestDispatcher("/filterTicket.jsp");
		rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");	
		String action = request.getParameter("action");
		if(action != null)
		{
			if(action.equals("show"))
			{
				HttpSession session = request.getSession();
				
				String id_bus = request.getParameter("id_bus");
				session.setAttribute("id_bus", id_bus);
				request.setAttribute("id_bus", id_bus);
				request.setAttribute("date_go", ticketDAO.getDateGoByIdBus(Integer.valueOf(id_bus)));
				request.setAttribute("listFilterTicket", ticketDAO.filterAllTicket(Integer.valueOf(id_bus)));
				
				ArrayList<Customer> arr = new ArrayList<Customer>();
				arr = customerDAO.findAllCustomer();
				request.setAttribute("cusList", arr);
				
				RequestDispatcher rd = request.getRequestDispatcher("/filterTicket.jsp");
				rd.forward(request, response);
			}
			if(action.equals("filter"))
			{
				String id_bus = request.getParameter("id_bus");
				String date_go = request.getParameter("date_go");
				String cusInfo = request.getParameter("cusInfo");
				
				ArrayList<Ticket> arr = new ArrayList<Ticket>();
				System.out.println("cus info: "+Integer.valueOf(cusInfo));
				arr = ticketDAO.getTicketByIdBusAndDateBook(Integer.valueOf(id_bus), date_go,Integer.valueOf(cusInfo));
				request.setAttribute("filterList", arr);
				
				request.setAttribute("date_go", ticketDAO.getDateGoByIdBus(Integer.valueOf(id_bus)));
				
				ArrayList<Customer> arr1 = new ArrayList<Customer>();
				arr1 = customerDAO.findAllCustomer();
				request.setAttribute("cusList", arr1);
				
				HttpSession session = request.getSession();
				session.setAttribute("date_goSearch", date_go);
				
				RequestDispatcher rd = request.getRequestDispatcher("/filterTicket.jsp");
				rd.forward(request, response);
				return;
			}
			if(action.equals("filterSeat"))
			{
				HttpSession session = request.getSession();
				
				request.setAttribute("id_bus", session.getAttribute("id_bus"));
				request.setAttribute("date_go", ticketDAO.getDateGoByIdBus(Integer.valueOf((String) session.getAttribute("id_bus"))));
				
				ArrayList<String> arr = new ArrayList<String>();
				String date_go = request.getParameter("date_go_forSeat");
				arr = ticketDAO.FindAvailableSeat(Integer.valueOf((String) session.getAttribute("id_bus")), date_go);
				request.setAttribute("listSeat", arr);
				
				request.setAttribute("listFilterTicket", ticketDAO.FindTicketByDate(Integer.valueOf((String) session.getAttribute("id_bus")),date_go));
				
				
//				System.out.println("id bus:  "+Integer.valueOf((String) session.getAttribute("id_bus")));
//				System.out.println("date go:  "+ date_go);
//				System.out.println("size:  "+ arr.size());
				
				ArrayList<Customer> arr1 = new ArrayList<Customer>();
				arr1 = customerDAO.findAllCustomer();
				request.setAttribute("cusList", arr1);
				
				session.setAttribute("dateViewSeat", date_go);
				
				RequestDispatcher rd = request.getRequestDispatcher("/filterTicket.jsp");
				rd.forward(request, response);
			}
		}
		else
		{
			doGet(request, response);
		}
	}

}
