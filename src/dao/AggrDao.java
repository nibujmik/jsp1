package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.MoneySum;
import vo.QuanSum;
import jdbc.util.OracleConnectionUtil;
import vo.CustomVo;
//�ۼ���: ���ֺ�
public class AggrDao {
	private static AggrDao dao = new AggrDao();
	private AggrDao() { }
	public static AggrDao getInstance() {
		return dao;
	}
	  
	public List<MoneySum> moneySum(){
		List<MoneySum> list= new ArrayList<>();
		Connection conn = OracleConnectionUtil.connect();
		String sql="SELECT BUY_DATE ,sum(money) " + 
				"FROM (SELECT to_char(buy_date,'yyyy-mm-dd') AS BUY_DATE ,quantity * price AS money\r\n" + 
				"FROM TBL_BUY# tb , TBL_PRODUCT# tp \r\n" + 
				"WHERE tb.pcode=tp.pcode)\r\n" + 
				"	GROUP BY BUY_DATE\r\n" +
				"	ORDER BY BUY_DATE";
							
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		try {
			pstmt= conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				list.add(new MoneySum(rs.getDate(1),rs.getInt(2)));
			}
		} catch (Exception e) {
			System.out.println("moneySum오류: "+e.getMessage());
		}
		
		return list;
	}
	public List<QuanSum> quanSum(){
		List<QuanSum> list= new ArrayList<>();
		Connection conn = OracleConnectionUtil.connect();
		String sql="SELECT PCODE ,sum (quantity) \r\n" + 
				"FROM (SELECT tp.pcode ,tb.quantity AS quantity\r\n" + 
				"FROM TBL_BUY# tb , TBL_PRODUCT# tp \r\n" + 
				"WHERE tb.pcode=tp.pcode)\r\n" + 
				"	GROUP BY PCODE\r\n" + 
				"	ORDER BY PCODE";
							
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		try {
			pstmt= conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				list.add(new QuanSum(rs.getString(1),rs.getInt(2)));
			}
		} catch (Exception e) {
			System.out.println("quanSum오류: "+e.getMessage());
		}
		
		return list;
	}
	
	   }

