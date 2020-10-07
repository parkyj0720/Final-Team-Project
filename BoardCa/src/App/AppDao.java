package App;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AppDao {

	@Autowired
	private SqlSession mysqlSession;
	
	public void insert(AppDto dto) {
		System.out.println(dto);
		mysqlSession.insert("AppSQL.insert", dto);
		System.out.println("입력끝");
	}
}
