package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.dao.AccountDAOImp;
import com.booking.dao.CustomerDAOImp;
import com.booking.model.Customer;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet({"/register"})
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerDAOImp customerDAOImp = new CustomerDAOImp();
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
		String message = request.getParameter("message");
		System.out.println(message);
		request.setAttribute("message", message);
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
		
		Customer customer = new Customer();
		customer.setName(name);
		customer.setPhone(phone);
		customer.setEmail(email);
		customer.setAddress(address);
		customer.setAddress(address);
		customer.setUsername(user);
		customer.setPassword(pass);
		
		
		HttpSession session = request.getSession();
		session.setAttribute("customerHo", customer);
		
		boolean check = account.checkAvailableAccount(user);
		if(!check) {
			int id= account.insertAccount(user, pass, 1);
			System.out.println("Them thanh cong account");
			System.out.println("id accout is: "+id);
			customerDAOImp.insertInfoCustomer(id, name, phone, email, address);
			System.out.println("Dang ki thanh cong");
			session.removeAttribute("customerHo");
			response.sendRedirect(request.getContextPath()+"/login");
		}
		else {
			System.out.println("username avail!!! Retry!!");
			String message = "Username is not available";
			response.sendRedirect(request.getContextPath()+"/register?message="+message);
		}
	}

}
