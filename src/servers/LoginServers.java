package servers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * account pwd 0:��¼�ɹ���1���˺Ų����ڣ�2���������
 * 
 * 1������jdbc
 * 2����������
 * 3�������������
 * 4��ִ�в�����
 * 5���ͷ���Դ
 * 
 * 
 */
public class LoginServers {
	
	public boolean check(String username, String userpwd) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/bs?user=root&password=MySQL&useUnicode=true&characterEncoding=UTF8";
		Connection c = DriverManager.getConnection(url);
		String sql1 = "select count(*) from user where username='" + username + "' and userpwd='" + userpwd + "'";
		PreparedStatement s1 = c.prepareStatement(sql1);
		
		ResultSet set = s1.executeQuery(sql1);
		// int n = s1.executeQuery(sql1);
		int n = 0;
		if (set.next())
			n = set.getInt(1);
		System.out.println("check");
		if (n != 0) {
			System.out.println("��¼�ɹ�");
			return true;
		}
		System.out.println("��¼ʧ��");
		return false;
		
//		if(set!=null){
//			set.close();
//		}
//		if(s1!=null){
//			s1.close();
//		}
//		if(c!=null){
//			c.close();
//		}
	}
	
	
	
	
}
