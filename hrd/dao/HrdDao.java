package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleConnectionUtil;
import vo.CustomVo;
import vo.HrdVo;

public class HrdDao {
	private static HrdDao dao = new HrdDao();  
	private HrdDao() {		
	}
	public static HrdDao getInstance() {		
		return dao;
	}
	
	public int insert(HrdVo vo) {
		Connection conn = OracleConnectionUtil.connect();
		String sql = "INSERT INTO MEMBER_TBL_02 (CUSTNO,CUSTNAME,PHONE,ADDRESS,JOINDATE,GRADE,CITY) "
				+ "VALUES(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null; int cnt=0;
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, vo.getCustno());
			pstmt.setString(2, vo.getCustname());
			pstmt.setString(3, vo.getPhone());
			pstmt.setString(4, vo.getAddress()); 
			pstmt.setDate(5, vo.getJoindate()); 
			pstmt.setString(6, vo.getGrade()); 
			pstmt.setString(7, vo.getCity()); 

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
	
	public List<HrdVo> getList() { 
		Connection conn = OracleConnectionUtil.connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM MEMBER_TBL_02 ORDER BY CUSTNO"; 
		HrdVo vo;
		List<HrdVo> list = new ArrayList<HrdVo>();
		try {
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new HrdVo(rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getString(4), rs.getDate(5), rs.getString(6),rs.getString(7));
				list.add(vo); 
			}
			return list;
		} catch (SQLException e) {
			System.out.println("List SQL 오류 : " + e.getMessage());
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
	
	public int update(HrdVo vo) {
		Connection conn = OracleConnectionUtil.connect();
		String sql="UPDATE STUDENTS0 SET  CUSTNAME = ?, PHONE =?, ADDRESS=?, JOINDATE = ?, GRADE= ? , CITY = ? WHERE CUSTNO = ?";

		PreparedStatement pstmt = null; int cnt=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getCustname());
			pstmt.setString(2, vo.getPhone());
			pstmt.setString(3, vo.getAddress());
			pstmt.setDate(4, vo.getJoindate());
			pstmt.setString(5, vo.getGrade());
			pstmt.setString(6, vo.getCity());
			pstmt.setInt(7, vo.getCustno());
			

			//pstmt.execute();
			cnt = pstmt.executeUpdate();
		}catch (SQLException e) {
			System.out.println("update SQL 오류  : " + e.getMessage());
		}finally {
			OracleConnectionUtil.close(conn,pstmt);
		}
		
		return cnt;
	}

	public HrdVo selectByNo(String custno) {
		Connection conn = OracleConnectionUtil.connect();
		String sql ="SELECT * FROM MEMBER_TBL_02 WHERE CUSTNO =?";		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		HrdVo vo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setNString(1, custno);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo= new HrdVo(rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getString(4), rs.getDate(5), rs.getString(6),rs.getString(7));
			}
		}catch (SQLException e) {
			System.out.println("select one SQL 오류 : " + e.getMessage());
		}
		
		return vo;
	}
}
