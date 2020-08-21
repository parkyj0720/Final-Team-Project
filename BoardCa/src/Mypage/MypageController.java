package Mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {
	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/myPage.do")
	public ModelAndView myPage() {
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
	@RequestMapping("/myCoupon.do")
	public ModelAndView myCoupon() {
		mv.setViewName("/mypage/coupon.jsp");
		return mv;
	}
}
