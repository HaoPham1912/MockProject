package com.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.CustomerDAOImp;
import com.booking.model.Account;
import com.booking.service.ICustomerService;

import javax.inject.Inject;

@WebServlet(urlPatterns= {"/login"})
public class CustomerController extends HttpServlet{

	@Inject
	ICustomerService customerservice;
	
	CustomerDAOImp d = new CustomerDAOImp();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd =  req.getRequestDispatcher("/login.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		System.out.println(username + " " + password);
		
		Account account = d.FindAccountByUsernamePassword(username, password);
		
		System.out.println(account);
		
		if(account==null)
		{
			System.out.println("sai");
			RequestDispatcher rd =  req.getRequestDispatcher("/login.jsp");
			rd.forward(req, resp);
		}
		else
		{
			System.out.println("dung");
			RequestDispatcher rd =  req.getRequestDispatcher("/index3.jsp");
			rd.forward(req, resp);
		}
	}
}
