package Mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		mv.setViewName("/mypage/myPageEdit.jsp");
		return mv;
	}
	
	@RequestMapping(value="/Edit.do", method = RequestMethod.POST, produces="application/json")
	@ResponseBody
	public String modify(HttpServletRequest req, HttpSession session) {
		MemberDto dto = new MemberDto();
		dto.setMem_nickname(req.getParameter("nickname"));
		dto.setMem_pw(req.getParameter("inputPw"));
		dto.setMem_email(req.getParameter("email1") + "@" + req.getParameter("email2"));
		dto.setMem_rocal(req.getParameter("rocal"));
		dto.setMem_state(req.getParameter("mem_state"));
		System.out.println(req.getParameter("nickname"));
		System.out.println(req.getParameter("inputPw"));
		System.out.println(req.getParameter("email1") + "@" + req.getParameter("email2"));
		System.out.println(req.getParameter("rocal"));
		System.out.println(req.getParameter("mem_state"));
		
		 dao.memEdit(dto);
		 
		 return "true";
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
