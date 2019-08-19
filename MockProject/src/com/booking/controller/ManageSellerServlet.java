package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.EmployeeDAOImp;

/**
 * Servlet implementation class ManageSellerServlet
 */
@WebServlet({"/admin-manageSeller"})
public class ManageSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmployeeDAOImp employeeDAO = new EmployeeDAOImp();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageSellerServlet() {
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
		request.setAttribute("employeeList", employeeDAO.findAllEmployee());
		RequestDispatcher rd = request.getRequestDispatcher("/manageSeller.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
//		doGet(request, response);
		String action = request.getParameter("action");
		System.out.println(action);
		if(action.equals("filterEmp")) {
			String name = request.getParameter("search");
			request.setAttribute("employeeList",  employeeDAO.findEmployee(name));
			RequestDispatcher rd = request.getRequestDispatcher("/manageSeller.jsp");
			rd.forward(request, response);
			return;
		}
		else if(action.equals("updateSeller"))
		{
			String name_emp = request.getParameter("nameSellerEdit");
			String phone_emp = request.getParameter("phoneSellerEdit");
			String email_emp = request.getParameter("emailSellerEdit");
			String address_emp = request.getParameter("addressSellerEdit");
			String id_acc_emp = request.getParameter("idSellerEdit");
			System.out.println(id_acc_emp);
			if(employeeDAO.findEmployeeById_acc(Integer.valueOf(id_acc_emp)))
			{
				if(employeeDAO.updateEmployee(name_emp, phone_emp, email_emp, address_emp, Integer.valueOf(id_acc_emp)))
				{
					System.out.println("Success");
					/*response.sendRedirect(request.getContextPath()+"/admin-manageSeller");*/
					request.setAttribute("UpdateEmpSuccess", "Update infor employee successful!!!");
					doGet(request, response);
					request.removeAttribute("UpdateEmpSuccess");
					System.out.println("Xóa r");
				}
				else
				{
					System.out.println("Failed");
					request.setAttribute("UpdateEmpFailed", "Can't update infor employee!!!");
					doGet(request, response);
					request.removeAttribute("UpdateEmpFailed");
				}
			}
		}
		else if(action.equals("deleteSeller"))
		{
			String id = request.getParameter("id");
			if(employeeDAO.deleteEmployee(Integer.valueOf(id))) {
				System.out.println("Deleted Seller");
				/*response.sendRedirect(request.getContextPath()+"/admin-dashboard");*/
				request.setAttribute("DeleteSellerSuccess", "Delete Success!!!!");
				doGet(request, response);
				request.removeAttribute("DeleteSellerSuccess");
			}
			else
			{
				request.setAttribute("DeleteSellerFailed", "Delete Failed!!!!");
				doGet(request, response);
				request.removeAttribute("DeleteSellerFailed");
			}
		}
	}

}
