package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.BusDAOImp;
import com.booking.dao.BusesDAOImp;
import com.booking.dao.EmployeeDAOImp;
import com.booking.model.Buses;


/**
 * Servlet implementation class EmpDashBoardServlet
 */
@WebServlet("/emp-dashboard")
public class EmpDashBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BusesDAOImp busesDAO = new BusesDAOImp(); 
	BusDAOImp busDAO = new BusDAOImp();
	EmployeeDAOImp EmployeeDAO = new EmployeeDAOImp();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmpDashBoardServlet() {
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

		String updateTicket = request.getParameter("action");
		System.out.println("action: "+updateTicket);
		if(updateTicket!=null)
		{
			if(updateTicket.equals("updateTicket"))
			{
				EmployeeDAO.updateTicket();
			}		
		}
		request.setAttribute("listBuses", busesDAO.findAllBuses());
		RequestDispatcher rd = request.getRequestDispatcher("/employee.jsp");
		rd.forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
//		doGet(request, response);	
		String updateTicket = request.getParameter("action");
		if(updateTicket.equals("filter"))
		{
			String start_place = request.getParameter("start_place");
			String end_place = request.getParameter("end_place");
			Buses buses = new Buses();
			buses = busesDAO.findBusesByPlace(start_place, end_place);
			request.setAttribute("Buses", buses);
			RequestDispatcher rd = request.getRequestDispatcher("/employee.jsp");
			rd.forward(request, response);	
			return;
		}
	}

}
