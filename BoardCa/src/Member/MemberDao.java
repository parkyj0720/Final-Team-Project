package Member;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Sign.SessionDto;

@Repository
public class MemberDao {

	@Autowired
	private SqlSession mysqlSession;
	
// 입력한 아이디가 있는 아이디인지 아이디 체크 
	public int idCheck(String userId) {		
		System.out.println("DaoIDCheck "+userId);
		int dto = mysqlSession.selectOne("signXml.idCheck", userId); 
		return dto;
	}	
// 입력한 아이디가 있는 아이디인지 아이디 체크 
	public int nickNameCheck(String nickName) {		
		System.out.println("DaonickNameCheck "+nickName);
		int dto = mysqlSession.selectOne("signXml.nickNameCheck", nickName); 
		return dto;
	}	

// 로그인시 입력한 아이디와 비밀번호가 맞는지 체크 
	public String signIn(String userId) {		
		System.out.println("DaoSignIn "+userId);
		return mysqlSession.selectOne("signXml.signCheck",userId);
	}
// 입력한 아이디의 회원번호 가져오기
	public int searchIdx(String userId) {
		return mysqlSession.selectOne("signXml.searchIdx",userId);
	}
// 해당회원번호의 닉네임 가져오기
	public String searchNickname(int mem_idx) {
		return mysqlSession.selectOne("signXml.searchNickname",mem_idx);
	}
	
// 세션 입력 
	public void sessionInput(SessionDto sedto) {
		mysqlSession.insert("signXml.sessionInput", sedto);
	}
	
// 회원정보 insert
	public void memInsert(MemberDto dto) {
		System.out.println(dto);
		mysqlSession.insert("signXml.memInsert", dto);
	}
	
// 회원정보 전체 list
	public List<Object> ListAll() {		
		List<Object> list = mysqlSession.selectList("MemberSQL.Listall");		
		return list;
	}
	
// 회원들의 성별 정보 리스트
	
	public List<Object> Gender(){
		
		
		List<Object> list = mysqlSession.selectList("MemberSQL.Gender");
		
		/*
		GenderDto gender = (GenderDto) list.get(0);
		
		  int man = gender.getMan(); 
		  int woman = gender.getWoman();
		  int secret = gender.getSecret();
		  
		  System.out.println(man+", "+ woman+", "+ secret);
		 */
		return list;
		
	}
// 회원들의 지역 정보 리스트
	
	public List<Object> Area(){
		
		
		List<Object> list = mysqlSession.selectList("MemberSQL.Area");
		
		/*
		GenderDto gender = (GenderDto) list.get(0);
		
		  int man = gender.getMan(); 
		  int woman = gender.getWoman();
		  int secret = gender.getSecret();
		  
		  System.out.println(man+", "+ woman+", "+ secret);
		 */
		return list;
		
	}

// 회원들의 나잇대 정보 리스트
	
	public List<Object> AgeRange(){
				
		List<Object> list = mysqlSession.selectList("MemberSQL.AgeRange");
		
		/*
		AgeRangeDto agerange = (AgeRangeDto) list.get(0);
		
		  int twenty = agerange.getTwenty();
		  int thirty = agerange.getThirty(); 
		  int forty = agerange.getForty(); 
		  int fifty = agerange.getFifty(); 
		  int secret = agerange.getSecret();
		  
		  System.out.println(twenty+", "+ thirty+", "+ forty+", "+fifty + ", "+secret);
		 */
		
		return list;
		
	}
	
	public void GwonhanModify(GwonhanDto data) {
		
		
		int r = mysqlSession.update("MemberSQL.GwonhanModify", data);
		
		System.out.println(r);
		
		if(r==1) {
		
			System.out.println("DB 변경 성공");
		
		}

	}
	
	public int GwonhanCheck(String data) {
		
		int r = (int)mysqlSession.selectOne("signXml.GwonhanCheck", data);
		
		System.out.println("현재 로그인 권한" + r);
		
		return r;

	}
	
	public int adminCheck(String data) {
		
		int r = (int)mysqlSession.selectOne("signXml.adminCheck", data);
		
		System.out.println("현재 관리자 권한" + r);
		
		return r;
		
	}
	
	
}
