package com.booking.ultils;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.booking.model.Account;

public class MyUltil {
	public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";

	private static final String ATT_NAME_USER_NAME = "ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE";

	public static void storeLoginedUser(HttpSession session, Account account) {
		session.setAttribute("user", account);
	}

	public static Account getLoginedUser(HttpSession session) {
		Account loginedUser = (Account) session.getAttribute("user");
		return loginedUser;
	}
	
	public static void removeUser(HttpSession session,String user)
	{
		session.removeAttribute(user);
	}

	public static void storeUserCookie(HttpServletResponse response, Account account) {
		System.out.println("Store user cookie");
		Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, account.getUsername());
		cookieUserName.setMaxAge(24 * 60 * 60);
		response.addCookie(cookieUserName);
	}

	public static String getUserNameInCookie(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (ATT_NAME_USER_NAME.equals(cookie.getName())) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}

	public static void deleteUserCookie(HttpServletResponse response) {
		Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, null);
		cookieUserName.setMaxAge(0);
		response.addCookie(cookieUserName);
	}
}
