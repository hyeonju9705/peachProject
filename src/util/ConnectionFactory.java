package util;

import java.sql.Connection;
import java.sql.DriverManager;

// 사용 시에만 받아오도록 팩토리(Factory) 정의
public class ConnectionFactory {
	public Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // Class loader
			// Class.forName(ClassName)
			//	-> JVM이 해당 클래스를 읽어들이기 위해 활용!
			//	-> static 형식이라면, newInstance() 없이 바로 활용!
			String url = "jdbc:mysql://localhost:3306/cc?serverTimezone=UTC";
			String username = "root";
			String password = "1111";
			
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}











