package servers;

import java.util.List;

import Dao.CategoryDao;
import dmain.Category;

public class CategoryServers {
private CategoryDao CategoryDao = new CategoryDao();
	
	public List<Category> findCategorys(){
		//ֱ�Ӵ����ݿ�ȡ����
		return CategoryDao.findCategory();
	}
}
