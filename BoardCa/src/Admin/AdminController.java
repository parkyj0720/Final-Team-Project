package Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Member.AgeRangeDto;
import Member.GenderDto;
import Member.MemberDao;

@Controller
public class AdminController {
	@Autowired
	private ModelAndView mv;
	
	@Autowired
	private MemberDao MemberDao;
	
	@RequestMapping("/adminPage.do")
	public ModelAndView myPage(HttpServletRequest request) {
		
		mv.setViewName("/admin/adminPage.jsp");
		
		List<Object> g = MemberDao.Gender();
		
		GenderDto gender = (GenderDto)g.get(0); 
		
		int man = gender.getMan();
		
		int woman = gender.getWoman();
		
		int secret = gender.getSecret();
		
		// DB를 활용해 남성과 여성의 수를 카운트 한다.
		
		request.setAttribute("man", man);
		request.setAttribute("woman", woman);
		request.setAttribute("secret", secret);
		
		// request에 카운트한 값들을 넣어준다. 
		
		List<Object> age = MemberDao.AgeRange();
		
		AgeRangeDto agerange = (AgeRangeDto)age.get(0);
		
		int twenty = agerange.getTwenty();
		int thirty = agerange.getThirty();
		int forty = agerange.getForty();
		int fifty = agerange.getFifty();
		int agesecret = agerange.getSecret();		
		
		// DB를 활용해 유저의 나잇대를 카운트한다.
		
		request.setAttribute("twenty", twenty);
		request.setAttribute("thirty", thirty);
		request.setAttribute("forty", forty);
		request.setAttribute("fifty", fifty);
		request.setAttribute("agesecret", agesecret);
		
		// request에 카운트한 값들을 넣어준다. 
		
		
		return mv;
	}
	@RequestMapping("/adminEdit.do")
	public ModelAndView myPageEdit(HttpServletRequest request) {
				
		mv.setViewName("/admin/adminEdit.jsp");
		
				
		List<Object> list = MemberDao.ListAll(); // 멤버 DB를 가져옴
		
		request.setAttribute("list", list); // request에 DB에서 가져온 리스트를 넣음
		
		return mv;
	}
	@RequestMapping("/adminList.do")
	public ModelAndView myWriteList(HttpServletRequest request) {
		mv.setViewName("/admin/adminList.jsp");
		return mv;
	}

	@RequestMapping("/adminFAQ.do")
	public ModelAndView myFAQ(HttpServletRequest request) {
		mv.setViewName("/admin/adminFAQ.jsp");
		return mv;
	}
	  
	 /* @RequestMapping("/myFavorite.do") public ModelAndView myFavoriteList() {
	 * mv.setViewName("/mypage/myfavorite.jsp"); return mv; }
	 */
	
}
