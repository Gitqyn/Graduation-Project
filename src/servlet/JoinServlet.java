package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servers.JoinServers;

@WebServlet(urlPatterns = { "/user/join.do" })
public class JoinServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// ×¢²á
		req.setCharacterEncoding("utf-8");
		JoinServers ins = new JoinServers();
		String username = req.getParameter("username");
		String useremail = req.getParameter("useremail");
		String userpwd = req.getParameter("userpwd");
		String userphone = req.getParameter("userphone");
		Boolean re = null;
		try {
			re = ins.insert(username, useremail, userpwd, userphone);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out1 = resp.getWriter();

		if (re == true) {
			 out1.write("×¢²á³É¹¦Çë·µ»ØµÇÂ¼");
			
			
		}

		else {
			out1.write("×¢²áÊ§°Ü£¬ÇëÍêÉÆ×¢²áÐÅÏ¢");
//			resp.sendRedirect("../AdminLTE-2.4.3/JSP/login.jsp");

		}
	}
	

}
