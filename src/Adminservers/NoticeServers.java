package Adminservers;

import java.util.List;

import AdminDao.NoticeDao;
import Admindmain.Notice;


public class NoticeServers {
	public int addnotice(Notice n){

		
		if(n!=null) {
			if(n.getNoticemain()==null) {
				return 2;
			}else {
				NoticeDao noticedao=new NoticeDao();
				int rs= noticedao.addnotice(n);
				return rs>0?1:0;
			}
		}
		return 0;
		
		
	}
	public List<Notice> shownotice(){
		NoticeDao noticedao=new NoticeDao();
		return noticedao.shownotice();
		
	}
	
	public void delnotice(Notice notice) {
		
		NoticeDao d = new NoticeDao();
		d.delnotice(notice);
		
		

	}
}
