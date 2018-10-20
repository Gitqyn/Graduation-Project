package Adminservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admindmain.Admin;
import Adminservers.AdminLoginServers;

import servers.LoginServers;

@WebServlet(urlPatterns={"/user/adminlogin.do"})
public class AdminLoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String user = req.getParameter("username");
		String pwd = req.getParameter("userpwd");
		AdminLoginServers us = new AdminLoginServers();
		Admin s= us.login(user, pwd);
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out= resp.getWriter();
		if(s!=null) {
			//要把用户信息保存在session中
			req.getSession().setAttribute("b",user);
			resp.sendRedirect("../AdminLTE-2.4.3/JSP_ht/AdminIndex.jsp");
			/*req.getRequestDispatcher("../AdminLTE-2.4.3/JSP_ht/AdminIndex.jsp").forward(req, resp);*/
			out.write("登录成功！");
		}else {
			out.write("登录失败！");
		}
		out.close();
		
		
		
	}
	
		

}
