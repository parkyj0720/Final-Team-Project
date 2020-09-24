package CommunityModel;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class CoDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardList> Get_boardlist() {
		List<BoardList> list = sqlSession.selectList("CoXml.Get_boardlist");
		for(int i = 0; i<list.size(); i++) {
			System.out.println("Get_boardlist="+list);
		}
        return list;
	}
	public CommunityDto main(int num) {
		CommunityDto list = sqlSession.selectOne("CoXml.main", num);
		System.out.println(list);
		return list;
	}
	
	public int insert(CommunityDto dto) {
		System.out.println(dto);
		int cnt = sqlSession.insert("CoXml.insert", dto);
        return cnt;
	}
}
