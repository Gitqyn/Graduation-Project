package AdminDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnUtils {
	private static final String URL="jdbc:mysql://localhost:3306/bs";
	private static final String USER="root";
	private static final String PWD="123456";
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		try {
			Connection conn = 
					DriverManager.getConnection(URL, USER,PWD);
			return conn;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}