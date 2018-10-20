package AdminDao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import Admindmain.Admin;
import dmain.Apply;

public class AdminDao {
	public Admin findadmin() {
		QueryRunner runner = new QueryRunner();
		String sql = "select * from admin where adminid=? and adminpwd=?";
		try {
			return (Admin) runner.query(ConnUtils.getConnection(), sql, new BeanListHandler<Admin>(Admin.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}
