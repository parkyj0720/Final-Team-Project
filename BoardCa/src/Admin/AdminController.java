package Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/adminPage.do")
	public ModelAndView myPage() {
		mv.setViewName("/admin/adminPage.jsp");
		return mv;
	}
	@RequestMapping("/adminEdit.do")
	public ModelAndView myPageEdit() {
		mv.setViewName("/admin/adminEdit.jsp");
		return mv;
	}
	@RequestMapping("/adminList.do")
	public ModelAndView myWriteList() {
		mv.setViewName("/admin/adminList.jsp");
		return mv;
	}

	@RequestMapping("/adminFAQ.do")
	public ModelAndView myFAQ() {
		mv.setViewName("/admin/adminFAQ.jsp");
		return mv;
	}
	  
	 /* @RequestMapping("/myFavorite.do") public ModelAndView myFavoriteList() {
	 * mv.setViewName("/mypage/myfavorite.jsp"); return mv; }
	 */
	
}
