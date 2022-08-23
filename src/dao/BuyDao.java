package dao;
//�ۼ���: ���ֺ�
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vo.Buy;
import dao.CustomDao;
import jdbc.util.OracleConnectionUtil;
import vo.CustomVo;

public class BuyDao {
	private static BuyDao dao = new BuyDao(); 
	   private BuyDao() { 
	   }
	   public static BuyDao getInstance() { 
	      return dao;
	   }
	
	 public int insert(Buy vo) {
	      Connection conn = OracleConnectionUtil.connect();
	      String sql = "INSERT INTO TBL_BUY# (BUY_SEQ,CUSTOM_ID, PCODE, QUANTITY, BUY_DATE) "
	      		+ "VALUES(BUY_SEQ.nextval,?,?,?,sysdate)";
	      PreparedStatement pstmt = null; int cnt=0;
	      try {
	         pstmt = conn.prepareStatement(sql);

	         pstmt.setString(1, vo.getCustom_id());
	         pstmt.setString(2, vo.getPcode());
	         pstmt.setInt(3, vo.getQuantity()); 

	         cnt= pstmt.executeUpdate();   
	         if(cnt==0) System.out.println("insert 구매완료!!");
	         else System.out.println("구매 실패");
	      } catch (SQLException e) {
	         System.out.println("insert SQL 오류: " + e.getMessage());
	         
	      } finally {
	         OracleConnectionUtil.close(conn,pstmt); 
	      }
		return cnt;
	   }

	

}
