package servers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * account pwd 0:登录成功；1：账号不存在；2：密码错误
 * 
 * 1、加载jdbc
 * 2、创建链接
 * 3、创建命令对象
 * 4、执行并处理
 * 5、释放资源
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
			System.out.println("登录成功");
			return true;
		}
		System.out.println("登录失败");
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
