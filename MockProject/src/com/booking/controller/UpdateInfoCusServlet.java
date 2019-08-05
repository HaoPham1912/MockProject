package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.CustomerDAOImp;

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
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		int id_acc= cus.findId_acc(username);
		if(id_acc>0) {
			cus.updateCustomer(name, phone, email, address, id_acc);
			if(cus.updateCustomer(name, phone, email, address, id_acc)) {
				System.out.println("Update Success!!!");
				//response.sendRedirect(request.getContextPath()+"/dashboard");

			}
			else {
				System.out.println("Can't Update!!!");
			}
		}
		else {
			System.out.println("Your username is Incorrect!!!!");
		}
	}

}
