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

public class CommunityDao_test {
	private CommunityDao instance;

	// 싱글톤 패턴
	public CommunityDao getInstance() {
		if (instance == null) {
			instance = new CommunityDao();
		}
		return instance;
	}

	String main1 = "select * from board1 ORDER BY num DESC";
	String main2 = "select * from board2 ORDER BY num DESC";
	String main3 = "select * from board3 ORDER BY num DESC";
	String main4 = "select * from board4 ORDER BY num DESC";

	String C_list1 = "select * from board1 ORDER BY num DESC";
	String C_list2 = "select * from board2 ORDER BY num DESC";
	String C_list3 = "select * from board3 ORDER BY num DESC";
	String C_list4 = "select * from board4 ORDER BY num DESC";

	String C_detail1 = "select * from board1 where num=?";
	String C_detail2 = "select * from board2 where num=?";
	String C_detail3 = "select * from board3 where num=?";
	String C_detail4 = "select * from board4 where num=?";

	String C_comment1 = "select * from comments1 ORDER BY num DESC";
	String C_comment2 = "select * from comments2 ORDER BY num DESC";
	String C_comment3 = "select * from comments3 ORDER BY num DESC";
	String C_comment4 = "select * from comments4 ORDER BY num DESC";

	ArrayList<ArrayList<CommunityDto>> totalList;
	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;
	int cnt;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "boardca";
	String pass = "12345";

	// main
	public ArrayList<CommunityDto> Main1() {
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main1));
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public ArrayList<CommunityDto> Main2() {
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main2));
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public ArrayList<CommunityDto> Main3() {
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main3));
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public ArrayList<CommunityDto> Main4() {
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((main4));
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	// list
	public ArrayList<CommunityDto> list1() {
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_list1));
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public ArrayList<CommunityDto> list2() {
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_list2));
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public ArrayList<CommunityDto> list3() {
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_list3));
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public ArrayList<CommunityDto> list4() {
		ArrayList<CommunityDto> list1 = new ArrayList<CommunityDto>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_list4));
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				list1.add(new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	// detail
	public CommunityDto detail1(int num1) {
		CommunityDto dto = new CommunityDto();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_detail1));
			pstmt.setInt(1, num1);
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				dto = new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num);
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
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public CommunityDto detail2(int num1) {
		CommunityDto dto = new CommunityDto();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_detail2));
			pstmt.setInt(1, num1);
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				dto = new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num);
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
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public CommunityDto detail3(int num1) {
		CommunityDto dto = new CommunityDto();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_detail3));
			pstmt.setInt(1, num1);
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				dto = new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num);
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
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	public CommunityDto detail4(int num1) {
		CommunityDto dto = new CommunityDto();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_detail4));
			pstmt.setInt(1, num1);
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
				int heart = rs.getInt("heart");
				int views = rs.getInt("views");
				int comment_num = rs.getInt("comment_num");
				dto = new CommunityDto(num, title, writer_id, written_date, content, heart, views, comment_num);
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
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
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

	// Comment
	public ArrayList<Comment> comment1(int num1) {
		ArrayList<Comment> commentL = new ArrayList<Comment>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_comment1));
			pstmt.setInt(1, num1);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String comment_id = rs.getNString("comment_id");
				String comment_content = rs.getString("comment_content");
				String comment_date = rs.getString("comment_date").substring(0, 16);
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String str = format.format(date).toString();
				if (str.equals(comment_date.substring(0, 10))) {
					comment_date = comment_date.substring(10);
				} else {
					comment_date = comment_date.substring(5);
				}
				commentL.add(new Comment(num, comment_id, comment_content, comment_date));
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
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return commentL;
	}

	public ArrayList<Comment> comment2(int num1) {
		ArrayList<Comment> commentL = new ArrayList<Comment>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_comment2));
			pstmt.setInt(1, num1);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String comment_id = rs.getNString("comment_id");
				String comment_content = rs.getString("comment_content");
				String comment_date = rs.getString("comment_date").substring(0, 16);
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String str = format.format(date).toString();
				if (str.equals(comment_date.substring(0, 10))) {
					comment_date = comment_date.substring(10);
				} else {
					comment_date = comment_date.substring(5);
				}
				commentL.add(new Comment(num, comment_id, comment_content, comment_date));
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
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return commentL;
	}

	public ArrayList<Comment> comment3(int num1) {
		ArrayList<Comment> commentL = new ArrayList<Comment>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_comment3));
			pstmt.setInt(1, num1);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String comment_id = rs.getNString("comment_id");
				String comment_content = rs.getString("comment_content");
				String comment_date = rs.getString("comment_date").substring(0, 16);
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String str = format.format(date).toString();
				if (str.equals(comment_date.substring(0, 10))) {
					comment_date = comment_date.substring(10);
				} else {
					comment_date = comment_date.substring(5);
				}
				commentL.add(new Comment(num, comment_id, comment_content, comment_date));
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
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return commentL;
	}

	public ArrayList<Comment> comment4(int num1) {
		ArrayList<Comment> commentL = new ArrayList<Comment>();
		try {
			conn = DriverManager.getConnection(url, user, pass);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstmt = conn.prepareStatement((C_comment4));
			pstmt.setInt(1, num1);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String comment_id = rs.getNString("comment_id");
				String comment_content = rs.getString("comment_content");
				String comment_date = rs.getString("comment_date").substring(0, 16);
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String str = format.format(date).toString();
				if (str.equals(comment_date.substring(0, 10))) {
					comment_date = comment_date.substring(10);
				} else {
					comment_date = comment_date.substring(5);
				}
				commentL.add(new Comment(num, comment_id, comment_content, comment_date));
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
			} else if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return commentL;
	}

}