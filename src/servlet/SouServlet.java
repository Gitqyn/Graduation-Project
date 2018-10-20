package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dmain.Category;
import servers.CategoryServers;
@WebServlet(urlPatterns={"/user/sou.do"})
public class SouServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		String sou=req.getParameter("sou");
		String a1="飞扬卡耐基";
		String a2="ERP";
		if (sou.equals(a1)){
			resp.sendRedirect("../AdminLTE-2.4.3/JSP/wode.jsp");
		}
		else if(sou.equals(a2)){
			out.write("本页正在制作中");
		}
		else{
			out.write("请输入正确的字段");
		}
	}
		
	}