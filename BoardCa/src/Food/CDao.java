package Food;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CDao {

	@Autowired
	private SqlSession sqlSession;
	 
	public List<CDto> getList(){
	    System.out.println("----> cXml.cListAll()");
	    List<CDto> list = sqlSession.selectList("cXml.cListAll");
	    for (CDto dto : list) {
	    	System.out.println(dto);
	    }
	    return list;
	  }
	
	public List<CDto> getSearchList(String search){
	    System.out.println("----> cXml.cSearchList()");
	    List<CDto> list = sqlSession.selectList("cXml.cSearchList",search);
	    for (CDto dto : list) {
	    	System.out.println(dto);
	    }
	    return list;
	  }
	
	public int uploadFile(CDto dto) {
		System.out.println(dto);
		int cnt = sqlSession.insert("cXml.cInsertTest", dto);
        return cnt;
  }
}
