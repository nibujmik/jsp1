package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import jdbc.util.OracleConnectionUtil;
import vo.CustomVo;


	public class CustomDao { 
		private static CustomDao dao = new CustomDao();  
		private CustomDao() {		
		}
		public static CustomDao getInstance() {		
			return dao;
		}
		
		public List<CustomVo> getList() { 
			Connection conn = OracleConnectionUtil.connect();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "SELECT * FROM tbl_custom ORDER BY custom_id"; 
			CustomVo vo;
			List<CustomVo> list = new ArrayList<CustomVo>();
			try {
				pstmt = conn.prepareStatement(sql);

				rs = pstmt.executeQuery();
				while (rs.next()) {
					vo = new CustomVo(rs.getString(1), rs.getString(2), 
							rs.getString(3), rs.getInt(4), rs.getDate(5));
					list.add(vo); 
				}
				return list;
			} catch (SQLException e) {
				System.out.println("custom List SQL 오류 : " + e.getMessage());
			} finally {
				try {
					rs.close();
				} catch (SQLException e) {
					System.out.println("close 오류 : " + e.getMessage());
				}
				OracleConnectionUtil.close(conn,pstmt);
			}

			return null;
		}


		public CustomVo selectById(String customId) {
			Connection conn = OracleConnectionUtil.connect();
			String sql ="SELECT * FROM TBL_CUSTOM WHERE CUSTOM_ID =?";		
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			CustomVo vo = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setNString(1, customId);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					vo= new CustomVo(rs.getNString(1), 
							rs.getNString(2), rs.getNString(3), 
							rs.getInt(4), rs.getDate(5));
				}
			}catch (SQLException e) {
				System.out.println("select one SQL 오류 : " + e.getMessage());
			}
			
			return vo;
		}
		
		

		public int insert(CustomVo vo) {
			Connection conn = OracleConnectionUtil.connect();
			String sql = "INSERT INTO TBL_CUSTOM (CUSTOM_ID, NAME, EMAIL, AGE) "
					+ "VALUES(?,?,?,?)";
			PreparedStatement pstmt = null; int cnt=0;
			try {
				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, vo.getCustom_id());
				pstmt.setString(2, vo.getName());
				pstmt.setString(3, vo.getEmail());
				pstmt.setInt(4, vo.getAge()); 

				//pstmt.execute();
				cnt = pstmt.executeUpdate();
				System.out.println("insert 완료!!");
			} catch (SQLException e) {
				System.out.println("insert SQL 오류: " + e.getMessage());
			} finally {
				OracleConnectionUtil.close(conn,pstmt); 
			}
			
			return cnt;
		}

		public int update(CustomVo vo) {
			Connection conn = OracleConnectionUtil.connect();
			String sql="UPDATE TBL_CUSTOM SET EMAIL = ? , AGE = ? " + 
					" WHERE CUSTOM_ID = ?";   

			PreparedStatement pstmt = null; int cnt=0;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getEmail());
				pstmt.setInt(2, vo.getAge());
				pstmt.setString(3, vo.getCustom_id());

				//pstmt.execute();
				cnt = pstmt.executeUpdate();
			}catch (SQLException e) {
				System.out.println("update SQL 오류  : " + e.getMessage());
			}finally {
				OracleConnectionUtil.close(conn,pstmt);
			}
			
			return cnt;
		}

		public int delete(String custom_id) {
			Connection conn = OracleConnectionUtil.connect();
			String sql="DELETE FROM tbl_custom " + 
					"WHERE CUSTOM_ID = ?";   

			PreparedStatement pstmt = null;
			int result=0;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, custom_id);

				result = pstmt.executeUpdate();
			}catch (SQLException e) {
				System.out.println("delete SQL 오류  : " + e.getMessage());
			}finally {
				OracleConnectionUtil.close(conn,pstmt);
			}
			
			return result;
		}
	}
