package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.dao.CustomerDAOImp;
import com.booking.dao.TicketDAOImp;
import com.booking.model.Account;
import com.booking.model.Customer;
import com.booking.ultils.MyUltil;

/**
 * Servlet implementation class ViewInfoCusServlet
 */
@WebServlet({"/cus-viewInfo"})
public class ViewInfoCusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    CustomerDAOImp customerDAO = new CustomerDAOImp();  
    TicketDAOImp ticketDAO = new TicketDAOImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewInfoCusServlet() {
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
		MyUltil ultil = new MyUltil();
		HttpSession session = request.getSession();
		Account account = new Account();
		account = ultil.getLoginedUser(session);
		//System.out.println(account.getUsername());
		String username= account.getUsername();
		int id_acc = customerDAO.findId_acc(username);
		int id_cus= customerDAO.findId_cus(id_acc);
		System.out.println("ID CUS IS"+id_cus);
		//System.out.println(id_acc);
		Customer customer = new Customer();
		request.setAttribute("customerInfo", customerDAO.customer(id_acc));
		request.setAttribute("listTicketBooked",ticketDAO.listTicketBooked(id_cus));
		RequestDispatcher rd = request.getRequestDispatcher("/customerInfo.jsp");
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
		System.out.println("action is       "+action);
		if(action.equals("update")) {
			String id_acc = request.getParameter("id_acc_cus");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");	
			String address = request.getParameter("address");
			System.out.println(name);
				if(customerDAO.updateCustomer(name, phone, email, address, Integer.parseInt(id_acc))) {
					System.out.println("Update Success!!!");
					response.sendRedirect(request.getContextPath()+"/cus-viewInfo");
				}
				else {
					System.out.println("Can't Update!!!");
				}
		}
		else if(action.equals("delete"))
		{
			String id_ticket = request.getParameter("id");
			System.out.println(id_ticket);
			/*ticketDAO.deleteTicket(Integer.valueOf(id_ticket));*/
			if(ticketDAO.deleteTicket(Integer.valueOf(id_ticket))) {
				System.out.println("Deleted!!!!!");
				response.sendRedirect(request.getContextPath()+"/cus-viewInfo");
			}
		}
	}

}
