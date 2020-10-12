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
import Mypage.StarDto;

@Controller
public class GameController {
	@Autowired
	private ModelAndView mv;
	@Autowired
	private GameDao GameDao;

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
			MemberDto mDto = GameDao.memInfo(userId);
			System.out.println(mDto);
			mv.addObject("infocheck", mDto);
		}
		List<GameDto> list = GameDao.getList();
		mv.addObject("gameList", list);
		mv.setViewName("/game/gameMain.jsp?page=" + page);
		return mv;
	}
	
	// 앱용 게임 메인 페이지
	
	@RequestMapping("/gameMainApp.do")
	public ModelAndView gameMainApp(HttpServletRequest req, HttpSession session) {
		int page = 1;
		if(req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
		}
		

		// 관리자 확인을 위한 멤버정보 확인
		if (session.getAttribute("userId") != null) {
			String userId = (String) session.getAttribute("userId");
			MemberDto mDto = GameDao.memInfo(userId);
			System.out.println(mDto);
			mv.addObject("infocheck", mDto);
		}
		List<GameDto> list = GameDao.getList();
		mv.addObject("gameList", list);
		mv.setViewName("/game/gameMainApp.jsp?page=" + page);
		return mv;
	}
	

	// 상세페이지
	@RequestMapping("/gameDetail.do")
	public ModelAndView gameDetail(HttpServletRequest req, HttpSession session) {

		int GameNo = Integer.parseInt(req.getParameter("no"));
		GameDto dto = GameDao.detail(GameNo);
		mv.addObject("dto", dto);

		
		int userIdx = 0;
		if(session.getAttribute("userIdx") != null) {
			userIdx = Integer.parseInt(session.getAttribute("userIdx")+"");
		}
		
		StarDto sDto = new StarDto(0, "G", userIdx, 0, GameNo);
		StarDto starDto = GameDao.starDetail(sDto);
		mv.addObject("starDto", starDto);
		
		List<StarDto> starList = GameDao.starSize(sDto);
		mv.addObject("starList", starList);
		
		// 댓글 리스트
		List<ReviewAndMember> reviewList = GameDao.revList(GameNo);
		mv.addObject("reviewList", reviewList);

		// 관리자 확인을 위한 멤버정보 확인
		if (session.getAttribute("userId") != null) {
			String userId = (String) session.getAttribute("userId");
			MemberDto mDto = GameDao.memInfo(userId);
			System.out.println(mDto);
			mv.addObject("detailCheck", mDto);
		}

		List<GameDto> list = GameDao.getList();
		Collections.shuffle(list);
		mv.addObject("gameList", list);
		mv.setViewName("/game/gameDetail.jsp");
		return mv;
	}
	
	// 상세페이지 앱용
		@RequestMapping("/gameDetailApp.do")
		public ModelAndView gameDetailApp(HttpServletRequest req, HttpSession session) {

			int GameNo = Integer.parseInt(req.getParameter("no"));
			GameDto dto = GameDao.detail(GameNo);
			mv.addObject("dto", dto);

			
			int userIdx = 0;
			if(session.getAttribute("userIdx") != null) {
				userIdx = Integer.parseInt(session.getAttribute("userIdx")+"");
			}
			
			StarDto sDto = new StarDto(0, "G", userIdx, 0, GameNo);
			StarDto starDto = GameDao.starDetail(sDto);
			mv.addObject("starDto", starDto);
			
			List<StarDto> starList = GameDao.starSize(sDto);
			mv.addObject("starList", starList);
			
			// 댓글 리스트
			List<ReviewAndMember> reviewList = GameDao.revList(GameNo);
			mv.addObject("reviewList", reviewList);

			// 관리자 확인을 위한 멤버정보 확인
			if (session.getAttribute("userId") != null) {
				String userId = (String) session.getAttribute("userId");
				MemberDto mDto = GameDao.memInfo(userId);
				System.out.println(mDto);
				mv.addObject("detailCheck", mDto);
			}

			List<GameDto> list = GameDao.getList();
			Collections.shuffle(list);
			mv.addObject("gameList", list);
			mv.setViewName("/game/gameDetailApp.jsp");
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
			MemberDto mDto = GameDao.memInfo(userId);
			System.out.println(mDto);
			mv.addObject("detailCheck", mDto);
		}
		mv.addObject("page", page);
		mv.addObject("gameList", GameDao.getSearchList(keyword));
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
		GameDao.revInsert(dto);
		mv.setViewName("redirect:/gameDetail.do?no=" + no);
		return mv;
	}

	// 한줄평 삭제
	@RequestMapping("/delReview.do")
	public ModelAndView deleteReview(HttpServletRequest req, HttpSession session) {

		int no = Integer.parseInt(req.getParameter("no"));
		int del = Integer.parseInt(req.getParameter("del"));

		GameDao.revDelete(del);
		mv.setViewName("redirect:/gameDetail.do?no=" + no);
		return mv;
	}
	
	// 즐겨찾기추가 ajax
	@RequestMapping("/starInsertG.do")
	public ModelAndView starInsertG(HttpServletRequest req, HttpSession session) {
		int no = Integer.parseInt(req.getParameter("no"));
		StarDto dto = new StarDto(0, "G", Integer.parseInt(session.getAttribute("userIdx")+""), 0, no);
		GameDao.starInsert(dto);
		
		return mv;
	}
	
	// 즐겨찾기삭제 ajax
	@RequestMapping("/starDeleteG.do")
	public ModelAndView starDeleteG(HttpServletRequest req, HttpSession session) {
		int no = Integer.parseInt(req.getParameter("no"));
		StarDto dto = new StarDto(0, "G", Integer.parseInt(session.getAttribute("userIdx")+""), 0, no);
		GameDao.starDelete(dto);
		
		return mv;
	}
}
