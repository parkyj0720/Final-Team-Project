package CommunityModel;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class CoDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardList> Get_boardlist() {
		System.out.println("dao>>");
		List<BoardList> list = sqlSession.selectList("CoXml.Get_boardlist");
		/*
		 * for(int i = 0; i<list.size(); i++) {
		 * System.out.println("Get_boardlist="+list.get(i)); }
		 */
        return list;
	}
	public List<CommunityDto> main(int num) {
		List<CommunityDto> list = sqlSession.selectList("CoXml.Main", num);
		/* System.out.println(list); */
		return list;
	}
	public List<CommunityDto> List(int num) {
		List<CommunityDto> list = sqlSession.selectList("CoXml.List", num);
		 System.out.println(list); 
		return list;
	}
	public BoardList one_board(int num) {
		BoardList board = sqlSession.selectOne("CoXml.one_board", num);
		System.out.println(board);
		return board;
	}
	public int list_heart(int num) {
		List<Heart> heart = sqlSession.selectList("CoXml.list_heart", num);
		System.out.println(heart);
		return heart.size();
	}
	public CommunityDto detail(int num) {
		CommunityDto dto = sqlSession.selectOne("CoXml.detail", num);
		System.out.println("디테일 => " + dto);
		return dto;
	}
	public List<Heart> detail_heart(int num) {
		List<Heart> heart = sqlSession.selectList("CoXml.detail_heart", num);
		System.out.println(heart);
		return heart;
	}
	public List<Comment> detail_comments(int num) {
		List<Comment> heart = sqlSession.selectList("CoXml.detail_comments", num);
		System.out.println(heart);
		return heart;
	}
	public void view(int num) {
		sqlSession.update("CoXml.view", num);
		System.out.println("뷰 증가!!!");
	}
	
	public void insert(CommunityDto dto) {
		System.out.println(dto);
		sqlSession.insert("CoXml.insert", dto);
		System.out.println("입력끝");
	}
}
