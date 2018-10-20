package servers;

import java.util.List;

import Dao.CategoryDao;
import dmain.Category;

public class CategoryServers {
private CategoryDao CategoryDao = new CategoryDao();
	
	public List<Category> findCategorys(){
		//直接从数据库取数据
		return CategoryDao.findCategory();
	}
}
