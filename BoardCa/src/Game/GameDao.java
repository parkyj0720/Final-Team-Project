package Game;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Food.ReviewAndMember;
import Food.ReviewDto;
import Member.MemberDto;

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
	public int Revinsert(ReviewDto dto) {
		System.out.println(dto);
		int cnt = mysqlSession.insert("gameXml.revInsert", dto);
		return cnt;
	}
	//한줄평 리스트
	public List<ReviewAndMember> RevList(int no) {
		System.out.println(no);
		return mysqlSession.selectList("gameXml.revListAll", no);
	}
	// 한줄평 삭제
	public int delReview(int del) {
		System.out.println("delete : "+del);
		int cnt = mysqlSession.delete("gameXml.delReview", del);
		return cnt;
	}
}
