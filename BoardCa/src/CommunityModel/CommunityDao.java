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
	String main_board1 = "select * from (select * from community where community_id=숙취게시판)where rownum<=5";
	String main_board2 = "select * from (select * from community where community_id=정보공유)where rownum<=5";
	String main_board3 = "select * from (select * from community where community_id=QnA)where rownum<=5";
	String main_board4 = "select * from (select * from community where community_id=신고하기)where rownum<=5";
	
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
			pstmt = conn.prepareStatement(main_board1);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int Community_num = rs.getInt("community_num");
				String Community_id = rs.getNString("community_id");
				String Community_title = rs.getString("community_title");
				String Community_userId = rs.getString("community_userid");
				String Community_date = rs.getString("community_date");
				String Community_content = rs.getString("community_content");
				int Community_like = rs.getInt("community_like");
				list1.add(new CommunityDto(Community_num, Community_id, Community_title, Community_userId, Community_date, Community_content, Community_like));
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
		ArrayList<CommunityDto> list2 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement(main_board2);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int Community_num = rs.getInt("community_num");
				String Community_id = rs.getNString("community_id");
				String Community_title = rs.getString("community_title");
				String Community_userId = rs.getString("community_userid");
				String Community_date = rs.getString("community_date");
				String Community_content = rs.getString("community_content");
				int Community_like = rs.getInt("community_like");
				list2.add(new CommunityDto(Community_num, Community_id, Community_title, Community_userId, Community_date, Community_content, Community_like));
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
		return list2;
	}
	public ArrayList<CommunityDto> Main3(){
		ArrayList<CommunityDto> list3 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement(main_board3);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int Community_num = rs.getInt("community_num");
				String Community_id = rs.getNString("community_id");
				String Community_title = rs.getString("community_title");
				String Community_userId = rs.getString("community_userid");
				String Community_date = rs.getString("community_date");
				String Community_content = rs.getString("community_content");
				int Community_like = rs.getInt("community_like");
				list3.add(new CommunityDto(Community_num, Community_id, Community_title, Community_userId, Community_date, Community_content, Community_like));
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
		return list3;
	}
	public ArrayList<CommunityDto> Main4(){
		ArrayList<CommunityDto> list4 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement(main_board4);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int Community_num = rs.getInt("community_num");
				String Community_id = rs.getNString("community_id");
				String Community_title = rs.getString("community_title");
				String Community_userId = rs.getString("community_userid");
				String Community_date = rs.getString("community_date");
				String Community_content = rs.getString("community_content");
				int Community_like = rs.getInt("community_like");
				list4.add(new CommunityDto(Community_num, Community_id, Community_title, Community_userId, Community_date, Community_content, Community_like));
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
		return list4;
	}

	
}