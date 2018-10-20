package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dmain.Category;
import servers.CategoryServers;
@WebServlet(urlPatterns={"/user/category.do"})
public class CategoryServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		CategoryServers categoryservers=new CategoryServers();
		List<Category> c=categoryservers.findCategorys();
		req.setAttribute("s", c);
		req.getRequestDispatcher("/AdminLTE-2.4.3/JSP/index.jsp").forward(req, resp);
	}
}
