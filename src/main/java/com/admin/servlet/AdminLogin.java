package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;

import javax.servlet.annotation.*;
@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet 
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			HttpSession session=req.getSession();
			if ("admin@gmail.com".equals(email) && "admin".equals(password)) 
			{
				session.setAttribute("adminObj", new User());
				resp.sendRedirect("admin/index.jsp");
				
			}
			else
			{
				session.setAttribute("errorMsg", "Invalid Email or Password");
				resp.sendRedirect("admin_login.jsp");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
