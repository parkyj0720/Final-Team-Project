package Game;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GameDao {
	@Autowired
	private SqlSession sqlSession;
	
	
}
