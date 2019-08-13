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
import com.booking.model.Bus;

/**
 * Servlet implementation class FilterBusServlet
 */
@WebServlet("/emp-filterbus")
public class FilterBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BusesDAOImp busesDAO = new BusesDAOImp(); 
    BusDAOImp busDAO = new BusDAOImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterBusServlet() {
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
		String id_buses = request.getParameter("id_buses");
		
		HttpSession session = request.getSession();
		session.setAttribute("id_buses", id_buses);
		
		request.setAttribute("time_go", busDAO.findTime_GoByID(Integer.valueOf(id_buses)));

		request.setAttribute("listFilterBus", busDAO.findAllBus(Integer.valueOf(id_buses)));
		
		RequestDispatcher rd = request.getRequestDispatcher("/filterBus.jsp");
		rd.forward(request, response);
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
//		doGet(request, response);
		String action = request.getParameter("action");
		if(action!=null)
		{
			if(action.equals("filter"))
			{
				String time_go = request.getParameter("time_go");
				String id_buses = request.getParameter("id_buses");
				Bus bus = new Bus();
				bus = busDAO.findBusByTime_GoAndID(Integer.valueOf(id_buses), time_go);
				
				request.setAttribute("time_go", busDAO.findTime_GoByID(Integer.valueOf(id_buses)));
				
				request.setAttribute("filterBus", bus);
				RequestDispatcher rd = request.getRequestDispatcher("/filterBus.jsp");
				rd.forward(request, response);
				return;
			}
			else if(action.equals("show"))
			{
				doGet(request, response);
			}
		}
	}
}
