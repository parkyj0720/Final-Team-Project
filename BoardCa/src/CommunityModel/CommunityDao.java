package CommunityModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CommunityDao {
	private  CommunityDao instance;
	
	// 싱글톤 패턴
	public  CommunityDao getInstance(){
		if(instance ==null){
			instance = new CommunityDao();
		}
		return instance;
	}

	String main1 = "select * from board1";
	String main2 = "select * from board2";
	String main3 = "select * from board3";
	String main4 = "select * from board4";
	
	ArrayList<CommunityDto> list1;
	ArrayList<CommunityDto> list2;
	ArrayList<CommunityDto> list3;
	ArrayList<ArrayList<CommunityDto>> totalList;
	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;
	int cnt;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "boardca";
	String pass = "12345";
	public ArrayList<CommunityDto> Main1(){
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main1));
			rs = pstmt.executeQuery();
			while(rs.next()){
				int num = rs.getInt("num");
				String title = rs.getNString("title");
				String writer_id = rs.getString("writer_id");
				String written_date = rs.getString("written_date");
				String content = rs.getString("content");
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list1;
	}
	public ArrayList<CommunityDto> Main2(){
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main1));
			rs = pstmt.executeQuery();
			while(rs.next()){
				int num = rs.getInt("num");
				String title = rs.getNString("title");
				String writer_id = rs.getString("writer_id");
				String written_date = rs.getString("written_date");
				String content = rs.getString("content");
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list1;
	}
	public ArrayList<CommunityDto> Main3(){
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main1));
			rs = pstmt.executeQuery();
			while(rs.next()){
				int num = rs.getInt("num");
				String title = rs.getNString("title");
				String writer_id = rs.getString("writer_id");
				String written_date = rs.getString("written_date");
				String content = rs.getString("content");
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list1;
	}
	public ArrayList<CommunityDto> Main4(){
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main1));
			rs = pstmt.executeQuery();
			while(rs.next()){
				int num = rs.getInt("num");
				String title = rs.getNString("title");
				String writer_id = rs.getString("writer_id");
				String written_date = rs.getString("written_date");
				String content = rs.getString("content");
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list1;
	}
	
}