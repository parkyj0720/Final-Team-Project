package Game;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Food.ReviewAndMember;
import Food.ReviewDto;

import Member.MemberDto;
import Mypage.StarDto;

@Repository
public class GameDao {
	@Autowired
	private SqlSession mysqlSession;

	// 전체 리스트
	public List<GameDto> getList() {
		List<GameDto> list = mysqlSession.selectList("gameXml.gameListAll");
		return list;
	}

	// 게임 상세페이지
	public GameDto detail(int no) {
		GameDto dto = mysqlSession.selectOne("gameXml.gameDetail", no);
		return dto;
	}

	// 게임 검색리스트
	public List<GameDto> getSearchList(String keyword) {
		List<GameDto> list = mysqlSession.selectList("gameXml.gameSearchList", keyword);
		for (GameDto dto : list) {
			System.out.println(dto);
		}
		return list;
	}

	// 로그인 유저 정보
	public MemberDto memInfo(String userId) {
		System.out.println(userId);
		MemberDto mdto = mysqlSession.selectOne("gameXml.membInfo", userId);
		return mdto;
	}
	// 한줄평 추가
	public int revInsert(ReviewDto dto) {
		System.out.println(dto);
		int cnt = mysqlSession.insert("gameXml.revInsert", dto);
		return cnt;
	}
	//한줄평 리스트
	public List<ReviewAndMember> revList(int no) {
		System.out.println(no);
		return mysqlSession.selectList("gameXml.revListAll", no);
	}
	// 한줄평 삭제
	public int revDelete(int del) {
		System.out.println("delete : "+del);
		int cnt = mysqlSession.delete("gameXml.delReview", del);
		return cnt;
	}
	
	// 즐겨찾기 상세페이지
	public StarDto starDetail(StarDto dto){
		System.out.println("starDetail>> ");
		StarDto newDto = mysqlSession.selectOne("gameXml.starDetail", dto);
		return newDto;
	}
	
	// 즐겨찾기한 유저 수
		public List<StarDto> starSize(StarDto dto){
			System.out.println("starList>> ");
			List<StarDto> list = mysqlSession.selectList("gameXml.starSize", dto);
			return list;
		}
	
	// 즐겨찾기추가
	public int starInsert(StarDto dto){
		System.out.println("starInsert>> ");
		int cnt = mysqlSession.insert("gameXml.starInsert", dto);
		return cnt;
	}
	
	// 즐겨찾기삭제
	public int starDelete(StarDto dto){
		System.out.println("starDelete>> ");
		int cnt = mysqlSession.delete("gameXml.starDelete", dto);
		return cnt;
	}
}
