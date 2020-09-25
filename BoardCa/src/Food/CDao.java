package Food;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CDao {

	@Autowired
	private SqlSession mysqlSession;
	 
	public List<CDto> getList(){
	    System.out.println("----> cXml.cListAll()");
	    List<CDto> list = mysqlSession.selectList("cXml.cListAll");
	    for (CDto dto : list) {
	    	System.out.println(dto);
	    }
	    return list;
	  }
	
	public List<CDto> getSearchList(String search){
	    System.out.println("----> cXml.cSearchList()");
	    List<CDto> list = mysqlSession.selectList("cXml.cSearchList",search);
	    for (CDto dto : list) {
	    	System.out.println(dto);
	    }
	    return list;
	  }
	
	public CDto detail(int no){
	    System.out.println("----> cXml.cDetail()");
	    CDto dto = mysqlSession.selectOne("cXml.cDetail", no);
	    return dto;
	  }
	
	public int uploadFile(CDto dto) {
		System.out.println(dto);
		int cnt = mysqlSession.insert("cXml.cInsert", dto);
        return cnt;
  }
}
