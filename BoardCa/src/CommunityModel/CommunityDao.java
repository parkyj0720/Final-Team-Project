package CommunityModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class CommunityDao {
	private CommunityDao instance;

	// 싱글톤 패턴
	public CommunityDao getInstance() {
		if (instance == null) {
			instance = new CommunityDao();
		}
		return instance;
	}
	String boardnum = "select * from board";
	
	String board = "select * from board where BOARDNUM=?";

	//String main = "select * from (select * from community ORDER BY num DESC where boardnum=?) where rownum<=6";

	String main = "select * from community where boardnum=? and rownum <= 7 ORDER BY num DESC";

	String C_detail = "select * from community where num=?";

	String C_comment = "select * from community_comment ORDER BY num DESC where boardnum=? and content_num=?";
	
	String list_heart = "select * from heart where content_num=?";
	
	String detail = "select * from community where num=?";
	
	String views = "update community set views = views+1 where num=?";

	ArrayList<ArrayList<CommunityDto>> totalList;
	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;
	int cnt;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "boardca";
	String pass = "12345";
	
	// Main
	public ArrayList<BoardList> Get_boardlist() {
		ArrayList<BoardList> boardList = new ArrayList<BoardList>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((boardnum));
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("boardnum");
				String boardname = rs.getNString("boardname");
				boardList.add(new BoardList(num, boardname));
			}
		} catch (Exception e) {
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} else if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return boardList;
	}
	public ArrayList<CommunityDto> main(int b_num){
		ArrayList<CommunityDto> list = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main));
			pstmt.setInt(1, b_num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String title = rs.getNString("title");
				String writer_id = rs.getString("writer_id");
				String written_date = rs.getString("written_date").substring(0, 16);
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String str = format.format(date).toString();
				if (str.equals(written_date.substring(0, 10))) {
					written_date = written_date.substring(10);
				} else {
					written_date = written_date.substring(5);
				}
				String content = rs.getString("content");
				int views = rs.getInt("views");
				int boardnum = rs.getInt("boardnum");
				list.add(new CommunityDto(num, title, writer_id, written_date, content, views, boardnum));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	
	public BoardList one_board(int n) {
		BoardList boardList = new BoardList();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((board));
			pstmt.setInt(1, n);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt("BOARDNUM");
				String boardname = rs.getString("BOARDNAME");
				boardList = new BoardList(num, boardname);
			}
		} catch (Exception e) {
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return boardList;
	}
	public int list_heart(int n) {
		ArrayList<Heart> heartList = new ArrayList<Heart>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((list_heart));
			pstmt.setInt(1, n);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String username = rs.getNString("username");
				int content_num = rs.getInt("content_num");
				heartList.add(new Heart(username, content_num));
			}
		} catch (Exception e) {
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return heartList.size();
	}
	public CommunityDto detail(int no){
		CommunityDto dto = new CommunityDto();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((detail));
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String title = rs.getNString("title");
				String writer_id = rs.getString("writer_id");
				String written_date = rs.getString("written_date").substring(0, 16);
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String str = format.format(date).toString();
				if (str.equals(written_date.substring(0, 10))) {
					written_date = written_date.substring(10);
				} else {
					written_date = written_date.substring(5);
				}
				String content = rs.getString("content");
				int views = rs.getInt("views");
				int boardnum = rs.getInt("boardnum");
				dto = new CommunityDto(num, title, writer_id, written_date, content, views, boardnum);
			}System.out.println("디테일");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return dto;
	}
	public ArrayList<Heart> detail_heart(int n) {
		ArrayList<Heart> heartList = new ArrayList<Heart>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((list_heart));
			pstmt.setInt(1, n);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String username = rs.getNString("username");
				int content_num = rs.getInt("content_num");
				heartList.add(new Heart(username, content_num));
			}
			System.out.println("디테일 좋아요");
		} catch (Exception e) {
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return heartList;
	}
	public ArrayList<Comment> detail_comments(int n) {
		ArrayList<Comment> commentList = new ArrayList<Comment>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((list_heart));
			pstmt.setInt(1, n);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String writeer_id = rs.getNString("writeer_id");
				String written_date = rs.getString("written_date").substring(0, 16);
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String str = format.format(date).toString();
				if (str.equals(written_date.substring(0, 10))) {
					written_date = written_date.substring(10);
				} else {
					written_date = written_date.substring(5);
				}
				String content = rs.getNString("content");
				int content_num = rs.getInt("content_num");
				commentList.add(new Comment(writeer_id, written_date, content, content_num));
			}
			System.out.println("디테일 댓글");
		} catch (Exception e) {
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return commentList;
	}
	public void view(int num) {
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement(views);
			pstmt.setInt(1, num);
			int success = pstmt.executeUpdate();
			if(success > 0) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
			}
		} catch (Exception e) {
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	/*
	 * public void input(int num) { try { conn = DriverManager.getConnection(url,
	 * user, pass); Class.forName("oracle.jdbc.driver.OracleDriver"); pstmt =
	 * conn.prepareStatement(views); pstmt.setInt(1, num); int success =
	 * pstmt.executeUpdate(); if(success > 0) { System.out.println("성공"); }else {
	 * System.out.println("실패"); } } catch (Exception e) { } finally { if (conn !=
	 * null) { try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
	 * }if (pstmt != null) { try { pstmt.close(); } catch (SQLException e) {
	 * e.printStackTrace(); } }if (rs != null) { try { rs.close(); } catch
	 * (SQLException e) { e.printStackTrace(); } } } }
	 */
	
}