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
import com.booking.model.Account;
import com.booking.model.Customer;
import com.booking.ultils.MyUltil;

/**
 * Servlet implementation class UpdateInfoCusServlet
 */
@WebServlet({"/cus-updateInfo"})
public class UpdateInfoCusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerDAOImp cus = new CustomerDAOImp();   
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateInfoCusServlet() {
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
		int id_acc = cus.findId_acc(username);
		//System.out.println(id_acc);
		Customer customer = new Customer();
		request.setAttribute("customerInfo", cus.customer(id_acc));
		RequestDispatcher rd = request.getRequestDispatcher("/updateInfoCus.jsp");
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
		String action=request.getParameter("action");
		//		System.out.println("action: " +action);
		String id_acc = request.getParameter("id_acc_cus");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");	
		String address = request.getParameter("address");
			if(cus.updateCustomer(name, phone, email, address, Integer.parseInt(id_acc))) {
				System.out.println("Update Success!!!");
//				response.sendRedirect(request.getContextPath()+"/cus-viewInfo");
			}
			else {
				System.out.println("Can't Update!!!");
			}
	}
}
