package Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;


import dmain.Wode;

public class WodeDao {
	public List<Wode> findshetuan(){
		QueryRunner runner = new QueryRunner();
		String sql = "SELECT sname FROM `user`,apply WHERE `user`.userphone=?";
		Wode w=new Wode();
		
		w.getPtel();
		
		try {
			return runner.query(ConnUtils.getConnection(), sql, new BeanListHandler<Wode>(Wode.class));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	

}
