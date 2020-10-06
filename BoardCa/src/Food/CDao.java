package Food;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Member.MemberDto;

@Repository
public class CDao {

	@Autowired
	private SqlSession mysqlSession;
	
	// 전체 리스트
	public List<CDto> getList(){
	    System.out.println("----> cXml.cListAll()");
	    List<CDto> list = mysqlSession.selectList("cXml.cListAll");
	    return list;
	}
	
	// 검색결과 리스트
	public List<CDto> getSearchList(String search){
	    System.out.println("----> cXml.cSearchList()");
	    List<CDto> list = mysqlSession.selectList("cXml.cSearchList",search);
	    return list;
	}
	
	// 레시피 상세정보
	public CDto detail(int no){
	    System.out.println("----> cXml.cDetail()");
	    CDto dto = mysqlSession.selectOne("cXml.cDetail", no);
	    return dto;
	}
	
	// 레시피 쓰기
	public int uploadFile(CDto dto) {
		System.out.println(dto);
		int cnt = mysqlSession.insert("cXml.cInsert", dto);
        return cnt;
	}
	
	// 레시피 삭제
	public int deleteRecipe(int rec_idx) {
		System.out.println(rec_idx);
		int cnt = mysqlSession.delete("cXml.deleteRecipe", rec_idx);
		return cnt;
	}
	
	// 로그인 유저 정보
	public MemberDto memberInfo(String userId) {
		System.out.println(userId);
		MemberDto mDto = mysqlSession.selectOne("cXml.memberInfo", userId);
		return mDto;
	}

	public int insertReview(ReviewDto dto) {
		System.out.println(dto);
		int cnt = mysqlSession.insert("cXml.reviewInsert", dto);
		return cnt;
	}
	
	// 전체 리스트
	public List<ReviewAndMember> reviewList(int no){
	    System.out.println("----> cXml.reviewList()");
	    return mysqlSession.selectList("cXml.reviewListAll", no);
	}

	// 한줄평 삭제
	public int deleteReview(int del) {
		System.out.println("delete : "+del);
		int cnt = mysqlSession.delete("cXml.deleteReview", del);
		return cnt;
	}
	
	// 즐겨찾기목록
	public List<StarDto> starList(StarDto dto){
		System.out.println("starList>> ");
		List<StarDto> list = mysqlSession.selectList("cXml.starList", dto);
		return list;
	}
	
	// 즐겨찾기추가
	public int starInsert(StarDto dto){
		System.out.println("starInsert>> ");
		int cnt = mysqlSession.insert("cXml.starInsert", dto);
		return cnt;
	}
	
	// 즐겨찾기삭제
	public int starDelete(StarDto dto){
		System.out.println("starDelete>> ");
		int cnt = mysqlSession.delete("cXml.starDelete", dto);
		return cnt;
	}
	
}
