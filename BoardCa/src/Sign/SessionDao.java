package Sign;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SessionDao {

	@Autowired
	private SqlSession sqlSession;
	
	
}
