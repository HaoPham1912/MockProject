package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.AccountDAOImp;
import com.booking.dao.CustomerDAOImp;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet({"/register"})
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerDAOImp customer = new CustomerDAOImp();
    AccountDAOImp account = new AccountDAOImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		
		boolean check = account.checkAvailableAccount(user);
//		System.out.println(check);
		if(!check) {
			int id= account.insertAccount(user, pass, 1);
			System.out.println("Them thanh cong account");
			System.out.println("id accout is: "+id);
			customer.insertInfoCustomer(id, name, phone, email, address);
			System.out.println("Dang ki thanh cong");
			response.sendRedirect(request.getContextPath()+"/login");
		}
		else {
			System.out.println("username avail!!! Retry!!");
			response.sendRedirect(request.getContextPath()+"/register");
		}
	}

}