package Mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import CommunityModel.BoardList;
import CommunityModel.CommunityDto;
import CommunityModel.Heart;
import Member.MemberDto;

@Repository
public class MypageDao {

	@Autowired
	private SqlSession mysqlSession;

	public MemberDto memInfo(MemberDto dto) {
		System.out.println("dao.memInfo");
		MemberDto newDto = mysqlSession.selectOne("mypageXml.MemberInfo", dto);
		return newDto;
	}
	public int memEdit(MemberDto dto) {
		System.out.println("dao.memEdit");
		int suc = mysqlSession.update("mypageXml.InfoEdit",dto);
		return suc;
	}
	public MemberDto age_gender(MemberDto mDto) {
		MemberDto dto = mysqlSession.selectOne("mypageXml.age_gender", mDto);
		return dto;
	}
	public List<CommunityDto> writeList(CommunityDto cdto) {
		List<CommunityDto> writeList = mysqlSession.selectList("mypageXml.writeList",cdto);
		return writeList;
		
	}
	public List<BoardList> Category() {
		System.out.println("dao>>");
		List<BoardList> list = mysqlSession.selectList("mypageXml.boardlist");
        return list;
	}
	public void write(CommunityDto dto) {
		System.out.println(dto);
		mysqlSession.insert("mypageXml.FaQinsert", dto);
		System.out.println("입력끝");
	}
	public List<Heart> heart(int mem_idx) {
		List<Heart>list = mysqlSession.selectList("mypageXml.heart",mem_idx);
		return list;
	}
	
	public List<StarDto> star(int mem_idx) {
		List<StarDto>list = mysqlSession.selectList("mypageXml.star",mem_idx);
		return list;
	}

	
}
