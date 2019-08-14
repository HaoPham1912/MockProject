package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.AdminDAOImp;

/**
 * Servlet implementation class ManageAdminServlet
 */
@WebServlet({"/admin-manageAdmin"})
public class ManageAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminDAOImp adminDAO = new AdminDAOImp();   
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ManageAdminServlet() {
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
		request.setAttribute("adminList", adminDAO.findAllAdmin());
		RequestDispatcher rd = request.getRequestDispatcher("/manageAdmin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		//doGet(request, response);
		String action = request.getParameter("action");
		System.out.println(action);
		if(action.equals("updateAdmin")) {
			String name_ad = request.getParameter("nameAdminEdit");
			String phone_ad = request.getParameter("phoneAdminEdit");
			String email_ad = request.getParameter("emailAdminEdit");
			String address_ad = request.getParameter("addressAdminEdit");
			String id_acc_ad = request.getParameter("idAdminEdit");
			if(adminDAO.updateAdmin(name_ad, phone_ad, email_ad, address_ad, Integer.valueOf(id_acc_ad))) {
				System.out.println("Update admin info success!!!");
				response.sendRedirect(request.getContextPath()+"/admin-manageAdmin");
			}
			else
			{
				System.out.println("Failed!!!");
			}
		}
		else if(action.equals("filterAdmin")) {
			String name = request.getParameter("search");
			request.setAttribute("adminList",  adminDAO.findAdmin(name));
			RequestDispatcher rd = request.getRequestDispatcher("/manageAdmin.jsp");
			rd.forward(request, response);
			return;
		}
	}
}
