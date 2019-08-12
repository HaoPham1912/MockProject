package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println("action is   "+action);
		if(action.equals("update")) {
			String id_ticket = request.getParameter("idTicketEdit");
			String status = request.getParameter("statusEdit");
//			System.out.println(id_ticket +"      "+ status);
			ticketDAO.updateStatusTicket(Integer.valueOf(id_ticket), Integer.valueOf(status));
			if(ticketDAO.updateStatusTicket(Integer.valueOf(id_ticket), Integer.valueOf(status))) {
				System.out.println("Success!!!");
				response.sendRedirect(request.getContextPath()+"/emp-dashboard");
			}		
		}
		else if(action.equals("delete"))
		{
			String id = request.getParameter("id");
			ticketDAO.deleteTicket(Integer.valueOf(id));
			response.sendRedirect(request.getContextPath()+"/emp-dashboard");
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
