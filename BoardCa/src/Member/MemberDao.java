package Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Autowired
	private SqlSession sqlSession;
	
// 입력한 아이디가 있는 아이디인지 아이디 체크 
	public int idCheck(String userId) {		
		System.out.println("DaoIDCheck "+userId);
		int dto = sqlSession.selectOne("signXml.idCheck", userId); 
		return dto;
	}	

// 로그인시 입력한 아이디와 비밀번호가 맞는지 체크 
	public String signIn(String userId) {		
		System.out.println("DaoSignIn "+userId);
		return sqlSession.selectOne("signXml.signCheck",userId);
	}
	
// 세션 입력 
	public void sessionInput() {
		sqlSession.insert("signXml.sessionInput");
	}
	

	
}
