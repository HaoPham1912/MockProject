package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.CustomerDAOImp;
import com.booking.dao.EmployeeDAOImp;

/**
 * Servlet implementation class AdminDashBoardServlet
 */
@WebServlet("/admin-dashboard")
public class AdminDashBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerDAOImp customerDAO = new CustomerDAOImp();
	EmployeeDAOImp employeeDAO = new EmployeeDAOImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDashBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setAttribute("customerList", customerDAO.findAllCustomer());
		request.setAttribute("employeeList", employeeDAO.findAllEmployee());
		RequestDispatcher rd = request.getRequestDispatcher("/admin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
