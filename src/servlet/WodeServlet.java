package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dmain.Wode;
import servers.WodeServers;
@WebServlet(urlPatterns={"/user/wode.do"})
public class WodeServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		WodeServers w=new WodeServers();
		List<Wode> st= w.findshetuan();
		req.setAttribute("x", st);
		req.getRequestDispatcher("/AdminLTE-2.4.3/JSP/wode.jsp").forward(req, resp);
		
	}
}
