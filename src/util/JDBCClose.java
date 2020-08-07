package util;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class JDBCClose {
	public static void close(Connection con, PreparedStatement pstmt) {
		try {
			if(pstmt != null) pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if(con != null) pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}








