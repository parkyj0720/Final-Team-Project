package Mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		dto.setMem_id(session.getAttribute("userId") + "");

		mv.addObject("memInfo", dao.memInfo(dto));
		mv.setViewName("/mypage/myPage.jsp");
		return mv;
	}

	@RequestMapping("/myPageEdit.do")
	public ModelAndView myPageEdit(HttpServletRequest req, HttpSession session) {
		MemberDto dto = new MemberDto();

		String Nickname = req.getParameter("nickname");
		String newPw = req.getParameter("newPw");
		String Email = req.getParameter("email");
		String rocal = req.getParameter("rocal");
		String state = req.getParameter("state");

		if (Nickname == null) {
			Nickname = dto.getMem_nickname();
		} else if (newPw == null) {
			newPw = dto.getMem_pw();
		} else if (Email == null) {
			Email = dto.getMem_email();
		} else if (rocal.equals("start")) {
			rocal = dto.getMem_rocal();
		} else if (state.equals("시·군·구 선택")) {
			state = dto.getMem_state();
		}
		mv.addObject("memInfo", dao.memInfo(dto));
		mv.addObject("memEdit", dao.memEdit(dto));
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
