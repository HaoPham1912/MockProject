package com.booking.filter;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.model.Account;
import com.booking.ultils.MyUltil;  

public class AuthorizationFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) request; 
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		MyUltil myultil = new MyUltil();
		String url = req.getRequestURI();
		if(url.startsWith("/MockProject/admin"))
		{
			Account account = myultil.getLoginedUser(session);
			if(account == null)
			{
				resp.sendRedirect(req.getContextPath()+"/login?message=not-login");
			}
			else
			{
				if(account.getRole()==3)
				{
					chain.doFilter(request, response);
				}
				else
				{
					resp.sendRedirect(req.getContextPath()+"/login?message=not-permission");
				}
			}	
		}
		else if(url.startsWith("/MockProject/guest"))
		{
			/*
			 * if(url.startsWith("/MockProject/guest-dashboard")) { Account account =
			 * myultil.getLoginedUser(session); if(account==null) { chain.doFilter(request,
			 * response); } else { if(account.getRole()==3) { chain.doFilter(request,
			 * response); } else if(account.getRole()==1) {
			 * resp.sendRedirect(req.getContextPath()+"/cus-dashboard"); } } }
			 */
			chain.doFilter(request,response);
		}
		else if(url.startsWith("/MockProject/cus"))
		{
			Account account = myultil.getLoginedUser(session);
			if(account==null)
			{
				if(url.startsWith("/MockProject/cus-dashboard"))
				{
					resp.sendRedirect(req.getContextPath()+"/guest-dashboard");
				}
				else
				{
					resp.sendRedirect(req.getContextPath()+"/login?message=not-login");
				}
			}
			else
			{
				if(account.getRole()==1)
				{
					chain.doFilter(request, response);
				}
				else
				{
					resp.sendRedirect(req.getContextPath()+"/login?message=not-permission");
				}
			}	
		}
		else if(url.startsWith("/MockProject/emp")){
			Account account =myultil.getLoginedUser(session);
			if(account==null) 
			{
				resp.sendRedirect(req.getContextPath()+"/login?message=not-login");
			}
			else 
			{
				if(account.getRole()==2) 
				{
					chain.doFilter(request, response);
				}
				else 
				{
					resp.sendRedirect(req.getContextPath()+"/login?message=not-permission");
				}
			}
		}
		else
		{
			chain.doFilter(request, response);
		}
	}
}
