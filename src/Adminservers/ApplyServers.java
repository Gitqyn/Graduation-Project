package Adminservers;

import java.util.List;

import AdminDao.ApplyDao;
import AdminDao.NoticeDao;
import Admindmain.Apply;
import Admindmain.Notice;

public class ApplyServers {
	ApplyDao applydao = new ApplyDao();

	public List<Apply> findapply() {
		return applydao.findapply();

	}
	public List<Apply> checkapply() {
		return applydao.checkapply();

	}

	public void delapply(Apply apply) {
		ApplyDao d = new ApplyDao();
		d.delapply(apply);
	}

	public void insertcheck(Apply apply) {
		ApplyDao ins = new ApplyDao();
		ins.insertcheck(apply);
	}
}
