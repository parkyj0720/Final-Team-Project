package Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Autowired
	private SqlSession sqlSession;
	
	public String signIn(String userId) {
		
		System.out.println(userId);
		return sqlSession.selectOne("signXml.signCheck",userId);
	}
	public void sessionInput() {
		sqlSession.insert("signXml.sessionInput");
	}
}
