package CommunityModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Food.CDto;

public class CoDao {

	@Autowired
	private SqlSession mysqlSession;

	public List<BoardList> Get_boardlist() {
		System.out.println("dao>>");
		List<BoardList> list = mysqlSession.selectList("CoXml.Get_boardlist");
		/*
		 * for(int i = 0; i<list.size(); i++) {
		 * System.out.println("Get_boardlist="+list.get(i)); }
		 */
		return list;
	}

	public List<CommunityDto> main(int num) {
		List<CommunityDto> list = mysqlSession.selectList("CoXml.Main", num);
		/* System.out.println(list); */
		return list;
	}

	public List<CommunityDto> List(int num) {
		List<CommunityDto> list = mysqlSession.selectList("CoXml.List", num);
		System.out.println(list);
		return list;
	}

	public BoardList one_board(int num) {
		BoardList board = mysqlSession.selectOne("CoXml.one_board", num);
		System.out.println(board);
		return board;
	}

	public CommunityDto detail(int num) {
		CommunityDto dto = mysqlSession.selectOne("CoXml.detail", num);
		System.out.println("디테일 => " + dto);
		return dto;
	}

	public List<Heart> detail_heart(int num) {
		List<Heart> heart = mysqlSession.selectList("CoXml.detail_heart", num);
		System.out.println(heart);
		return heart;
	}

	public void detail_heart_delete(Heart heart) {
		mysqlSession.delete("CoXml.delete_heart", heart);
		System.out.println(heart);
	}

	public void detail_heart_insert(Heart heart) {
		mysqlSession.insert("CoXml.insert_heart", heart);
	}

	public List<Comment> detail_comments(int num) {
		List<Comment> comments = mysqlSession.selectList("CoXml.detail_comments", num);
		System.out.println(comments);
		return comments;
	}

	public void view(int num) {
		mysqlSession.update("CoXml.view", num);
		System.out.println("뷰 증가!!!");
	}

	public void insert(CommunityDto dto) {
		System.out.println(dto);
		mysqlSession.insert("CoXml.insert", dto);
		System.out.println("입력끝");
	}

	public void delete_content(int num) {
		mysqlSession.delete("CoXml.delete_content_comments", num);
		mysqlSession.delete("CoXml.delete_content", num);
	}
	

	public void insert_comment(Comment dto) {
		mysqlSession.insert("CoXml.insert_comment", dto);
	}
	
	public void delete_comment(int num) {
		mysqlSession.delete("CoXml.delete_content_heart", num);
	}

	public void modify(CommunityDto dto) {
		mysqlSession.update("CoXml.modify", dto);

	}

	////////////////////////////////

	public int getIdx(String userID) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT MEM_IDX FROM MEMBER_T WHERE MEM_ID = ?";
		try {

			String jdbcUrl = "jdbc:mysql://board-1.cqff4lw7mwyx.ap-northeast-2.rds.amazonaws.com:3306/boardCa?serverTimezone=Asia/Seoul";
			String dbId = "admin";
			String dbPw = "comstudy03";

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("MEM_IDX")!= null) {
					int idx = Integer.parseInt(rs.getString("MEM_IDX"));
					return idx; // 로그인 성공
				}
			} else {
				return -100; // 해당 사용자가 존재하지 않음
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터베이스 오류
	}
}
