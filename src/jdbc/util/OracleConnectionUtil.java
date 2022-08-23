package jdbc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OracleConnectionUtil {

	public static Connection connect() {
		Connection conn = null;

		String url = "jdbc:oracle:thin:@localhost:1521:XE";  
		String driver="oracle.jdbc.driver.OracleDriver";     
		String user ="c##idev";				
		String password="1234";				
		
		try {
			
			Class.forName(driver);
			
	
			conn = DriverManager.getConnection(url,user,password);   
			
			
			
		} catch (ClassNotFoundException e) {
			System.out.println("db 연결오류 : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("SQL오류: " + e.getMessage());
		} 
		
		return conn; 
	}

	public static void close(Connection conn,PreparedStatement pstmt) {
				try {
					if(conn != null)   conn.close();
					if(pstmt != null) pstmt.close();
				} catch (SQLException e) {
					System.out.println("db close 실패 : " + e.getMessage());
				}
		}
		

}
