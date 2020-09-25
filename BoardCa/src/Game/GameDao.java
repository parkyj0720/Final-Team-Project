package Game;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Food.CDto;


@Repository
public class GameDao {
	@Autowired
	private SqlSession mysqlSession;
	
	public List<GameDto> getList(){
	    System.out.println("----> gameXml.gameListAll()");
	    List<GameDto> list = mysqlSession.selectList("gameXml.gameListAll");
	    for (GameDto dto : list) {
	    	System.out.println(dto);
	    }
	    return list;
	  }
	public GameDto detail(int no){
	    System.out.println("----> gameXml.gameDetail()");
	    GameDto dto = mysqlSession.selectOne("gameXml.gameDetail", no);
	    return dto;
	  }
}
