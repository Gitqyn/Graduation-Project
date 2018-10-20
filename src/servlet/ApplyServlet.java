package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dmain.Apply;
import servers.ApplyServers;
import servers.LoginServers;

@WebServlet(urlPatterns={"/user/apply.do"})
public class ApplyServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Servlet");
		req.setCharacterEncoding("utf-8");
		String sname = req.getParameter("sname");
		String stype = req.getParameter("stype");
		String pname=req.getParameter("pname");
		String ptel=req.getParameter("ptel");
		String beizhu=req.getParameter("beizhu");
		Apply apply=new Apply();
		apply.setSname(sname);
		apply.setStype(stype);
		apply.setPname(pname);
		apply.setBeizhu(beizhu);
		apply.setPtel(ptel);
		ApplyServers a=new ApplyServers();
		int rs=a.addApply(apply);
		
		// 响应client
		resp.sendRedirect("../AdminLTE-2.4.3/JSP/shenqing.jsp");
		
		
//		resp.setContentType("text/html;charset=utf-8");
//		PrintWriter out = resp.getWriter();
//		if(rs==1) {
//			out.write("提交成功！");
//		}else if(rs==2) {
//			out.write("参数错误！");
//		}else{
//			out.write("新增失败！");
//		}
//		out.close();
	}
		
		
		
	}

