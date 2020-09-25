package Mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Game.GameDao;
import Member.MemberDto;

@Controller
public class MypageController {
	
	@Autowired
	private ModelAndView mv;
	
	@Autowired
	private MypageDao dao;
	
	
	@RequestMapping("/myPage.do")
	public ModelAndView myPage(HttpSession session) {
		MemberDto dto = new MemberDto();
		dto.setMem_id(session.getAttribute("userId")+"");
		
		mv.addObject("memInfo", dao.memInfo(dto));
		mv.setViewName("/mypage/myPage.jsp");
		return mv;
	}
	@RequestMapping("/myPageEdit.do")
	public ModelAndView myPageEdit() {
		mv.setViewName("/mypage/myPageEdit.jsp");
		return mv;
	}
	@RequestMapping("/myWriteList.do")
	public ModelAndView myWriteList() {
		mv.setViewName("/mypage/writeList.jsp");
		return mv;
	}
	
	@RequestMapping("/myFAQ.do")
	public ModelAndView myFAQ() {
		mv.setViewName("/mypage/myFAQ.jsp");
		return mv;
	}
	
	@RequestMapping("/myFavorite.do")
	public ModelAndView myFavoriteList() {
		mv.setViewName("/mypage/myfavorite.jsp");
		return mv;
	}
	
	@RequestMapping("/mySaved.do")
	public ModelAndView mySaved() {
		mv.setViewName("/mypage/mySaved.jsp");
		return mv;
	}
	
}
