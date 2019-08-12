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
import com.booking.model.Bus;
import com.booking.model.Ticket;
import com.booking.ultils.MyUltil;

/**
 * Servlet implementation class FilterTicketServlet
 */
@WebServlet("/emp-filterTicket")
public class FilterTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    TicketDAOImp ticketDAO = new TicketDAOImp();   
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
		String id_bus = request.getParameter("id_bus");
		request.setAttribute("id_bus", id_bus);
		request.setAttribute("listFilterTicket", ticketDAO.filterAllTicket(Integer.valueOf(id_bus)));
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
		doGet(request, response);
	}

}
