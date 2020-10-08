package App;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.stereotype.Repository;

@Repository
public class AppDao {
	// 싱글톤 패턴으로 사용 하기위 한 코드들
	private static AppDao instance = new AppDao();

	public static AppDao getInstance() {

		System.out.println("getInstance");
		return instance;

	}

	public AppDao() {

	}

	private String jdbcUrl = "jdbc:mysql://board-1.cqff4lw7mwyx.ap-northeast-2.rds.amazonaws.com:3306/boardCa?serverTimezone=Asia/Seoul"; // MySQL
																																		// 계정
																																		// "jdbc:mysql://localhost:3306/DB이름"
	private String dbId = "admin"; // MySQL 계정 "로컬일 경우 root"
	private String dbPw = "comstudy03"; // 비밀번호 "mysql 설치 시 설정한 비밀번호"
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private PreparedStatement pstmt2 = null;
	private ResultSet rs = null;
	private String sql = "";
	private String sql2 = "";
	String returns = "";
	String returns2 = "";

	// 데이터베이스와 통신하기 위한 코드가 들어있는 메서드
	public String joindb(String MEM_NICKNAME,String MEM_EMAIL,String MEM_ID,String MEM_AGE_GROUP,String MEM_GENDER) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
				sql = "select MEM_ID from MEMBER_T where MEM_ID=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, MEM_ID);	
				rs = pstmt.executeQuery();
				if (rs.next()) {
					if (rs.getString("MEM_ID").equals(MEM_ID)) { // 이미 아이디가 있는 경우
						returns = "이미 아이디가 있습니다.";
					} 
				} else { // 입력한 아이디가 없는 경우
					sql2 = "insert into MEMBER_T (MEM_ID, MEM_NICKNAME, MEM_PW, MEM_AGE_GROUP, MEM_GENDER, MEM_EMAIL, MEM_ROCAL, MEM_STATE, MEM_MNG_GWONHAN, MEM_LOGIN_GWONHAN, MEM_BOARD_GWONHAN) values(?,?,?,?,?,?,?,?,?,?,?)";
			
					pstmt2 = conn.prepareStatement(sql2);
					pstmt2.setString(1, MEM_ID);
					pstmt2.setString(2, MEM_NICKNAME);
					pstmt2.setString(3, "");
					pstmt2.setString(4, MEM_AGE_GROUP);
					pstmt2.setString(5, MEM_GENDER);
					pstmt2.setString(6, MEM_EMAIL);
					pstmt2.setString(7, "");
					pstmt2.setString(8, "");
					pstmt2.setInt(9, 0);
					pstmt2.setInt(10, 1);
					pstmt2.setInt(11, 1);
					pstmt2.executeUpdate();

					returns = "회원 가입 완료!";
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {if (pstmt != null)try {pstmt.close();} catch (SQLException ex) {}
				if (conn != null)try {conn.close();} catch (SQLException ex) {}
				if (pstmt2 != null)try {pstmt2.close();} catch (SQLException ex) {}
				if (rs != null)try {rs.close();} catch (SQLException ex) {}
			}
			return returns;
		}

	public String logindb(String id, String pwd) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			sql = "select id,pw from MEMBER_T where id=? and pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("id").equals(id)) {

					if (rs.getString("pw").equals(pwd)) {

						returns2 = "로그인 성공!";// 로그인 가능
					} else {
						returns2 = "로그인 실패!";
					}

				} else {
					returns2 = "로그인 실패!"; // 로그인 실패
				}
			} else {
				returns2 = "로그인 실패!"; // 아이디 또는 비밀번호 존재 X
			}

		} catch (Exception e) {

		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return returns2;
	}
}
