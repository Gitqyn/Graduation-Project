package servers;

import java.util.List;

import Dao.WodeDao;
import dmain.Wode;



public class WodeServers {
private WodeDao WodeDao=new WodeDao();
	
	public List<Wode> findshetuan(){
		//直接从数据库取数据
		return WodeDao.findshetuan();
}
}