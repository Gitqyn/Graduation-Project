package AdminDao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import Admindmain.Apply;
import Admindmain.Notice;
import Dao.ConnUtils;

public class NoticeDao {
	public int addnotice(Notice n) {

		QueryRunner runner = new QueryRunner();
		String sql = "insert into notice (noticemain) values (?)";
		Object[] params = { n.getNoticemain() };
		try {
			return runner.execute(ConnUtils.getConnection(), sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public List<Notice> shownotice() {
		QueryRunner runner = new QueryRunner();
		String sql = "select noticemain from notice";
		try {
			return runner.query(ConnUtils.getConnection(), sql, new BeanListHandler<Notice>(Notice.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public void delnotice(Notice notice) {
		
		QueryRunner runner = new QueryRunner();
		String sql = "DELETE  FROM notice WHERE noticeid=?";
		Object[] params = { notice.getNoticeid() };
		try {
			 runner.execute(ConnUtils.getConnection(), sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
