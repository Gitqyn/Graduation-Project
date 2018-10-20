package Adminservers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import AdminDao.AdminDao;
import Admindmain.Admin;


public class AdminLoginServers {
	private static final String URL="jdbc:mysql://localhost:3306/bs";
	private static final String USER="root";
	private static final String PWD="123456L";
	
	
	public Admin login(String adminid,String adminpwd) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from admin where adminid=? and adminpwd=?";
			conn = DriverManager.getConnection(URL,USER,PWD);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, adminid);
			pstmt.setString(2,adminpwd);
			rs= pstmt.executeQuery();
			if(rs.next()) {
				Admin a=new Admin();
				a.setAdminid(rs.getString("adminid"));
				a.setAdminid(rs.getString("adminpwd"));
				return a;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)
					rs.close();
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
	
	
	
	

