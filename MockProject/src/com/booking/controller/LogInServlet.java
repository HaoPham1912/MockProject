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

/**
 * Servlet implementation class LogInServlet
 */
@WebServlet({"/login" })
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	CustomerDAOImp d = new CustomerDAOImp();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("user");
		if(account == null)
		{
			RequestDispatcher rd =  request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		}
		else
		{
			response.sendRedirect(request.getContextPath()+"/dashboard");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username + " " + password);
		
		Account account = d.FindAccountByUsernamePassword(username, password);
		
		if(account==null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("error", "Login failed");
			response.sendRedirect(request.getContextPath()+"/login");
		}
		else
		{	
			HttpSession sessionLogin = request.getSession();
			sessionLogin.setAttribute("user", account);
			response.sendRedirect(request.getContextPath()+"/dashboard");
		}
	}

}
