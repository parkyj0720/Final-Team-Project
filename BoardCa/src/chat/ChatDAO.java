package chat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ChatDAO {
	
	DataSource dataSource;
	
	public ChatDAO() {
		try {
			InitialContext initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			dataSource = (DataSource) envContext.lookup("jdbc/BoardCa");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 특정 아이디에 따라서 채팅 내용을 가지고 오는 함수 
	public ArrayList<ChatDTO> getChatListByID(String fromID, String toID, String chatID) {
		ArrayList<ChatDTO> chatList = null; // 채팅 내용을 리스트에 담는다. 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM CHAT WHERE ((fromID = ? AND toID = ?) OR (fromID = ? AND toID = ?)) AND chatID > ? ORDER BY chatTime"; // 자신이 채팅을 보낸 사람인지 받은사람인지 상관없이 채팅 내용을 가지고 오는 쿼리문
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fromID); // 채팅 보내는 사람 아이디 
			pstmt.setString(2, toID); // 채팅 받는 사람 아이디 
			pstmt.setString(3, toID); 
			pstmt.setString(4, fromID);
			pstmt.setInt(5, Integer.parseInt(chatID)); // 채팅 아이디 숫자 형태로 변환 
			rs = pstmt.executeQuery();
			chatList = new ArrayList<ChatDTO>();
			while(rs.next()) {
				ChatDTO chat = new ChatDTO();
				chat.setChatID(rs.getInt("chatID"));
				chat.setFromID(rs.getString("fromID").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				chat.setToID(rs.getString("toID").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				chatTime += 9;
				String hourStr = "";
				if(chatTime < 10) {
					hourStr = "0" + chatTime;
				}else {
					hourStr = chatTime+"";
				}
				
				 //int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				 String timeType = " 오전 ";
				 if(Integer.parseInt(hourStr) >= 12) {
				 timeType = " 오후 "; 
				 chatTime -= 12; 
				 }
				 String[] oldChatTime = rs.getString("chatTime").split(" ");
				 String newTime = oldChatTime[0] + timeType + chatTime + oldChatTime[1].substring(2,oldChatTime[1].length()-2);
				 
				chat.setChatTime(newTime);
				chatList.add(chat);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList; // 채팅 리스트 반환
	}
	
	public ArrayList<ChatDTO> getChatListByRecent(String fromID, String toID, int number) {
		ArrayList<ChatDTO> chatList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// 채팅 내용 중 최근 채팅 내용을 가지고 오는 쿼리문 
		String SQL = "SELECT * FROM CHAT WHERE ((fromID = ? AND toID = ?) OR (fromID = ? AND toID = ?)) AND chatID > (SELECT MAX(chatID) - ? FROM CHAT WHERE (fromID = ? AND toID = ?) OR (fromID = ? AND toID = ?)) ORDER BY chatTime";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fromID);
			pstmt.setString(2, toID);
			pstmt.setString(3, toID);
			pstmt.setString(4, fromID);
			pstmt.setInt(5, number);
			pstmt.setString(6, fromID);
			pstmt.setString(7, toID);
			pstmt.setString(8, toID);
			pstmt.setString(9, fromID);
			rs = pstmt.executeQuery();
			chatList = new ArrayList<ChatDTO>();
			while(rs.next()) {
				ChatDTO chat = new ChatDTO();
				chat.setChatID(rs.getInt("chatID"));
				chat.setFromID(rs.getString("fromID").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				chat.setToID(rs.getString("toID").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				chatTime += 9;
				String hourStr = "";
				if(chatTime < 10) {
					hourStr = "0" + chatTime;
				}else {
					hourStr = chatTime+"";
				}
				
				 //int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				 String timeType = " 오전 ";
				 if(Integer.parseInt(hourStr) >= 12) {
				 timeType = " 오후 "; 
				 chatTime -= 12; 
				 }
				 String[] oldChatTime = rs.getString("chatTime").split(" ");
				 String newTime = oldChatTime[0] + timeType + chatTime + oldChatTime[1].substring(2,oldChatTime[1].length()-2);
				 
				chat.setChatTime(newTime);
				chatList.add(chat);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList; // 리스트 반환
	}
	
	public ArrayList<ChatDTO> getBox(String userID) {
		ArrayList<ChatDTO> chatList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM CHAT WHERE chatID IN (SELECT MAX(chatID) FROM CHAT WHERE toID = ? OR fromID = ? GROUP BY fromID, toID)";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userID);
			rs = pstmt.executeQuery();
			chatList = new ArrayList<ChatDTO>();
			while(rs.next()) {
				ChatDTO chat = new ChatDTO();
				chat.setChatID(rs.getInt("chatID"));
				chat.setFromID(rs.getString("fromID").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				chat.setToID(rs.getString("toID").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				chatTime += 9;
				String hourStr = "";
				if(chatTime < 10) {
					hourStr = "0" + chatTime;
				}else {
					hourStr = chatTime+"";
				}
				
				 //int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				 String timeType = " 오전 ";
				 if(Integer.parseInt(hourStr) >= 12) {
				 timeType = " 오후 "; 
				 chatTime -= 12; 
				 }
				
				 String[] oldChatTime = rs.getString("chatTime").split(" ");
				 String newTime = oldChatTime[0] + timeType + chatTime + oldChatTime[1].substring(2,oldChatTime[1].length()-2);
				 
				chat.setChatTime(newTime);
				chatList.add(chat);
			}
			for(int i = 0; i< chatList.size(); i++) {
				ChatDTO x = chatList.get(i);
				for(int j = 0; j < chatList.size(); j++) {
					ChatDTO y = chatList.get(j);
					if(x.getFromID().equals(y.getToID()) && x.getToID().equals(y.getFromID())) {
						if(x.getChatID() < y.getChatID()) {
							chatList.remove(x);
							i--;
							break;
						} else {
							chatList.remove(y);
							j--;
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList; // 리스트 반환
	}
	
	public int submit(String fromID, String toID, String chatContent) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT INTO CHAT VALUES (NULL, ?, ?, ?, NOW(), 0)";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fromID);
			pstmt.setString(2, toID);
			pstmt.setString(3, chatContent);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터베이스 오류
	}
	// 채팅을 읽었는지 체크하는 함수 
	public int readCheck(String fromID, String toID) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "UPDATE CHAT SET chatRead = 1 WHERE (fromID = ? AND toID = ?)";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, toID);
			pstmt.setString(2, fromID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터베이스 오류 
	}
	
	public int getAllUnreadCheck(String userID) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT COUNT(chatID) FROM CHAT WHERE toID = ? AND chatRead = 0";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt("COUNT(chatID)");
			}
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터베이스 오류 
	}
	// 채팅 읽음 여부 확인 함수 
	public int getUnreadCheck(String fromID, String toID) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT COUNT(chatID) FROM CHAT WHERE fromID = ? AND toID = ? AND chatRead = 0";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fromID);
			pstmt.setString(2, toID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt("COUNT(chatID)");
			}
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터베이스 오류 
	}
}
