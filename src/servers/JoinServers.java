package servers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JoinServers {
	public boolean insert(String username, String useremail, String userpwd, String userphone)
			throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/bs?user=root&password=123456&useUnicode=true&characterEncoding=UTF8";
		Connection c = DriverManager.getConnection(url);
		Statement s1 = c.createStatement();
		String sql1 = "insert into user (username,userpwd,useremail,userphone) values('" + username + "','" + userpwd
				+ "','" + useremail + "','" + userphone + "')";
		int n = s1.executeUpdate(sql1);
		if (!username.equals("") && !userpwd.equals("") && !useremail.equals("") && !userphone.equals(""))  {
			
				System.out.println("����ɹ�");
				return true;
			
		} else {
			System.out.println("���ʧ��");
			return false;

		}
	}

}
