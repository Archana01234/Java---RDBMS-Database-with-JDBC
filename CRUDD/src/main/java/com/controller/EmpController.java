package com.controller;

import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Emp;
import com.dao.EmpDao;
import com.util.EmpUtil;


@WebServlet("/EmpController")
public class EmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(ServletRequest request, HttpServletResponse response, Object emp) throws ServletException, IOException {
		String action=((ServletRequest) request).getParameter("action");
		if(action.equalsIgnoreCase("insert"))
		{
			Emp e=new Emp();
			e.setFname(((ServletRequest) request).getParameter("fname"));
			e.setLname(((ServletRequest) request).getParameter("lname"));
			e.setEmail(((ServletRequest) request).getParameter("email"));
			e.setMobile(((ServletRequest) request).getParameter("mobile"));
			e.setAddress(((ServletRequest) request).getParameter("address"));
			e.setgender(((ServletRequest) request).getParameter("gender"));
			EmpDao.insertEmp(e);
			//response.sendRedirect("insert.jsp");
			((ServletRequest) request).getRequestDispatcher("show.jsp").forward(request, response);
	 
		}
		else if (action.equalsIgnoreCase("edit"))
		{
			int id=Integer.parseInt(((ServletRequest) request).getParameter("id"));
			Emp e=EmpDao.getEmps(id);
			((ServletRequest) request).setAttribute("e", emp);
			((ServletRequest) request).getRequestDispatcher("update.jsp").forward(request, response);
		}

}
}