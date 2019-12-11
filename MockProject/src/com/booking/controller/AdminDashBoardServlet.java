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
import com.booking.dao.AdminDAOImp;
import com.booking.dao.CustomerDAOImp;
import com.booking.dao.EmployeeDAOImp;
import com.booking.model.Customer;
import com.sun.corba.se.spi.protocol.RequestDispatcherRegistry;

/**
 * Servlet implementation class AdminDashBoardServlet
 */
@WebServlet("/admin-dashboard")
public class AdminDashBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerDAOImp customerDAO = new CustomerDAOImp();
	EmployeeDAOImp employeeDAO = new EmployeeDAOImp();
	AccountDAOImp accountDAOImp = new AccountDAOImp();
	AdminDAOImp adminDAO = new AdminDAOImp();
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//		response.setIntHeader("Refresh", 5);
		request.setAttribute("customerList", customerDAO.findAllCustomer());
		request.setAttribute("employeeList", employeeDAO.findAllEmployee());
		request.setAttribute("adminList", adminDAO.findAllAdmin());
		RequestDispatcher rd = request.getRequestDispatcher("/admin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String action=request.getParameter("action");
		System.out.println("action: " +action);
		if(action.equals("updateCustomer"))
		{
			String name = request.getParameter("nameUserEdit");
			String phone = request.getParameter("phoneUserEdit");
			String email = request.getParameter("emailUserEdit");
			String address = request.getParameter("addressUserEdit");
			String id_acc_cus = request.getParameter("idUserEdit");

			if(customerDAO.finCustomerById_acc(Integer.valueOf(id_acc_cus)))
			{
				if(customerDAO.updateCustomer(name, phone, email, address, Integer.valueOf(id_acc_cus)))
				{
					System.out.println("Success");
					
					session.setAttribute("UpdateCusSuccess", "Update Infor Suceess!!!");
//					doGet(request, response);
					response.sendRedirect(request.getContextPath()+"/admin-dashboard");
				}
				else
				{
					System.out.println("Failed");
					session.setAttribute("UpdateCusFailed", "Can't update info");
//					doGet(request, response);
					response.sendRedirect(request.getContextPath()+"/admin-dashboard");
				}
			}
		}
		else if (action.equals("register"))
		{
			String name1 = request.getParameter("name1");
			String phone1 = request.getParameter("phone1");
			String email1 = request.getParameter("email1");
			String address1 = request.getParameter("address1");
			String user = request.getParameter("username1");
			String pass = request.getParameter("password1");
			String role = request.getParameter("role1");
			boolean check = accountDAOImp.checkAvailableAccount(user);
			if(!check) {
				int idnew= Integer.parseInt(role);
				if(idnew==1)
				{
					int id= accountDAOImp.insertAccount(user, pass, idnew);
					if(customerDAO.insertInfoCustomer(id, name1, phone1, email1, address1)) 
					{
						System.out.println("Dang ki thanh cong");
						session.setAttribute("AddNewCus", "New user have been added!!!");
//						doGet(request, response);
						response.sendRedirect(request.getContextPath()+"/admin-dashboard");
					}
					else
					{
						session.setAttribute("AddUserFailed", "Can't add new user");
//						doGet(request, response);
						response.sendRedirect(request.getContextPath()+"/admin-dashboard");
					}
				}else if(idnew==2) {
					int id= accountDAOImp.insertAccount(user, pass, idnew);
					System.out.println("Them thanh cong account");
					System.out.println("id accout is: "+id);
					if(employeeDAO.insertInfoEmployee(id, name1, phone1, email1, address1)) {
						System.out.println("Dang ki thanh cong");
						session.setAttribute("AddNewEmp", "New emp have been added");
//						doGet(request, response);
						response.sendRedirect(request.getContextPath()+"/admin-dashboard");
					}
					else
					{
						session.setAttribute("AddUserFailed", "Can't add new user");
//						doGet(request, response);
						response.sendRedirect(request.getContextPath()+"/admin-dashboard");
					}
				}else if(idnew==3) {
					int id= accountDAOImp.insertAccount(user, pass, idnew);
					System.out.println("Them thanh cong account");
					System.out.println("id accout is: "+id);
					if(adminDAO.insertAdmin(id, name1, phone1, email1, address1)) {
						System.out.println("Dang ki thanh cong");
						session.setAttribute("AddNewAdmin", "New ad have been added!!!");
//						doGet(request, response);
						response.sendRedirect(request.getContextPath()+"/admin-dashboard");
					}
					else
					{
						session.setAttribute("AddUserFailed", "Can't add new user");
//						doGet(request, response);
						response.sendRedirect(request.getContextPath()+"/admin-dashboard");
					}
				}
			}
			else {
				System.out.println("username avail!!! Retry!!");
				session.setAttribute("AddUserFailed", "Can't add new user");
//				doGet(request, response);
				response.sendRedirect(request.getContextPath()+"/admin-dashboard");
			}
		}
		else if(action.equals("filterCus")) 
		{
			String name = request.getParameter("search");
			request.setAttribute("customerList",  customerDAO.findCustomer(name));
			RequestDispatcher rd = request.getRequestDispatcher("/admin.jsp");
			rd.forward(request, response);	
			return;
		}
	}
}


