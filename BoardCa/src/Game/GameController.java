package Game;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Food.ReviewAndMember;
import Food.ReviewDto;
import Member.MemberDto;

@Controller
public class GameController {
	@Autowired
	private ModelAndView mv;
	@Autowired
	private GameDao dao;

	// 게임 메인 페이지
	@RequestMapping("/gameMain.do")
	public ModelAndView gameMain(HttpServletRequest req, HttpSession session) {
		int page = 1;
		if(req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
		}
		

		// 관리자 확인을 위한 멤버정보 확인
		if (session.getAttribute("userId") != null) {
			String userId = (String) session.getAttribute("userId");
			MemberDto mDto = dao.memInfo(userId);
			System.out.println(mDto);
			mv.addObject("infocheck", mDto);
		}
		List<GameDto> list = dao.getList();
		mv.addObject("gameList", list);
		mv.setViewName("/game/gameMain.jsp?page=" + page);
		return mv;
	}

	// 상세페이지
	@RequestMapping("/gameDetail.do")
	public ModelAndView gameDetail(HttpServletRequest req, HttpSession session) {

		int GameNo = Integer.parseInt(req.getParameter("no"));
		GameDto dto = dao.detail(GameNo);
		mv.addObject("dto", dto);

		// 댓글 리스트
		List<ReviewAndMember> reviewList = dao.revList(GameNo);
		mv.addObject("reviewList", reviewList);

		// 관리자 확인을 위한 멤버정보 확인
		if (session.getAttribute("userId") != null) {
			String userId = (String) session.getAttribute("userId");
			MemberDto mDto = dao.memInfo(userId);
			System.out.println(mDto);
			mv.addObject("detailCheck", mDto);
		}

		List<GameDto> list = dao.getList();
		Collections.shuffle(list);
		mv.addObject("gameList", list);
		mv.setViewName("/game/gameDetail.jsp");
		return mv;
	}

	// 게임 검색
	@RequestMapping("/gameSearch.do")
	public ModelAndView gameSearch(HttpServletRequest req, HttpSession session) {
		int page = 1;
		if (req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
			if (page <= 0)
				page = 1;
		}
		String keyword = req.getParameter("inputSearch");

		// 관리자 확인을 위한 멤버정보 확인
		if (session.getAttribute("userId") != null) {
			String userId = (String) session.getAttribute("userId");
			MemberDto mDto = dao.memInfo(userId);
			System.out.println(mDto);
			mv.addObject("detailCheck", mDto);
		}
		mv.addObject("page", page);
		mv.addObject("gameList", dao.getSearchList(keyword));
		mv.addObject("inputSearch", keyword);
		mv.setViewName("/game/gameMain.jsp?page="+ page);
		return mv;
	}

	// 한줄평 등록
	@RequestMapping("/insertRev.do")
	public ModelAndView review(HttpServletRequest req, HttpSession session) {

		int no = Integer.parseInt(req.getParameter("no"));
		String review = req.getParameter("review_text");
		ReviewDto dto = new ReviewDto(0, "G", review, "", 0, no,Integer.parseInt(session.getAttribute("userIdx") + ""));
		System.out.println(dto);
		dao.revInsert(dto);
		mv.setViewName("redirect:/gameDetail.do?no=" + no);
		return mv;
	}

	// 한줄평 삭제
	@RequestMapping("/delReview.do")
	public ModelAndView deleteReview(HttpServletRequest req, HttpSession session) {

		int no = Integer.parseInt(req.getParameter("no"));
		int del = Integer.parseInt(req.getParameter("del"));

		dao.revDelete(del);
		mv.setViewName("redirect:/gameDetail.do?no=" + no);
		return mv;
	}
	
	
}
