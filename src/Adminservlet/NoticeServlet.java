package Adminservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Admindmain.Notice;
import Adminservers.NoticeServers;


@WebServlet(urlPatterns = { "/user/notice.do" })
public class NoticeServlet extends HttpServlet{
	String noticemain;
	String noticeid;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Servlet");
		req.setCharacterEncoding("utf-8");
	    noticemain = req.getParameter("noticemain");
	    noticeid=req.getParameter("noticeid");
	    if(noticemain!=null){
	    	addnotice();
	    	resp.sendRedirect("../AdminLTE-2.4.3/JSP_ht/Adminf.jsp");
	    }
	    if(noticeid!=null){
	    	delnotice();
	    	resp.sendRedirect("../AdminLTE-2.4.3/JSP_ht/Admind.jsp");
	    }
		
	}
	public void addnotice(){
		System.out.println("addnotice");
		Notice notice=new Notice();
		notice.setNoticemain(noticemain);
		
		NoticeServers n=new NoticeServers();
		n.addnotice(notice);
		
	}
	public List<Notice> shownotice(){
		Notice notice =new Notice();
		NoticeServers n=new NoticeServers();
		return n.shownotice();
	}
	public void delnotice(){
		Notice notice=new Notice();
		notice.setNoticeid(noticeid);
		NoticeServers n=new NoticeServers();
		n.delnotice(notice);
		
	}

}
