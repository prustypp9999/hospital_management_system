package com.user.servlet;
import javax.servlet.http.*;

import com.dao.UserDao;
import com.db.DbConnect;
import com.entity.User;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
@WebServlet("/userRegister")
public class UserRegister extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("uname");
			String email=req.getParameter("email");
			String password= req.getParameter("password");
			
			User u=new User(name,email,password);
			UserDao dao=new UserDao(DbConnect.getConnection());
			HttpSession session = req.getSession();
			boolean f=dao.resister(u);
			
			if (f) {

				session.setAttribute("sucMsg", "Register Sucessfully");
				resp.sendRedirect("signup.jsp");

			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
			}		
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
