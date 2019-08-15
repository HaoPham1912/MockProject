package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.dao.TicketDAOImp;

/**
 * Servlet implementation class CustomTicketServlet
 */
@WebServlet("/emp-customTicket")
public class CustomTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    TicketDAOImp ticketDAO = new TicketDAOImp();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomTicketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getParameter("action");
		if(action.equals("update")) {
			String id_ticket = request.getParameter("idTicketEdit");
			String status = request.getParameter("statusEdit");
			ticketDAO.updateStatusTicket(Integer.valueOf(id_ticket), Integer.valueOf(status));
			if(ticketDAO.updateStatusTicket(Integer.valueOf(id_ticket), Integer.valueOf(status))) {
				HttpSession session = request.getSession();
				String id_bus = (String) session.getAttribute("id_bus");
				session.setAttribute("UpdateTicketSuccess", "Updated");
				response.sendRedirect(request.getContextPath()+"/emp-filterTicket?id_bus="+id_bus);
			}
			else
			{
				HttpSession session = request.getSession();
				String id_bus = (String) session.getAttribute("id_bus");
				session.setAttribute("UpdateTicketFail", "Failed");
				response.sendRedirect(request.getContextPath()+"/emp-filterTicket?id_bus="+id_bus);
			}
		}
		else if(action.equals("delete"))
		{
			String id = request.getParameter("id");
			ticketDAO.deleteTicket(Integer.valueOf(id));
			HttpSession session = request.getSession();
			String id_bus = (String) session.getAttribute("id_bus");
			session.setAttribute("DeleteTicketSuccess", "Deleted");
			response.sendRedirect(request.getContextPath()+"/emp-filterTicket?id_bus="+id_bus);
		}
		else {
			HttpSession session = request.getSession();
			String id_bus = (String) session.getAttribute("id_bus");
			session.setAttribute("DeleteTicketFail", "Failed");
			response.sendRedirect(request.getContextPath()+"/emp-filterTicket?id_bus="+id_bus);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
