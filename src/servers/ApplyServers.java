package servers;

import Dao.ApplyDao;
import dmain.Apply;

public class ApplyServers {
	public int addApply(Apply apply) {
		
		if(apply!=null) {
			if(apply.getPname()==null
					|| apply.getBeizhu()==null
					|| apply.getPtel()==null
					|| apply.getSname()==null
					|| apply.getStype()==null) {
				return 2;
			}else {
				ApplyDao a =new ApplyDao();
				int rs= a.addApply(apply);
				return rs>0?1:0;
			}
		}
		return 0;
	}

}
