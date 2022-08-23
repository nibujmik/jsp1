package dao;
//�ۼ���: ���ֺ�
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleConnectionUtil;
import vo.CustomVo;
import vo.Product;

public class ProductDao {
	private static ProductDao dao = new ProductDao(); 
	   private ProductDao() { 
	   }
	   public static ProductDao getInstance() { 
	      return dao;
	   }
	 
	 public List<Product> getByCategory(String category) {
		 List<Product> list= new ArrayList<>();
		 Connection conn = OracleConnectionUtil.connect();
		 String sql="select * from tbl_product# where category=? order by category";
		 PreparedStatement pstmt= null; ResultSet rs=null;
		 try {
			pstmt= conn.prepareStatement(sql); 
			pstmt.setNString(1, category);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getNString(1),rs.getNString(2),rs.getNString(3),rs.getInt(4)));
			}
			rs.close();
		} catch (SQLException e) {
			System.out.println("Product select 오류: "+e.getMessage());
		}finally {
			OracleConnectionUtil.close(conn, pstmt);
		}
		 return list;
	 }
		 
	 
	 public List<Product> getProduct(){
		 List<Product> list= new ArrayList<>();
		 Connection conn = OracleConnectionUtil.connect();
		 String sql="select * from tbl_product# order by pcode";
		 PreparedStatement pstmt= null; ResultSet rs=null;
		 try {
			pstmt= conn.prepareStatement(sql); 
			rs=pstmt.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getNString(1),rs.getNString(2),rs.getNString(3),rs.getInt(4)));
			}
			rs.close();
		} catch (SQLException e) {
			System.out.println("Product select 오류: "+e.getMessage());
		}finally {
			OracleConnectionUtil.close(conn, pstmt);
		}
		 return list;
	 }

	 public int insert(Product vo) {
	      Connection conn = OracleConnectionUtil.connect();
	      String sql = "INSERT INTO TBL_PRODUCT# (PCODE,CATEGORY, PNAME, PRICE) VALUES(?,?,?,?)";
	      PreparedStatement pstmt = null;
	      int cnt=0;
	      try {
	         pstmt = conn.prepareStatement(sql);

	         pstmt.setString(1, vo.getPcode());
	         pstmt.setString(2, vo.getCategory());
	         pstmt.setString(3, vo.getPname());
	         pstmt.setInt(4, vo.getPrice()); 

	         cnt= pstmt.executeUpdate();   
	         System.out.println("insert 성공!!");
	      } catch (SQLException e) {
	         System.out.println("insert SQL 오류: " + e.getMessage());
	         
	      } finally {
	         OracleConnectionUtil.close(conn,pstmt); 
	      }
		return cnt;
	   }
}
