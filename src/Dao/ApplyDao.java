package Dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;


import dmain.Apply;

public class ApplyDao {
	public int addApply(Apply a){
		
		QueryRunner runner = new QueryRunner();
		String sql = "insert into apply (sname,stype,pname,ptel,beizhu)values(?,?,?,?,?)";
		Object[] params={
				a.getSname(),
				a.getStype(),
				a.getPname(),
				a.getPtel(),
				a.getBeizhu(),
				
		};
		try {
			return runner.execute(ConnUtils.getConnection(), sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

}
