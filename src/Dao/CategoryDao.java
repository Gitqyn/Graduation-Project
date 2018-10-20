package Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dmain.Category;

public class CategoryDao {
	public List<Category> findCategory(){
		QueryRunner runner = new QueryRunner();
		String sql = "select * from category";
		try {
			return runner.query(ConnUtils.getConnection(), sql, new BeanListHandler<Category>(Category.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	
}
