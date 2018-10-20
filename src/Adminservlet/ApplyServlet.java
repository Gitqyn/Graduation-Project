package Adminservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admindmain.Apply;
import Admindmain.Notice;
import Adminservers.ApplyServers;

import Adminservers.NoticeServers;


@WebServlet(urlPatterns = { "/user/adminapply.do" })
public class ApplyServlet extends HttpServlet{
	String applyid=null;
	String check=null;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("Servlet");
		req.setCharacterEncoding("utf-8");
		applyid=req.getParameter("applyid");
		check=req.getParameter("tongguo");
		if(check!=null){
			insertcheck();
			checkapply();
			resp.sendRedirect("../AdminLTE-2.4.3/JSP_ht/AdminIndex.jsp");
		}
		
		if(applyid!=null){
			delapply();
		resp.sendRedirect("../AdminLTE-2.4.3/JSP_ht/AdminIndex.jsp");
		}

	}

	public List<Apply> findapply() {
		ApplyServers a = new ApplyServers();
		List<Apply> rs = a.findapply();
		return rs;

	}
	
	public List<Apply> checkapply() {
		ApplyServers a = new ApplyServers();
		List<Apply> rs = a.checkapply();
		return rs;

	}
	public void delapply(){
		Apply a=new Apply();
		a.setApplyid(applyid);
		ApplyServers n=new ApplyServers();
		n.delapply(a);
		
	}
	
	
	public void insertcheck(){
		Apply a=new Apply();
		a.setApplycheck(check);
		a.setApplyid(check);
		ApplyServers n=new ApplyServers();
		n.insertcheck(a);
		System.out.println("check");
	}

}
