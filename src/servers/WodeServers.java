package servers;

import java.util.List;

import Dao.WodeDao;
import dmain.Wode;



public class WodeServers {
private WodeDao WodeDao=new WodeDao();
	
	public List<Wode> findshetuan(){
		//ֱ�Ӵ����ݿ�ȡ����
		return WodeDao.findshetuan();
}
}