package CommunityModel;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

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
	public int list_heart(int num) {
		List<Heart> heart = mysqlSession.selectList("CoXml.list_heart", num);
		System.out.println(heart);
		return heart.size();
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
		mysqlSession.delete("CoXml.delete_content_heart", num);
		mysqlSession.delete("CoXml.delete_content_comments", num);
		mysqlSession.delete("CoXml.delete_content", num);
	}
	public void insert_comment(Comment dto) {
		mysqlSession.insert("CoXml.insert_comment", dto);
	}
	public void modify(CommunityDto dto) {
		mysqlSession.update("CoXml.modify", dto);
		
	}
}
