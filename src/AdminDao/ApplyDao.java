package AdminDao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import Admindmain.Admin;
import Admindmain.Apply;
import Admindmain.Notice;
import Dao.ConnUtils;



public class ApplyDao {

	public List<Apply> findapply(){
		QueryRunner runner = new QueryRunner();
		String sql = "select * from apply";
		try {
			return runner.query(ConnUtils.getConnection(), sql, new BeanListHandler<Apply>(Apply.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Apply> checkapply(){
		QueryRunner runner = new QueryRunner();
		String sql = "SELECT * FROM apply WHERE applycheck is NULL;";
		try {
			return runner.query(ConnUtils.getConnection(), sql, new BeanListHandler<Apply>(Apply.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	public int delapply(Apply apply){
		
		QueryRunner runner = new QueryRunner();
		String sql = "delete from apply where applyid=?";
		Object[] params={
				apply.getApplyid()
		};
		try {
			return runner.execute(ConnUtils.getConnection(), sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	public int insertcheck(Apply apply) {

		QueryRunner runner = new QueryRunner();
		String sql = "update apply set applycheck=?  where applyid=?";
		Object[] params = { apply.getApplycheck(),apply.getApplycheck() };
		try {
			return runner.execute(ConnUtils.getConnection(), sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
}
