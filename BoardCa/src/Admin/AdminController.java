package Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		return mv;
	}
	@RequestMapping("/adminEdit.do")
	public ModelAndView myPageEdit(HttpServletRequest request) {
				
		mv.setViewName("/admin/adminEdit.jsp");
		
		List<Object> list = MemberDao.ListAll();
		
		request.setAttribute("list", list);
		
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
