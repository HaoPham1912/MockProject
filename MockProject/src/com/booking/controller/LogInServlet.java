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

import com.booking.dao.BusesDAOImp;
import com.booking.dao.CustomerDAOImp;
import com.booking.model.Account;
import com.booking.ultils.MyUltil;

/**
 * Servlet implementation class LogInServlet
 */
@WebServlet({"/login" })
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	CustomerDAOImp d = new CustomerDAOImp();
	BusesDAOImp busesDAO = new BusesDAOImp();
	
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
		
		ArrayList<String> start_placeList = new ArrayList<String>();
		start_placeList = busesDAO.findAllStart_Place();
		ArrayList<String> start_endList = new ArrayList<String>();
		start_endList = busesDAO.findAllEnd_Place();
		request.setAttribute("start_placeList", start_placeList);
		request.setAttribute("start_endList", start_endList);
		
		if(account == null)
		{
			RequestDispatcher rd =  request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		}
		else
		{
			if(account.getRole()==3)
			{
				response.sendRedirect(request.getContextPath()+"/admin-dashboard");
			}
			else
			{
				if(account.getRole()==1)
				{
					response.sendRedirect(request.getContextPath()+"/cus-dashboard");
				}
				else 
				{
					if(account.getRole()==2) {
						response.sendRedirect(request.getContextPath()+"/emp-dashboard");
					}
				}
			}
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		MyUltil myultil = new MyUltil();
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		
		String message = request.getParameter("message");
		
		Account account = d.FindAccountByUsernamePassword(username, password);
		
		if(account==null)
		{
			response.sendRedirect(request.getContextPath()+"/login");
		}
		else
		{	
			if(account.getRole()==3)
			{
				myultil.storeLoginedUser(session, account);
				response.sendRedirect(request.getContextPath()+"/admin-dashboard");
			}
			else
			{
				myultil.storeLoginedUser(session, account);
				response.sendRedirect(request.getContextPath()+"/cus-dashboard");	
			}
		}
	}

}
