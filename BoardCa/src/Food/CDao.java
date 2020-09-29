package Food;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Member.MemberDto;

@Repository
public class CDao {

	@Autowired
	private SqlSession mysqlSession;
	 
	public List<CDto> getList(){
	    System.out.println("----> cXml.cListAll()");
	    List<CDto> list = mysqlSession.selectList("cXml.cListAll");
	    return list;
	}
	
	public List<CDto> getSearchList(String search){
	    System.out.println("----> cXml.cSearchList()");
	    List<CDto> list = mysqlSession.selectList("cXml.cSearchList",search);
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
	
	public int deleteRecipe(int rec_idx) {
		System.out.println(rec_idx);
		int cnt = mysqlSession.delete("cXml.deleteRecipe", rec_idx);
		return cnt;
	}
	
	public MemberDto memberInfo(String userId) {
		System.out.println(userId);
		MemberDto mDto = mysqlSession.selectOne("cXml.memberInfo", userId);
		return mDto;
	}
	
}
