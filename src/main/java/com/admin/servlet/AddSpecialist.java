package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.SpecialistDao;
import com.db.DbConnect;
@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String specName=req.getParameter("specName");
		SpecialistDao dao=new SpecialistDao(DbConnect.getConnection());
		boolean b=dao.addSpecialist(specName);
		HttpSession session =req.getSession();
		if (b) 
		{
			session.setAttribute("succMsg", "Specialist added");
			resp.sendRedirect("admin/index.jsp");
			
		}
		else
		{
			session.setAttribute("errorMsg", "Specialist not Added!");
			resp.sendRedirect("admin/index.jsp");
		}
		
	}
	

}
