package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servers.LoginServers;

@WebServlet(urlPatterns={"/user/login.do"})
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Servlet");
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("username");
		String pwd = req.getParameter("userpwd");
		// µÇÂ¼Âß¼­
		LoginServers loginServers = new LoginServers();
		
		
			boolean rs;
			try {
				rs = loginServers.check(name, pwd);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		

		// ÏìÓ¦client
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		System.out.println(name);
		if (rs=true) {
			req.getSession().setAttribute("a",name);
			req.getRequestDispatcher("/user/category.do").forward(req, resp);
			
//			resp.sendRedirect("/bs/user/category.do");
			
		}

		else {

			out.write("ÕËºÅÃÜÂë´íÎó");
		}
		out.close();
		
		
		
	}

}
