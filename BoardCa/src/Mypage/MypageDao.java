package Mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Member.MemberDto;

@Repository
public class MypageDao {

	@Autowired
	private SqlSession mysqlSession;
	
	
	public MemberDto memInfo(MemberDto dto) {
		System.out.println("dao.memInfo");
		 MemberDto newDto = mysqlSession.selectOne("mypageXml.MemberInfo",dto);
		 System.out.println(newDto);
		 return newDto;
	}
	
	public MemberDto memEdit(MemberDto dto) {
		System.out.println("dao.memEdit");
		 MemberDto newDto = mysqlSession.selectOne("mypageXml.InfoEdit",dto);
		 System.out.println(newDto);
		 return newDto;
	}
	
	
	
}
